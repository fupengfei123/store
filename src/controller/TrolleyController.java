package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.TrolleyService;
import entity.Trolley;

@Controller
public class TrolleyController {
	@Autowired
	TrolleyService tService;
	
	@RequestMapping(value="showTrolley")
	public ModelAndView showList() {
		ModelAndView mv = new ModelAndView("trolley");
		List<Trolley> list = tService.show();
		mv.addObject("mers", list);
		return mv;
	}
	
	@RequestMapping(value="add")
	public String add(int id) {
		int count = 1;
		int userId = 1;
		int flag = tService.add(id,count,userId);
		if(flag>0){
			return "redirect:success";
		} else {
			return "redirect:fail";
		}
	}
	
	@RequestMapping(value="success")
	public ModelAndView success() {
		ModelAndView mv = new ModelAndView("success");
		return mv;
	}
	
	@RequestMapping(value="fail")
	public ModelAndView fail() {
		ModelAndView mv = new ModelAndView("fail");
		return mv;
	}
	
	@RequestMapping(value="search")
	public ModelAndView search() {
		int userId=1;
		ModelAndView mv = new ModelAndView("trolley");
		List<Trolley> list = tService.search(userId);
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value="delete")
	public ModelAndView delete(int id) {
		tService.delete(id);	
		ModelAndView mv = new ModelAndView("trolley");
		List<Trolley> list = tService.show();
		mv.addObject("mers", list);
		return mv;
	}
	
	@RequestMapping(value="addByDetail")
	public String addByDetail(int count,int id) {
		Trolley trolley = tService.searchByMid(id);
		if(trolley == null){
			tService.addByDetail(count,id);
		} else {
			tService.update(count,id);
		}
		return "redirect:showTrolley";
	}
	
}
