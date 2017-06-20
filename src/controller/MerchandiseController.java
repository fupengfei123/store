package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.ManchandiseService;
import entity.Merchandise;

@Controller
public class MerchandiseController {
	@Autowired
	ManchandiseService mService;
	
	@RequestMapping(value="showList")
	public ModelAndView showList(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView("list");
		List<Merchandise> list = mService.search();
		int page = 1;
		int count = mService.searchMaxCount();
		int maxPage = (count - 1) / 8 + 1;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
			if (page < 1) {
				page = 1;
			}
			if (page > maxPage) {
				page = maxPage;
			}
		}
		int begin = (page - 1) * 8;
		List<Merchandise> pageList = mService.searchByCount(begin, 8);
		mv.addObject("mers", list);
		mv.addObject("page", page);
		mv.addObject("maxPage", maxPage);
		mv.addObject("pags", pageList);
		return mv;
	}
	
	@RequestMapping(value="addTrolley")
	public ModelAndView addTrolley(int id) {
		ModelAndView mv = new ModelAndView("detail");
		
		Merchandise merchandise = new Merchandise();
		merchandise = mService.searchById(id);
		mv.addObject("mer", merchandise);
		return mv;
	}
}
