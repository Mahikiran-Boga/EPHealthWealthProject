package com.klef.ep.services;

import com.klef.ep.models.BookAppointment;
import com.klef.ep.models.Doctor;
import com.klef.ep.models.Management;
import com.klef.ep.models.Patient;
import com.klef.ep.models.Receptionist;
import com.klef.ep.models.TableCounts;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;



@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class ManagementServiceImpl implements ManagementService{

	@Override
	public Management CheckAdminLogin(String username, String password) {
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select a from Management a where username=? and password=?   "); // atmost one object (0 or 1)
	     qry.setParameter(1, username);
	     qry.setParameter(2, password);
	     
	     Management manager = null;
	     
	     if(qry.getResultList().size() > 0) 
	     {
	    	 manager = (Management) qry.getSingleResult();
	     }
	     
	     em.close();
	     emf.close();
	   
	     return manager;
		
		
	}

	@Override
	public String AddReceptionist(Receptionist receptionist) {
		
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
	   	  em.persist(receptionist);     // insert operation
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
	   	  emf.close();
	   	  
	   	  return "Receptionist Added Successfully";
	}
	
	@Override

	public String AddDoctor(Doctor doctor) {
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
	   	  em.persist(doctor);     // insert operation
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
	   	  emf.close();
	   	  
	   	  return "Doctor Added Successfully";
	}

	@Override
	public List<Patient> viewAllPatients() {
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery(" select e from Patient e "); // e is an alias of Doctor class
         List<Patient> plist = qry.getResultList();
      
         em.close();
   	    emf.close();
   	    
   	    return plist;
	}

	@Override
	public TableCounts getCount() {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	    EntityManager em = emf.createEntityManager();

	    int doctorCount = 0;
	    int patientCount = 0;
	    int receptionistCount = 0;
	    
	    try {
	        em.getTransaction().begin();
	        
	        Query doctorQuery = em.createQuery("SELECT COUNT(d) FROM Doctor d");
	        Long doctorCountLong = (Long) doctorQuery.getSingleResult();
	        doctorCount = doctorCountLong.intValue();
	        
	        Query patientQuery = em.createQuery("SELECT COUNT(p) FROM Patient p");
	        Long patientCountLong = (Long) patientQuery.getSingleResult();
	        patientCount = patientCountLong.intValue();
	        
	        Query receptionistQuery = em.createQuery("SELECT COUNT(r) FROM Receptionist r");
	        Long receptionistCountLong = (Long) receptionistQuery.getSingleResult();
	        receptionistCount = receptionistCountLong.intValue();
	        
	        em.getTransaction().commit();
	    } catch (Exception e) {
	        // Handle any exceptions or log errors here
	        e.printStackTrace();
	    } finally {
	        em.close();
	        emf.close();
	    }

	    return new TableCounts(doctorCount, patientCount, receptionistCount);
	}


	    @Override
	    public List<BookAppointment> viewAllAppointments() {
	        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	        EntityManager em = emf.createEntityManager();

	        em.getTransaction().begin();

	        Query qry = em.createQuery("SELECT e FROM BookAppointment e");
	        List<BookAppointment> alist = qry.getResultList();

	        em.close();
	        emf.close();

	        return alist;
	    }


	

	

	

}
