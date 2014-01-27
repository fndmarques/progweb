package br.edu.ufabc.os.controller;

//import java.sql.Date;
import java.util.*;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.persistence.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.ufabc.os.modelo.Os;

@Controller
public class OsController {

	// nova os - formulario
	@RequestMapping("novaOs")
	public String form() {
		return "os/formulario";
	}

	// insere os
	@RequestMapping("insereOs")
	public String insere(Os os) {
		
		// configura data/hora
		//Date agora = new Date();
		Timestamp agora = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat dataformatada = new SimpleDateFormat("dd/MM/yyyy HH:mm");
		String datahora = dataformatada.format(agora);
		
		// seta DataAbertura
		os.setOs_DataAbertura(datahora);
		
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("os");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(os);
		manager.getTransaction().commit();
		manager.close();
		return "os/adicionado";
	}

	// altera os
	@RequestMapping("alteraOs")
	//public String altera(Long id, Model model) {
	public String altera(Os os) {
		//exibeOs?id=${os.id}
		// verifica se o chamado foi fechado e grava data e hora
		System.out.println("Valor dataconclusao:");
		System.out.println(os.getOs_DataConclusao());
		if (os.getOs_DataConclusao().equals("SIM,")) {
				// configura data/hora
				//Date agora = new Date();
				Timestamp agora = new Timestamp(System.currentTimeMillis());
				SimpleDateFormat dataformatada = new SimpleDateFormat("dd/MM/yyyy HH:mm");
				String datahora = dataformatada.format(agora);
				
				// seta DataConclusao
				os.setOs_DataConclusao(datahora);}
		
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("os");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.merge(os);
		manager.getTransaction().commit();
		manager.close();
		return "redirect:listaOs";
	}

	// remove os
	@RequestMapping("removeOs")
	public String remove(Os os) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("os");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		Os encontrado = manager.find(Os.class, os.getId());
		manager.remove(encontrado);
		manager.getTransaction().commit();
		manager.close();
		return "redirect:listaOs";
	}

	// exibe os
	@RequestMapping("exibeOs")	
	public String exibe(Long id, Model model) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("os");
		EntityManager manager = factory.createEntityManager();
		Os os = manager.find(Os.class, id);
		manager.close();
		model.addAttribute("os", os);
		return "os/exibe";
	}

	// lista os
	@RequestMapping("listaOs")
	public String lista(Model model) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("os");
		EntityManager manager = factory.createEntityManager();
		@SuppressWarnings("unchecked")
		List<Os> oses = manager.createQuery("select a from Os as a")
				.getResultList();
		// verificar
		model.addAttribute("oses", oses);
		manager.close();
		return "os/lista";
	}

}
