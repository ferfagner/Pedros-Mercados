

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.jrockit.jfr.openmbean.ProducerDescriptorType;

/**
 * Servlet implementation class Podutosmercado
 */
@WebServlet("/Podutosmercado")
public class Podutosmercado extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Podutosmercado() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		 response.sendRedirect("logado.jsp");
		
		
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
		String pr = "select codigo, descricao, fabricante, preco from product ";
			
	
			// praparar sql para envio ao DBA
			PreparedStatement pro = conexao.prepareStatement(pr);
			
			//utilizar valor do BDA
			
			
			
			
			
			//execultando sql
			ResultSet rs = pro.executeQuery();
			while(rs.next()) {
				ProdutosMerc prd =  new ProdutosMerc(rs.getString("codigo"), rs.getString("descricao"), rs.getString("fabricante"), rs.getInt("preco"));
				request.setAttribute("codigo", prd);
				
			}
		
			
			
				
			rs.close();
			pro.close();
			conexao.close();
			
			
		} catch (ClassNotFoundException | SQLException e) {
		
		}
		
	}

}
