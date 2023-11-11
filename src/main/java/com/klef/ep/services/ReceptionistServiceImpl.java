package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.BookAppointment;
import com.klef.ep.models.Doctor;
import com.klef.ep.models.Patient;
import com.klef.ep.models.Receptionist;


@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class ReceptionistServiceImpl implements ReceptionistService{

	@Override
	public String RegisterPatient(Patient patient) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
	   	  em.persist(patient);     // insert operation
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
	   	  emf.close();
	   	  
	   	  return "Patient Registered Successfully";
	}
	
	@Override
	public Receptionist CheckReceptionistLogin(String email, String password) {
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select a from Receptionist a where email=? and password=?   "); // atmost one object (0 or 1)
	     qry.setParameter(1, email);
	     qry.setParameter(2, password);
	     
	     Receptionist manager = null;
	     
	     if(qry.getResultList().size() > 0) 
	     {
	    	 manager = (Receptionist) qry.getSingleResult();
	     }
	     
	     em.close();
	     emf.close();
	   
	     return manager;
	}

	@Override
	public List<Doctor> ViewAllDoctors() 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery(" select e from Doctor e "); // e is an alias of Doctor class
         List<Doctor> doclist = qry.getResultList();
      
         em.close();
   	    emf.close();
   	    
   	    return doclist;
	}

	@Override
	public Doctor retrieveDoctorDetails(int doctorId) {
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	        EntityManager em = emf.createEntityManager();

	        em.getTransaction().begin();

	        // Use the find method to directly retrieve the Doctor entity by its primary key (doctorId)
	        Doctor doctor = em.find(Doctor.class, doctorId);

	        em.close();
	        emf.close();

	        return doctor;
	}

	@Override
	public String saveAppointment(BookAppointment bookappointment) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
	   	  em.persist(bookappointment);     // insert operation
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
	   	  emf.close();
	   	  
	   	  return "Appointment Saved Successfully";
	}
}
