package com.formato.logica;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.threads.ThreadPoolExecutor;

import com.formato.dao.UsuarioDao;
import com.formato.model.Usuario;
import com.formato.util.Notificacoes;


public class Login extends HttpServlet implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Notificacoes notificacoes = new Notificacoes();
		if (req.getParameter("btnLogin").equalsIgnoreCase("login")) {
			String login = req.getParameter("login");
			String senha = req.getParameter("senha");
			
			
				Usuario usuario = new Usuario();
				usuario.setLogin(login);
				usuario.setSenha(senha);
				
				UsuarioDao dao = new UsuarioDao();
				//Verifica se existe o usuário e atribui ao oobjeto
				Usuario user = dao.existeUsuario(usuario);
				
				if (user != null) {
					//Existindo o usuário, Compara com a senha cadastrada
					if (user.getSenha().equalsIgnoreCase(senha)) {
						//retira a senha da sessão
						user.setSenha("******");
						//Salva na sessão o usuário logado
						req.getSession().setAttribute("usuarioLogado", user);
						return "mvc?logica=AcessoIniciado&url=/dadosCliente.jsp";
					} else {
						notificacoes.add("Senha inválida!");
					}
				} else {
					notificacoes.add("Usuário não encontrado!");
				}
			
		}
		req.getSession().invalidate();
		req.setAttribute("notificacoes", notificacoes);
		return "mvc?logica=AcessoIniciado&url=/centralCliente.jsp";
	}
}