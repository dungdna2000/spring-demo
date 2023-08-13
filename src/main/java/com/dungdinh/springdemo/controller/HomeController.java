package com.dungdinh.springdemo.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

//import com.dungdinh.springdemo.Card;
import com.dungdinh.springdemo.PlayerCard;

import com.dungdinh.springdemo.CardDAO;

import com.dungdinh.springdemo.User;
import com.dungdinh.springdemo.frmSearchCards;


@Controller
public class HomeController {

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("Home Page Requested, locale = " + locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(
			@RequestParam(name = "id", required = false) String id,
			@RequestParam(name = "ref", required = false) String ref,
			Locale locale, Model model) {
		System.out.println("id = " + id);
		System.out.println("ref = " + ref);
		model.addAttribute("id", id);
		return "login";
	}

	@RequestMapping(value = "/cards", method = RequestMethod.GET)
	public String loginPage(Locale locale, Model model) {
		CardDAO dao = new CardDAO();
        List < PlayerCard > listCards = dao.getAllCards();
		model.addAttribute("listCards", listCards);
		model.addAttribute("list_size", listCards.size());
		return "cards";
	}
	
	
	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String login(@Valid User user, Model model) {
		System.out.println(">>>> HomeController::login() - userName: " + user.getUserName());
		model.addAttribute("userName", user.getUserName());
		return "user";
	}	
	
	@RequestMapping(value = "/cards", method = RequestMethod.POST)
	public String searchCards(@Valid frmSearchCards frm, BindingResult res, Model model) {
		
		System.out.println("searchCards()");
		if (res.hasErrors()) {
			
			System.out.println(">>> Form validation ERRORS");
			
			if (res.hasFieldErrors("title")) {
				System.out.println(">>> Field title validation failed");
				model.addAttribute("error_title_msg","Title length must be from 1 to 10 characters");
			}
			
			List<ObjectError> errors = res.getAllErrors();
			for (ObjectError rr : errors) {
				System.out.println(rr.toString());
			}

			
			return "cards";
		}

		
		CardDAO dao = new CardDAO();
        List < PlayerCard > listCards = dao.searchCards(frm);
		model.addAttribute("listCards", listCards);
		model.addAttribute("list_size", listCards.size());
		
		return "cards";
	}
}