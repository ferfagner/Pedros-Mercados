package pakege.geral;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class Servletloguin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servletloguin() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		PrintWriter out = response.getWriter();
		
		
		//conectar no banco de dados
		try {Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost/supermercado";
		String user="root";
		String password="root";
		
		//realizar conexão
		Connection conexao = DriverManager.getConnection(url,user,password);
			
			
			//criar string sql - jeito pessimo
			/*String sql = "select nomeusuario, senhausuario from usuario " + 
			"where nomeusuario = '" + usuario + "' and senhausuario = '" + senha + "'";*/
			
			//criando sql - jeito legal
			String sql =  "select nomeusuario, senhausuario from usuario " + 
					"where nomeusuario = ? and senhausuario = ?";
			
	
			// praparar sql para envio ao DBA
			PreparedStatement ps = conexao.prepareStatement(sql);
			
			//passar o valor do usuario para ?
			ps.setString(1, usuario);
			ps.setString(2, senha);
			
			
			
			//execultando sql
			ResultSet rs = ps.executeQuery();
			if (rs.first()) {
				response.sendRedirect("Produtosmercado");
			} else {
				response.sendRedirect("NewFile.jsp");
			}
			rs.close();
			ps.close();
			conexao.close();
			
		} catch (ClassNotFoundException | SQLException e) {
		
		}
		
		
	
	}

}
