package com.rupcharcha.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rupcharcha.dao.MatchDao;
import com.rupcharcha.entity.Matching;
import com.rupcharcha.entity.User;
import com.rupcharcha.service.Match;

@Controller
@RequestMapping("/user/")
public class UserController {
	
	@Autowired
	private MatchDao matchDao;
	
	@Autowired
	private Match calculateMatch;
	
	@RequestMapping(path = "user-logout")
	public String logout(HttpSession session) {
		User user = (User) session.getAttribute("loginSuccess");
		String name = user.getName();
		
		session.removeAttribute("loginSuccess");
		session.setAttribute("msg", "Hey " + name + ", See you soon..");
		return "redirect:/user-login";
	}
	
	@RequestMapping("calculateMatch")
	public String matchPage() {
		
		return "match-page";
	}
	
	@RequestMapping(path = "match-result-page", method = RequestMethod.POST)
	public String matchResulPage(@ModelAttribute Matching matching, HttpSession session) {
		
		User user = (User) session.getAttribute("loginSuccess");
		String yourName = matching.getYourName();
		String matchName = matching.getMatchName();
		
		String result =  calculateMatch.calculateLove(yourName, matchName);
		matching.setUser(user);
		matching.setMatchResult(result);
		
		session.setAttribute("match", matching);
		
		int i = (int) matchDao.saveData(matching);
		System.out.println(matching);
		return "result-page";
	}
	
	@RequestMapping("matchHistory")
	public String viewMatchHistory(HttpSession session, Model model) {
		
		User user = (User) session.getAttribute("loginSuccess");
		List<Matching>  matchingHistoryList = matchDao.getAllaDataList(user);
		int id = user.getId();
		model.addAttribute("milanorUserID", id);
		model.addAttribute("milanorList", matchingHistoryList);
		System.out.println(user);
		System.out.println(matchingHistoryList);
		return "view-matching-history";
	}
	
	
	@RequestMapping(path = "deleteingMatch")
	public String deleteMatchHistory(@RequestParam("id") int id, HttpSession session) {
		
		matchDao.deleteData(id);
		session.setAttribute("msg", "Deleted " + id +" no. record..");
		return "redirect:/user/matchHistory";
	}
	
}
