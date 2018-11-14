package com.nt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView index()
	{
		
		ModelAndView mv=new ModelAndView("page");
		
		mv.addObject("msg","welcome to Spring MVC web App");
		
		mv.addObject("title","Home");
		mv.addObject("userClickHome",true);
		
		return mv;
		
	}
	@RequestMapping(value={"/about"})
	public ModelAndView about()
	{
		
		ModelAndView mv=new ModelAndView("page");
		
		mv.addObject("title","About Us");
		mv.addObject("userClickAbout",true);
		
		return mv;
		
	}
	@RequestMapping(value={"/contact"})
	public ModelAndView contact()
	{
		
		ModelAndView mv=new ModelAndView("page");
		
		mv.addObject("title","Contact us");
		mv.addObject("userClickContact",true);
		
		return mv;
		
	}
	
	
	
/*	@RequestMapping(value="/test")
	
	public ModelAndView test(@RequestParam(value="msg", required=false)String msg)
	{
		if(msg==null){
			msg="hello there";
		}
		
		ModelAndView mv1=new ModelAndView("page");
		mv1.addObject("msg",msg);
		return mv1;
		
	}*/
	
@RequestMapping(value="/test/{msg}")
	
	public ModelAndView test(@PathVariable("msg")String msg)
	{
		if(msg==null){
			msg="hello there";
		}
		
		ModelAndView mv1=new ModelAndView("page");
		mv1.addObject("msg",msg);
		return mv1;
		
	}
	

}
