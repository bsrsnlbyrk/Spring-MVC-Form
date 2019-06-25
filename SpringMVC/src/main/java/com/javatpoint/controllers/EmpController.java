package com.javatpoint.controllers;   
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
import com.javatpoint.beans.Form;
import com.javatpoint.dao.FormDao;  
@Controller  
public class EmpController {  
     
  
    
    @Autowired (required=true)
    FormDao dao2;
      
    //form sayfasýna yapýlan GET isteklerini (request) karþýlar (form sayfasýný döndürür) 
    @RequestMapping("/empform")
    public String showform(Model m){  
    	m.addAttribute("Application", new Form());
    	return "empform"; 
    } 
    
    /* POST isteðini karþýlar, girilen form bilgilerini veri tabanýna kaydeder 
     * @ModelAttribute ile forma girilen bilgiler model sýnýfýna (Form) gönderilir (mapping)
     */
    @RequestMapping(value="/save",method = RequestMethod.POST)  
    public String save(@ModelAttribute("Application") Form emp,BindingResult bindingResult){
    	for( FieldError fieldError : bindingResult.getFieldErrors())
    	    System.out.println(fieldError.getField() +" : "+fieldError.getDefaultMessage());
        if(dao2.send(emp)>=0) {  
        	return "redirect:/successful";}
        else return "error"; //  
    }  
    
    //form sayfasýndan alýnan tarih bilgisi formatýný düzenler
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }
    
    //Veri tabanýna kayýt yapýldýðýnda gösterilecek sayfa
    @RequestMapping("/successful")
    public String showSuccessful(){  
    	return "successful"; 
    }
    
    //Herhangi bir nedenden veri tabanýna kayýt yapýlamadýðýnda gösterilecek sayfa
    @RequestMapping("/error")
    public String showError(){  
    	return "error"; 
    }
    
}  