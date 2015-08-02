package com.greatwall.ideas.controller;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greatwall.ideas.dto.Event;
import com.greatwall.ideas.service.EventService;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;



/**
 * 首页
 * @author fudk_k@sina.com
 * @update 2014-7-6
 */
@Controller
@RequestMapping("index")
public class IndexEventController {
	
	Logger logger = Logger.getLogger(IndexEventController.class);
	
	@Autowired
	private EventService eventService;

	@RequestMapping("/showIndexEvents/{type}")
	public ModelAndView showIndexEvents(@PathVariable String type,ModelMap model){
		String gotopage = "";
		if("activity".equals(type)){
			gotopage = "index/event/showActivitys.jsp";
		}else if("train".equals(type)){
			gotopage = "index/event/showTrains.jsp";
		}else if("incubator".equals(type)){
			gotopage = "index/event/showIncubators.jsp";
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName(gotopage);
		return mav;
	}
	@RequestMapping("/getIndexEvents")
	public@ResponseBody Map<String,Object> getIndexEvents(Event event,PageParameter page,ModelMap model){
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("events", eventService.getPage(event, page));
			map.put("page", page);
			
		} catch (DaoException e) {
			logger.error("查询活动分页错误",e);
		}
		return map;
	}
	
	@RequestMapping("/getIndexEvent/{type}/{eventId}")
	public ModelAndView getIndexEvent(@PathVariable String type,
			@PathVariable Integer eventId,ModelMap model){
		
		String gotopage = "";
		if("activity".equals(type)){
			gotopage = "index/event/activityDetails.jsp";
		}else if("train".equals(type)){
			gotopage = "index/event/trainDetails.jsp";
		}else if("incubator".equals(type)){
			gotopage = "index/event/incubatorDetails.jsp";
		}
		
		if(eventId!=null){
			eventService.addHits(eventId);
			model.addAttribute("event", eventService.getEvent(eventId));
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName(gotopage);
		return mav;
	}
	
	@RequestMapping("/addCallNum")
	public@ResponseBody String addCallNum(Integer eventId){
		if(eventId!=null){
			if(eventService.addCallNum(eventId)==1){
				return "";
			}
			logger.error("电话咨询次数增加次数为0！");
		}
		return "";
	}
}