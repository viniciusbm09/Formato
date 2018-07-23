package com.formato.logica;

import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.formato.model.Arquivo;
import com.formato.model.Usuario;

public class CarregaArquivoLogica implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String url = "mvc?logica=AcessoIniciado&url=/dadosCliente.jsp";
		
		if (req.getParameter("btnEnviar").equalsIgnoreCase("enviaArquivo")) {
			// pegando os parametros do request e montando um objeto
			// nomes de cada input
			Usuario usuario = new Usuario();
			usuario.setNomecompleto(req.getParameter("nomecompleto"));
			usuario.setEmail(req.getParameter("email"));
			usuario.setTelefone(req.getParameter("telefone"));
			usuario.setLogin(req.getParameter("login"));
			
			//Para o arquivo
			Arquivo arquivo = new Arquivo();
			String nomeArquivo = req.getParameter("upload");
			InputStream arquivoCarregado = req.getInputStream();
			arquivo.upload("D:\\", nomeArquivo, arquivoCarregado);
			
			System.out.println("arquivo: " + nomeArquivo);
		}
		
		
		return null;
	}

}
