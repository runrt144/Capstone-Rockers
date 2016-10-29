package com.service;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.util.HibernateUtil;
import com.model.Registration;
import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;

public class RegisterService {
	
public boolean register(Registration user){
	 Session session = HibernateUtil.openSession();
	 if(isUserExists(user)) return false;	
	
	 Transaction transaction = null;	
	 try {
		 transaction = session.getTransaction();
		 transaction.begin();
		 session.save(user);
		 //session.saveOrUpdate(user);		
		 transaction.commit();
	 } catch (Exception e) {
		 if (transaction != null) {
			 transaction.rollback();
		 }
		 e.printStackTrace();
	 } finally {
		 session.close();
	 }	
	 return true;
}

public boolean isUserExists(Registration registration){
	 Session session = HibernateUtil.openSession();
	 boolean result = false;
	 Transaction transaction = null;
	 try{
		 transaction = session.getTransaction();
		 transaction.begin();
		 Query query = session.createQuery("from registration where email='"+registration.getEmail()+"'");
		 Registration unique = (Registration)query.uniqueResult();

		 transaction.commit();
		 if(unique!=null) result = true;
	 }catch(Exception ex){
		 if (ex instanceof MySQLIntegrityConstraintViolationException) {
		        System.out.println("Email already registered with us");
		 }
		 else if(transaction!=null){
			 transaction.rollback();
		 }
		 
	 }finally{
		 session.close();
	 }
	 return result;
}
}