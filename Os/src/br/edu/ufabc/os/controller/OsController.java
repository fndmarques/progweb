package br.edu.ufabc.os.controller;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.ufabc.os.dao.OsDAO;
import br.edu.ufabc.os.modelo.Os;

public class OsController {

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

}
