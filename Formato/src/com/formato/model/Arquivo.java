package com.formato.model;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class Arquivo {

	public void  upload(String pasta, String nomeArquivo, InputStream arquivoCarregado) {
		//define o caminho completo com o nome do arquivo
		String caminhoArquivo = pasta + "/" + nomeArquivo;
		//Variável que vai representar o arquivo
		File novoArquivo = new File(caminhoArquivo);
		FileOutputStream saida;
		try {
			saida = new FileOutputStream(novoArquivo);
			copiar(arquivoCarregado, saida);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
	}
	
	public void copiar(InputStream origem, OutputStream destino) {
		int bite = 0;
		//define o tamanho máximo do arquivo
		byte[] tamanhoMaximo = new byte[1024 * 8]; //8kb
		
		try {
			//Define um loop para leitura byte a byte
			while(( bite = origem.read(tamanhoMaximo)) >=0 ){
				//pega o byte lido e escreva no destino
				destino.write(tamanhoMaximo, 0, bite);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}//fim da classe
