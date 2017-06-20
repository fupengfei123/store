package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.DetailService;
import entity.Merchandise;
@Controller
public class DetailController {
	@Autowired
	DetailService deService;
	
	@RequestMapping(value="showDetail")
	public ModelAndView showList() {
		ModelAndView mv = new ModelAndView("detail");
		List<Merchandise> list = deService.search();
		mv.addObject("mers", list);
		return mv;
	}
	
	@RequestMapping(value="detail")
	public ModelAndView detail(int id) {
		ModelAndView mv = new ModelAndView("detail");
		Merchandise mers =  deService.searchById(id);
		List<Merchandise> list = deService.search();
		mv.addObject("mers", list);
		mv.addObject("mer", mers);
		return mv;
	}
	
}
