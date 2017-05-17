package com.ofly.demo.mask.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/demo/mask")
public class MaskController {

	private static final String PATH_MASK = "demo/mask";
	@RequestMapping("/init")
	public String init() {
		return PATH_MASK;
	}
}
