package com.javatpoint.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.javatpoint.beans.Form;;


//Veri taban� i�lemlerini ger�ekle�tiren class
@Repository
public class FormDao {

@Autowired	
JdbcTemplate template;
	
	//Veri taban� ba�lant�s�
	@Autowired	
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}
	
	//Verileri veri taban�na kaydetme
	public int send(Form applicant) {
			
		String sql="insert into applicants(name,tc,address,phone,email,birth,question1,question2,question3,question4,additions) values('"+applicant.getName()+
				"','"+applicant.getTcno()+"','"+ applicant.getAddress()+"','"+applicant.getPhone()+
				"','"+applicant.getEmail()+"','"+new java.sql.Timestamp(applicant.getBirth().getTime())+"','"+applicant.getQuest3()+"','"
				+applicant.getQuest1()+"','"+applicant.getQuest2()+"',"+applicant.getInvestmentAmount()+",'"
				+applicant.getAdditions()+"')";
		
		return template.update(sql);

		}

}
