<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>

    <ul class="resume-content">
        <li>
            <div class="resume-item-inner resume-item-a resume-work-experice" style="background: none">
                <div>
                    <h2>工作经历</h2>
                </div>
                <div class="regist-item-right">
                    <div class="word-click">点击添加工作经历</div>
                <ul>

                </ul>
                </div>

            </div>
        </li>
        <li>
            <div class="resume-item-inner resume-item-a resume-education-experice" style="background: none">
                <div>
                    <h2>教育经历</h2>
                </div>
                <div class="regist-item-right">
                    <div class="edu-click">点击添加教育经历</div>
                    <ul>
                       
                    </ul>
                </div>

            </div>
        </li>
        <li>
            <div class="resume-item-inner resume-item-b resume-skill-nav" style="background: none">
                <div>
                    <h2>擅长领域</h2>
                </div>
                <div class="regist-item-right">
                    <div class="skill-click">点击添加擅长领域</div>
                    <ul>
                        
                    </ul>
                </div>


            </div>
        </li>
        <li>
            <div class="resume-item-inner resume-item-b entrepreneurship-nav">
                <div>
                    <h2>创业方向</h2>
                </div>
                <ul>
                    
                </ul>

            </div>
        </li>
    </ul>

    <!--//工作经历-->
    <div class="work-experience" style="left:100%;">
        <ul class="resume-content2">
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>公司名称</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" class="company-name" data-role="none" maxlength="15" placeholder="必填"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" class="position" data-role="none" maxlength="15" placeholder="必填"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>入职时间</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" class="entry-time" data-role="none" maxlength="15" placeholder="必填 XX年XX月"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>离职时间</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" class="quit-time" data-role="none" maxlength="15" placeholder="必填 XX年XX月"/>
                    </div>
                </div>
            </li>
            <li class="company-class-nav">
                <div class="resume-item-inner2">
                    <div>
                        <h2>公司类型</h2>
                    </div>
                    <div class="resume-bottom-line company-class">
                        &nbsp;<span>请选择公司类型</span>
                    </div>
                </div>
            </li>
        </ul>
        <!-- 公司类型-->
        <div id="resume-class-selecting" style="display: none">
            <div class="company-select-inner">
                <h2>公司类型</h2>
                <ul>
                    <li class="pppp">已上市</li>
                    <li>成熟型</li>
                    <li>成长型</li>
                    <li>初创型</li>
                </ul>
            </div>
        </div>
        <button type="button" data-role="none" class="company-class-save work-experience-save">保存</button>
    </div>
    <!-- 教育经历-->
    <div class="education-experience" style="left:100%;">
        <ul class="resume-content2">
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>学校名称</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" data-role="none" class="college-name" maxlength="15" placeholder="必填"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" data-role="none" class="degrees" maxlength="15" placeholder="必填"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>入学时间</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" data-role="none" class="go-school-time" maxlength="15" placeholder="必填 XX年XX月"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>毕业时间</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" data-role="none" class="leave-school-time" maxlength="15" placeholder="必填 XX年XX月"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" data-role="none" class="major" maxlength="15" placeholder="选填"/>
                    </div>

                </div>
            </li>

        </ul>
        <button type="button" data-role="none" class="company-class-save education-experience-save">保存</button>
        <div class="project-alert" style="display: none">
            请填写完整提交
        </div>
    </div>
    <!-- 擅长领域-->
    <div class="skill-experience" style="left:100%;">
        <div class="skill-experience-bg">
            <div class="skill-experience-inner">
                <p>请自定义擅长领域（每个标签最多10个字）</p>
                <ul>
                    <li><span>X</span><b>擅长吃饭擅长吃饭吃饭</b></li>
                </ul>
                <div id="add-skill">+</div>
            </div>

        </div>
        <button type="button" class="skill-save" data-role="none">保存</button>
        <!-- 输入框-->
        <div class="skill-text" style="display: none">
            <div class="skill-text-inner">
                <h2>请添加领域</h2>
                <div class="skill-text-input">
                    <input type="text" data-role="none" placeholder="领域"/>
                </div>

                <div class="skill-text-sure">
                    <span>取消</span>
                    <span>确定</span>
                </div>
            </div>
        </div>
    </div>
    <!-- 创业方向-->
    <div class="entrepreneurship">
        <div class="entrepreneurship-inner">
            <p>请选择创业方向，最多选5个</p>
            <ul>
                <li>电子商务</li>
                <li>社交</li>
                <li>工具</li>
                <li>移动应用</li>
                <li>O2O</li>
                <li>企业服务</li>
                <li>游戏</li>
                <li>文化艺术</li>
                <li>教育</li>
                <li>营销广告</li>
                <li>媒体</li>
                <li>视频娱乐</li>
                <li>旅游</li>
                <li>健康医疗</li>
                <li>金融</li>
                <li>搜索安全</li>
                <li>创业服务</li>
                <li>站长工具</li>
                <li>硬件</li>
                <li>体育</li>
                <li>其他</li>
            </ul>
        </div>
        <button type="button" data-role="none" class="entrepreneurship-save">保存</button>

    </div>

    <button type="button" data-role="none" class="resume-save">保存</button>

<script type="text/javascript">
//动态添加工作经历
//定义全局变量
var companyNameValue;
var positionValue;
var entryTimeValue;
var quitTimeValue;
var companyTypeValue;

function workInit(){
	companyNameValue = undefined;
	positionValue = undefined;
	entryTimeValue = undefined;
	quitTimeValue = undefined;
	companyTypeValue = undefined;
	
	$(".work-experience").find("input").val("");
	$(".company-class span").text("");
	
}
$('.word-click').on("click", function(){
	workInit();
    $('.work-experience').animate({
        'left':0
    },300)
});

$('.company-class-nav').click(function(){
    $('#resume-class-selecting').show();
});

$('#resume-class-selecting ul li').click(function(){
    $(this).addClass('company-class-active').siblings().removeClass('company-class-active');
    companyTypeValue=$(this).html();
    $('.company-class span').html(companyTypeValue).css({
        'color':'#333'
    })
    $('#resume-class-selecting').hide();

})


function showWork(obj){
	//workInit();
	var resumeWork = $(".resume-work-experice").data("resume");
	for (x in resumeWork){
		if(resumeWork[x].randomId == $(obj).attr("random")){
			$('.company-name').val(resumeWork[x].companyName);
		    $('.position').val(resumeWork[x].position);
		    $('.entry-time').val(resumeWork[x].entryTime);
		    $('.quit-time').val(resumeWork[x].quitTime);
		    $('.company-class span').html(resumeWork[x].companyType).css({
		        'color':'#333'
		    })
			break;
		}
	}
	$(".resume-work-experice").removeData("resume");
	$(obj).detach();
	$('.work-experience').animate({
        'left':0
    },300)
}

//
$('.work-experience-save').click(function(){
    //获得数据
    companyNameValue=$('.company-name').val();
    positionValue=$('.position').val();
    entryTimeValue=$('.entry-time').val();
    quitTimeValue=$('.quit-time').val();
    companyTypeValue=$('.company-class span').html();

    //判断是否为空
    if(companyNameValue==''||positionValue==''||entryTimeValue==''||quitTimeValue==''||companyTypeValue==undefined){
        $('.project-alert').show();
        var eduTimer=setTimeout(function(){
            $('.project-alert').hide();
        },1000)

    }else{
        $('.work-experience').animate({
            "left":'100%'
        },300)
        //这是工作经历--数据==================》
        var ran = getRandom(100000);
        var workExpObj={
        	randomId:ran,
            companyName:companyNameValue,
            position:positionValue,
            entryTime:entryTimeValue,
            quitTime:quitTimeValue,
            companyType:companyTypeValue
        }
        
        //动态生成教育经历列表
        $('.resume-work-experice ul').append("<li onclick='showWork(this)' random='"+ran+"'>" +"<h2>"+companyNameValue+"</h2>"+"<p>"+entryTimeValue+" 至 "+quitTimeValue+"</p>"+"</li>");
        
        var arrayPartner = $(".resume-work-experice").data("resume");
        if(!arrayPartner){
        	arrayPartner = new Array();
        }
        arrayPartner.push(workExpObj);
        
        $(".resume-work-experice").data("resume",arrayPartner);
    }

})




    //动态添加教育经历
    $('.edu-click').click(function(){
        $('.education-experience').animate({
            'left':'0'
        },300)
    })
    //定义全局变量
    var collegeNameValue;
    var degreesValue;
    var goSchoolTimeValue;
    var leaveSchoolTimeValue;
    var majorValue;


    $('.education-experience-save').click(function(){
        collegeNameValue=$('.college-name').val()
        degreesValue=$('.degrees').val()
        goSchoolTimeValue=$('.go-school-time').val()
        leaveSchoolTimeValue=$('.leave-school-time').val()
        majorValue=$('.major').val()


        if(collegeNameValue==''||degreesValue==''||goSchoolTimeValue==''||leaveSchoolTimeValue==''){
           $('.project-alert').show();
            var eduTimer=setTimeout(function(){
                $('.project-alert').hide();
            },1000)

        }else{
            //这是教育经历--数据==================》
            $('.education-experience').animate({
                "left":'100%'
            },300)
            var eduExpObj={
                collegeName:collegeNameValue,
                degrees:degreesValue,
                goSchoolTime:goSchoolTimeValue,
                leaveSchoolTime:leaveSchoolTimeValue,
                vmajor:majorValue
            }
         //动态生成教育经历列表
         $('.resume-education-experice ul').append("<li>" +"<h2>"+collegeNameValue+"</h2>"+"<p>"+goSchoolTimeValue+" 至 "+leaveSchoolTimeValue+"</p>"+"</li>");

        }
    })
    
    
    //动态添加擅长领域
        //定义全局变量
        var skillValue;
    $('.skill-click').click(function(){
        $('.resume-skill-nav ul li').remove();
        $('.skill-experience').animate({
            'left':'0'
        },300)
    })
    $('#add-skill').click(function(){
        $('.skill-text').show();
    })
    $('.skill-text-sure span:first-child').click(function(){
        $('.skill-text').hide();
    })
    $('.skill-text-sure span:last-child').click(function(){
        skillValue=$('.skill-text-inner input').val();
        $('.skill-experience ul').append("<li>"+"<span>X</span>"+"<b>"+skillValue+"</b>"+"</li>");
        $('.skill-text').hide();
        $('.skill-experience ul li').click(function(){
            $(this).children('span').show();
            $(this).children('span').click(function(){
                $(this).parent().remove();
            })
        })
    })
    $('.skill-save').click(function(){
        var skillArr=$('.skill-experience ul li').text();
        skillArr=skillArr.split('X');
       console.log(skillArr) ;
        for(var i=0;i<skillArr.length;i++){
            if(skillArr[i]!=''){
                $('.resume-skill-nav ul').append('<li>'+skillArr[i]+'</li>');
            }
        }
        $('.skill-experience').animate({
            'left':'100%'
        },300)
    })

    //创业方向
    $('.entrepreneurship-nav').click(function(){
        $('.entrepreneurship-nav ul li').remove();
        $('.entrepreneurship').animate({
            'left':'0'
        },300)
    })

    $('.entrepreneurship ul li').click(function(){
       if($(this).is('.entrepreneurship-active')){
           $(this).removeClass('entrepreneurship-active');
       }else{
           if($('.entrepreneurship-active').length<5){
               $(this).addClass('entrepreneurship-active');
           }
       }

    });
    $('.entrepreneurship-save').click(function(){
        var arr=$('.entrepreneurship ul li');
        for(var i=0;i<arr.length;i++){
            var c=$('.entrepreneurship ul li').eq(i);
            if(c.is('.entrepreneurship-active')){
                $('.entrepreneurship-nav ul').append('<li>'+ c.text()+'</li>');
            }
        }
        $('.entrepreneurship').animate({
            'left':'100%'
        },300)
    })

    $('.resume-save').click(function(){
        //WeixinJSBridge.invoke('closeWindow',{})
    	 $("#resumepage").hide();
		 $("#mainpage").show();
    })

    function getRandom(n){
       return Math.floor(Math.random()*n+1)
    }

</script>

