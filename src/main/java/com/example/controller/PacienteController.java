package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.entity.Paciente;
import com.example.service.PacienteService;

@Controller
public class PacienteController {
	@Autowired
	PacienteService service;
	
	@GetMapping ("/")
	public String index (Model model) {
		return "index";
	}
	@PostMapping ("/salvar")
	public String salvar (Model model) {
		model.addAttribute("serviceVar",service);
		return "salvar";
	}
	@GetMapping ("/relatorio")
	public String relatorio (Model model) {
		List<Paciente> pacientes = service.findAll();
		model.addAttribute("pacientes",pacientes);
		return "relatorio";
	}
	@GetMapping ("/editar/{id}")
	public String editar (Model model, @PathVariable Long id) {
		Paciente paciente = service.getById(id);
		model.addAttribute("paciente", paciente);
		return "editar";
	}
	@PostMapping ("/editar")
	public String editar (Paciente paciente) {
		service.save(paciente);
		return "relatorio";
	}
}
