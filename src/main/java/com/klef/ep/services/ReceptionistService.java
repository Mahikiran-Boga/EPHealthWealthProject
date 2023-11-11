package com.klef.ep.services;
import java.util.List;
import javax.ejb.Remote;

import com.klef.ep.models.BookAppointment;
import com.klef.ep.models.Doctor;
import com.klef.ep.models.Management;
import com.klef.ep.models.Patient;
import com.klef.ep.models.Receptionist;

	@Remote
	public interface ReceptionistService 
	{
		public Receptionist CheckReceptionistLogin(String email,String password);
	   public String RegisterPatient(Patient patient);
	   public List<Doctor> ViewAllDoctors();
	   public Doctor retrieveDoctorDetails(int doctorId);
	   public String saveAppointment(BookAppointment bookappointment);


	   

	 
	}


