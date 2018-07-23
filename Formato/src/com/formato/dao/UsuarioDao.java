package com.formato.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.formato.jdbc.ConnectionFactory;
import com.formato.model.Usuario;


public class UsuarioDao {

	private Connection connection;

	public UsuarioDao() {
		this.connection = new ConnectionFactory().getConnection();
	}

	public void adiciona(Usuario usuario) {
		String sql = "Insert into usuario (nomecompleto, email, telefone, login, senha, aceitatermos)"
				+ " values (?,?,?,?,?,?)";

		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, usuario.getNomecompleto());
			stmt.setString(2, usuario.getEmail());
			stmt.setString(3, usuario.getTelefone());
			stmt.setString(4, usuario.getLogin());
			stmt.setString(5, usuario.getSenha());
			stmt.setString(6, usuario.isAceitaTermos());

			
			stmt.setInt(6, 1);
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Usuario existeUsuario(Usuario usuario) {
		try {
			String sql = ("select * from usuario where login = ?");
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, usuario.getLogin());

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				Usuario user = new Usuario();
				user.setNomecompleto(rs.getString("nomecompleto"));
				user.setEmail(rs.getString("email"));
				user.setTelefone(rs.getString("telefone"));
				user.setLogin(rs.getString("login"));
				user.setSenha(rs.getString("senha"));
				user.setAceitaTermos(rs.getString("aceitatermos"));
				
				return user;
			}
			// rs.close();
			// stmt.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return null;
	}
	
	public List<Usuario> getLista() {
		try {
			List<Usuario> usuarios = new ArrayList<Usuario>();
			PreparedStatement stmt = this.connection.prepareStatement("select * from usuario");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Usuario user = new Usuario();
				user.setNomecompleto(rs.getString("nomecompleto"));
				user.setEmail(rs.getString("email"));
				user.setTelefone(rs.getString("telefone"));
				user.setLogin(rs.getString("login"));
				user.setSenha(rs.getString("senha"));
				user.setAceitaTermos(rs.getString("aceitatermos"));
				usuarios.add(user);
			}
			rs.close();
			stmt.close();
			return usuarios;

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	

	public Usuario existeEmail(Usuario usuario) {
		try {
			String sql = ("select * from usuario where email = ?");
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, usuario.getEmail());
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				Usuario user = new Usuario();
				user.setNomecompleto(rs.getString("nomecompleto"));
				user.setEmail(rs.getString("email"));
				user.setTelefone(rs.getString("telefone"));
				user.setLogin(rs.getString("login"));
				user.setSenha(rs.getString("senha"));
				user.setAceitaTermos(rs.getString("aceitatermos"));
				
				return user;
			}
			// rs.close();
			// stmt.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return null;
	}
	
	public void atualiza(Usuario usuario) {
		String sql = "UPDATE usuario set nomecompleto = ?, email = ?, telefone = ? where login = ?";

		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, usuario.getNomecompleto());
			stmt.setString(2, usuario.getEmail());
			stmt.setString(3, usuario.getTelefone());
			stmt.setString(4, usuario.getLogin());
			System.out.println("dados: " + usuario.getLogin());
			//stmt.setInt(4, 1);
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}//fim da classe
