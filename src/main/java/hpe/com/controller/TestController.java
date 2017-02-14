package hpe.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/test")
public class TestController {
    @RequestMapping(value = "/test1", method=RequestMethod.GET)
    public String listAllUsers() {
    	System.out.println("test>>>>>>>>>>>>>>>>>>");
        return "test/test1";
    }
  
    
}
