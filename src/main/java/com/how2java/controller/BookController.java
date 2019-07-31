package com.how2java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("book")
public class BookController {
    @RequestMapping
    public ModelAndView book(){
        ModelAndView modelAndView = new ModelAndView();
        return modelAndView;
    }
}
