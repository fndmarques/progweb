package br.edu.ufabc.os.controller;

import java.util.List;

import javax.persistence.*;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.ufabc.os.modelo.Os;

public class OsController {

	// nova os - formulario
	@RequestMapping("novaOs")
	 public String form() {
	  return "os/formulario";
	 }
	
	// insere os
	@RequestMapping("insereOs")
	 public String insere(Os os) {
	EntityManagerFactory factory = Persistence
	.createEntityManagerFactory("os");
	EntityManager manager = factory.createEntityManager();
	manager.getTransaction().begin();
	manager.persist(os);
	manager.getTransaction().commit();
	manager.close();
	return "redirect:listaOs";
	}
	
	// altera os
	@RequestMapping("alteraOs")
	public String altera(Os os) {
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
	List<Os> suporte = manager
	.createQuery("select a from Os as a").getResultList();
	// verificar
	//model.addAttribute("os", os);
	manager.close();
	return "os/lista";
	}
	
	//Testando commit
	
	// verificar em lista os a linha abaixo: alunos alunos -> os os, singular
	// model.addAttribute("alunos", alunos);
	
	/* - ALUNO-OLD
	@RequestMapping("insereAluno")
	public String insere(@Valid Aluno aluno, BindingResult result) {
		if (result.hasErrors()) {
			return "formulario";
		}
		AlunoDAO dao = new AlunoDAO();
		dao.insere(aluno);
		return "redirect:listaAlunos";
	}

	@RequestMapping("removeAluno")
	public String remove(@Valid Aluno aluno, BindingResult result) {
		if (result.hasErrors()) {
			return "formulario";
		}
		AlunoDAO dao = new AlunoDAO();
		dao.remove(aluno);
		return "redirect:listaAlunos";
	}

	@RequestMapping("alteraAluno")
	public String altera(@Valid Aluno aluno, BindingResult result) {
		if (result.hasErrors()) {
			return "aluno/formulario";
		}
		AlunoDAO dao = new AlunoDAO();
		dao.altera(aluno);
		return "redirect:listaAlunos";
	}

	@RequestMapping("novoAluno")
	public String form() {
		return "aluno/formulario";
	}

	@RequestMapping("listaAlunos")
	public String lista(Model model) {
		AlunoDAO dao = new AlunoDAO();
		model.addAttribute("alunos", dao.getLista());
		return "aluno/lista";
	}

	@RequestMapping("exibeAluno")
	public String exibe(Long id, Model model) {
		AlunoDAO dao = new AlunoDAO();
		model.addAttribute("aluno", dao.buscaPorId(id));
		return "aluno/exibe";
	}

	@RequestMapping("mudaStatus")
	public void mudaStatus(Long id, HttpServletResponse response) {
		AlunoDAO dao = new AlunoDAO();
		dao.finaliza(id);
		response.setStatus(200);
	}
	*/

}
