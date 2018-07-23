package com.formato.logica;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.formato.util.Notificacoes;

public class Logoff extends HttpServlet implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Notificacoes notificacoes = new Notificacoes();
		//define a p�gina de retorno
		String url = "mvc?logica=AcessoIniciado&url=/index.jsp";
		
		if (req.getParameter("bntLogoff").equalsIgnoreCase("Enviar")) {
			
			//desctroi a sess�o
			req.getSession().invalidate();
			notificacoes.add("Sess�o finalizada");
		}
		return url;
	}

	
}
