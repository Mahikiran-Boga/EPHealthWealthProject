package com.klef.ep.services;
import java.util.List;
import javax.ejb.Remote;

import com.klef.ep.models.BookAppointment;
import com.klef.ep.models.Doctor;
import com.klef.ep.models.Management;
import com.klef.ep.models.Patient;
import com.klef.ep.models.Receptionist;
import com.klef.ep.models.TableCounts;

	@Remote
	public interface ManagementService 
	{
	   public Management CheckAdminLogin(String username,String password);
	   public String AddReceptionist(Receptionist receptionist);
	   public String AddDoctor(Doctor doctor);
	   public TableCounts getCount();
	   public List<Patient> viewAllPatients();
	   public List<BookAppointment> viewAllAppointments();

	   

	 
	}


