package com.how2java.controller;
import com.how2java.pojo.User;
import com.how2java.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import java.util.HashMap;
import java.util.Map;
@Controller
@RequestMapping("")
public class UserController {
    @Autowired
    public UserService userService;
    private Map<String,Object> result = new HashMap<>();
    @RequestMapping("/login")
    public ModelAndView getview(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @RequestMapping(value = "/get",method = RequestMethod.POST)
    public ModelAndView get(User user)
    {
        System.out.println(user+"     ÌבÊ¾       ");
        ModelAndView modelAndView = new ModelAndView();

                user = userService.get(user.getUsername(),user.getPassword());
               if (user != null)
               {
               modelAndView.addObject("username",user.getUsername());
               modelAndView.setViewName("index");
               }else
                   {
                       return new ModelAndView("redirect:/login");
                }
               return modelAndView;
    }
}
