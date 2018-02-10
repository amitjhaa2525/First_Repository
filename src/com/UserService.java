package com;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Component;
import org.hibernate.Session;
import org.hibernate.Transaction;

@Component
public class UserService {
	
	public void addUser(User user) {
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		System.out.println("==========17==========");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(user);
		tx.commit();
		session.close();
		
	}

}
