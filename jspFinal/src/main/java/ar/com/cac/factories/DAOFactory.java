package ar.com.cac.factories;

import ar.com.cac.modelos.UsuarioDAO;

public class DAOFactory {

	public static UsuarioDAO getUsuariosDAO() {
		return new UsuarioDAO();
	}

}