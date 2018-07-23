package com.formato.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class Notificacoes implements Serializable {

	private final List<String> notificacoes;

	public Notificacoes() {
		notificacoes = new ArrayList<>();
	}

	public Notificacoes(String mensagem) {
		notificacoes = new ArrayList<>();
		notificacoes.add(mensagem);
	}

	public void add(String mensagem) {
		notificacoes.add(mensagem);
	}

	public boolean isExistes() {
		return !notificacoes.isEmpty();
	}

	public List<String> getNotificacoes() {
		return notificacoes;
	}
}