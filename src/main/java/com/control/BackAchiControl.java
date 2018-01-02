package com.control;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.service.AchievementService;

@Controller
@RequestMapping("/user")
public class BackAchiControl {
	@Resource(name="AchievementImpl")
	private AchievementService achievementService;
	private String string;
	//返回view的前缀
		private final static String prefixName="jsp/back/user/";
		private static String getViewName(String viewName) {
			return prefixName+viewName;
		}
	//上传文件的操作
	@RequestMapping(value="upload",method={RequestMethod.GET,RequestMethod.POST} )
	public String addFile(@RequestParam MultipartFile image,
			@RequestParam MultipartFile video,HttpServletRequest request){
		request.setAttribute("image", achievementService.saveImagine(image,request));
		request.setAttribute("video", achievementService.saveVideo(video,request));
		return getViewName("success");
		
		
	}
	@RequestMapping(value="delete",method={RequestMethod.GET,RequestMethod.POST} )
	public void delete(HttpServletRequest request,List<String> achIds){
		System.out.println(achIds);
		System.out.println(request.getParameterValues("achIds")[1]);
		return;
	}	
	
	
		
}
