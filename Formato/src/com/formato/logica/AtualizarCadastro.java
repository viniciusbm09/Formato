package com.formato.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.formato.dao.UsuarioDao;
import com.formato.model.Usuario;
import com.formato.util.Notificacoes;

public class AtualizarCadastro implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Notificacoes notificacoes = new Notificacoes();
		String url = "mvc?logica=AcessoIniciado&url=/index.jsp";
		
		if (req.getParameter("btnEnviar") != null) {
			// pegando os parametros do request e montando um objeto
			// nomes de cada input
			Usuario usuario = new Usuario();
			usuario.setNomecompleto(req.getParameter("nomecompleto"));
			usuario.setEmail(req.getParameter("email"));
			usuario.setTelefone(req.getParameter("telefone"));
			usuario.setLogin(req.getParameter("btnEnviar"));
					
				
				// salva o usuario
				UsuarioDao dao = new UsuarioDao();
				dao.atualiza(usuario);
			
			req.setAttribute("notificacoes", notificacoes);
			
		}
		return url;
	}
}

