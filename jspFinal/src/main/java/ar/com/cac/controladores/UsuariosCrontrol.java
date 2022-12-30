package ar.com.cac.controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import ar.com.cac.modelos.Usuario;
import ar.com.cac.modelos.UsuarioDAO;

/**
 * Servlet implementation class UsuariosCrontrol
 */
@WebServlet("/usuarios")
public class UsuariosCrontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuariosCrontrol() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at:").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username =  request.getParameter("username");
		String Apellido =  request.getParameter("Apellido");
		String password =  request.getParameter("password");
		String email =  request.getParameter("email");
		Usuario user = new Usuario();
		user.setNombre(username +" "+ Apellido);
		user.setPassword(password);
		user.setId(1);
		user.setMail(email);
		
		UsuarioDAO uDAO = new UsuarioDAO();
		try {
			uDAO.insert(user);
			response.sendRedirect("index.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
