package com.greatwall.ideas.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.service.ConcernService;
import com.greatwall.ideas.service.EventService;
import com.greatwall.ideas.service.ProjectService;
import com.greatwall.ideas.service.TalentService;
import com.greatwall.platform.base.controller.BaseController;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.service.ServiceException;
import com.greatwall.platform.domain.PageParameter;
import com.greatwall.platform.system.dto.User;

@Controller
@RequestMapping("concern")
public class ConcernController extends BaseController {

	Logger logger = Logger.getLogger(ConcernController.class);
			
	@Autowired
	private ConcernService concernService;
	@Autowired
	private ProjectService projectService;
	@Autowired
	private TalentService talentService;
	
	@Autowired
	private EventService eventService;
	
	@RequestMapping("/showConcerns")
	public ModelAndView showConcerns(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/concern/showConcerns.jsp");
		return mav;
	}
	
	@RequestMapping("/getConcerns")
	public@ResponseBody Map<String,Object> getConcerns(Concern concern,PageParameter page,HttpSession httpSession){
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			User u = this.getSessionUser(httpSession);
			concern.setUserId(u.getUserId());
//			map.put("objs", concernService.getPage(concern, page));
			
			if("project".equals(concern.getTargetType())){
				map.put("objs", projectService.getConcernPage(concern, page));
			}else if("talent".equals(concern.getTargetType())){
				map.put("objs", talentService.getConcernPage(concern, page));
			}else{
				map.put("objs", eventService.getConcernPage(concern, page));
			}
			
			map.put("page", page);
		} catch (DaoException e) {
			logger.error("查询我的收藏错误",e);
		}
		return map;
	}

	@RequestMapping("/addConcern")
	public@ResponseBody String addConcern(Concern concern,HttpServletRequest request){
		try {
			String validate = validate(concern,request);
			if(!"".equals(validate)){
				return validate;
			}
			User u = super.getSessionUser(request.getSession());
			concern.setUserId(u.getUserId());
			if("signup".equals(concern.getConcernType())){
				return signUp(concern);
				
			}else if("concern".equals(concern.getConcernType())){
				
				return concern(concern);
				/*if("project".equals(concern.getTargetType())){
					return concernProject(concern);
				}else if("talent".equals(concern.getTargetType())){
					
				}else{
					return concernEvent(concern);
				}*/
				
			}
			
			return "类型错误";
		} catch (ServiceException e) {
			return e.getMessage();
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}
		
	}
	
	/*private String concernProject(Concern concern) throws ServiceException{
		if(!concernService.concern(concern)){
			if(concernService.unConcern(concern)){
				return "cancel";
			}else{
				return "取消收藏失败";
			}
		}else{
			return "success";
		}
	}*/
	
	private String concern(Concern concern) throws ServiceException{
		if(!concernService.concern(concern)){
			if(concernService.unConcern(concern)){
				return "cancel";
			}else{
				return "取消收藏失败";
			}
		}else{
			return "success";
		}
	}
	
	private String validate(Concern concern,HttpServletRequest request){
		if(concern==null){
			return "类型不能为空";
		}
		if(concern.getConcernType()==null||concern.getTargetId()==null
				||concern.getTargetType()==null){
			return "类型不能为空";
		}
		if("signup".equals(concern.getConcernType())){
			if(StringUtils.isBlank(concern.getPhone())){
				return "电话不能为空";
			}
			if(StringUtils.isBlank(concern.getUserName())){
				return "姓名不能为空";
			}
		}
		if(!checkLogin(request)){
			return "unlogin";
		}
		return "";
	}
	
	private String signUp(Concern concern) throws ServiceException{
		if(concernService.signUp(concern)){
			return "success";
		}else{
			return "保存失败";
		}
	}
}
