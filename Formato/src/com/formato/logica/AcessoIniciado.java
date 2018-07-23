package com.formato.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AcessoIniciado implements Logica {

	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String url = req.getParameter("url");
		return url;
	}

}
