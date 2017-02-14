package hpe.com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import hpe.com.model.User;
import hpe.com.service.UserService;

@Controller
@RequestMapping("/test")
public class TestController {
	
	@Autowired
    UserService userService;  //Service which will do all data retrieval/manipulation work
 
    
    //-------------------Retrieve All Users--------------------------------------------------------
     
    @RequestMapping(value = "/test1", method=RequestMethod.GET)
    @ResponseBody
    public String listAllUsers() {
    	System.out.println("test>>>>>>>>>>>>>>>>>>");
        List<User> users = userService.selectAllUsers();
        return "test/test1";
    }
  
    
}
