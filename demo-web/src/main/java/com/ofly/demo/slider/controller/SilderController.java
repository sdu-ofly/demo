package com.ofly.demo.slider.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author Logan
 * Show the slider work
 *
 */
@Controller
@RequestMapping("/demo/slider")
public class SilderController {
	
	@RequestMapping("/init1")
	public String init1() {
		return "demo/slider";
	}
	
	

}
