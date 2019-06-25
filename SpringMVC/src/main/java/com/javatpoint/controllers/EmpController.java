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
      
    //form sayfas�na yap�lan GET isteklerini (request) kar��lar (form sayfas�n� d�nd�r�r) 
    @RequestMapping("/empform")
    public String showform(Model m){  
    	m.addAttribute("Application", new Form());
    	return "empform"; 
    } 
    
    /* POST iste�ini kar��lar, girilen form bilgilerini veri taban�na kaydeder 
     * @ModelAttribute ile forma girilen bilgiler model s�n�f�na (Form) g�nderilir (mapping)
     */
    @RequestMapping(value="/save",method = RequestMethod.POST)  
    public String save(@ModelAttribute("Application") Form emp,BindingResult bindingResult){
    	for( FieldError fieldError : bindingResult.getFieldErrors())
    	    System.out.println(fieldError.getField() +" : "+fieldError.getDefaultMessage());
        if(dao2.send(emp)>=0) {  
        	return "redirect:/successful";}
        else return "error"; //  
    }  
    
    //form sayfas�ndan al�nan tarih bilgisi format�n� d�zenler
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }
    
    //Veri taban�na kay�t yap�ld���nda g�sterilecek sayfa
    @RequestMapping("/successful")
    public String showSuccessful(){  
    	return "successful"; 
    }
    
    //Herhangi bir nedenden veri taban�na kay�t yap�lamad���nda g�sterilecek sayfa
    @RequestMapping("/error")
    public String showError(){  
    	return "error"; 
    }
    
}  