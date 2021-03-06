package com.packtpub.springmvc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.packtpub.springmvc.model.Event;
@Repository
public class EventDAOImpl implements EventDAO{
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	@Override
	public void addEvent(Event eve) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(eve);
	}

}
