

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Teste
 */
@WebServlet("/teste")
public class Teste extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Teste() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");
		String idade = request.getParameter("dataDeNascimento");
		String texto = request.getParameter("texto");
		DateTimeFormatter formatar = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		
		String nomeCompleto = nome + " " + sobrenome;
		String text1 = texto;
		LocalDate date = LocalDate.parse(idade,formatar);
		
		int idade1 = Period.between(date, LocalDate.now()).getYears();
		
		
		PrintWriter out = response.getWriter();
				out.println("<html><header><title> Seu Nome </header>");
				out.println("<body>Seu nome completo é <h1> " + nomeCompleto );
				out.println("</h1> e seu texto "  + text1 +  "<h3>sua idade é " + idade1 +"</h3></body></html>");
	}

}
