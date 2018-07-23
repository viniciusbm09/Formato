package com.formato.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.formato.dao.UsuarioDao;
import com.formato.model.Usuario;
import com.formato.util.Notificacoes;



public class AdicionaUsuarioLogica implements Logica {
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Notificacoes notificacoes = new Notificacoes();
		String url = "mvc?logica=AcessoIniciado&url=/index.jsp";
		
		if (req.getParameter("btnEnviar").equalsIgnoreCase("Salvar")) {
			// pegando os parametros do request e montando um objeto
			// nomes de cada input
			Usuario usuario = new Usuario();
			usuario.setNomecompleto(req.getParameter("nomecompleto"));
			usuario.setEmail(req.getParameter("email"));
			usuario.setTelefone(req.getParameter("telefone"));
			usuario.setLogin(req.getParameter("login"));
			usuario.setSenha(req.getParameter("senha"));
			usuario.setAceitaTermos(req.getParameter("aceitatermos"));
		
				
				// salva o usuario
				UsuarioDao dao = new UsuarioDao();
				Usuario existeUsuario = dao.existeUsuario(usuario);
				Usuario existeEmail = dao.existeEmail(usuario);
				if (existeUsuario == null && existeEmail == null) {
					try {
						dao.adiciona(usuario);
						
						url = "mvc?logica=AcessoIniciado&url=/servicos.jsp";
					} catch (RuntimeException e) {
						url = "mvc?logica=AcessoIniciado&url=/centralCliente.jsp";
					}
				} else {
					notificacoes.add("Usuario já cadastrado");
					url = "mvc?logica=AcessoIniciado&url=/registro.jsp";
				}
			
			req.getSession().invalidate();
			req.setAttribute("notificacoes", notificacoes);
			
		}
		return url;
	}
}
