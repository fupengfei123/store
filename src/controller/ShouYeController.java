package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.ShouYeService;

import entity.Merchandise;

@Controller
public class ShouYeController {
	@Autowired
	ShouYeService sYeService;
	
	@RequestMapping(value="show")
	public ModelAndView show(){
		ModelAndView mv = new ModelAndView("shouye");
		List<Merchandise> list = sYeService.search();
		mv.addObject("mers", list);
		return mv;
	}
	
}
