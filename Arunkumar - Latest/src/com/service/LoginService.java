package com.service;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.util.HibernateUtil;
import com.model.Registration;

public class LoginService {

    public boolean authenticateUser(String email, String password) {
        Registration registration = getUserByEmail(email);          
        if(registration!=null && registration.getEmail().equals(email) && registration.getPassword().equals(password)){
            return true;
        }else{ 
            return false;
        }
    }

    public Registration getUserByEmail(String email) {
        Session session = HibernateUtil.openSession();
        Transaction transaction = null;
        Registration registration = null;
        try {
            transaction = session.getTransaction();
            transaction.begin();
            Query query = session.createQuery("from Registration where email='"+email+"'");
            registration = (Registration)query.uniqueResult();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return registration;
    }
    
    public List<Registration> getListOfUsers(){
        List<Registration> list = new ArrayList<Registration>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from registration").list();                        
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
    }
}