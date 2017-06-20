package controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import entity.User;

import service.UserService;
import util.RandomNumber;

@Controller
public class UserController {
	@Autowired
	UserService us;
	@RequestMapping(value="login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	
	@RequestMapping(value="userCode")
	public void userCode(HttpServletResponse response,HttpServletRequest request) {
		RandomNumber rn = new RandomNumber();
		HttpSession session = request.getSession();
		String rand;
		try {
			rand = rn.generateImage(response);
			session.setAttribute("rand", rand);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="doLogin", produces = "html/text; charset=utf-8")
	@ResponseBody
	public String login(String username,String password,String random,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String code = (String) session.getAttribute("rand");
		String str="";
		if (code.equals(random)) {
			User user = us.doLogin(username,password);
			if(user!=null){
				session.setAttribute("user", user);
				str="success";
			}else{
				str = "用户名或密码错误！";
			}
			
		}else {
			str="验证码错误！";
		}
		return str;
	}
}
