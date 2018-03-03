

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
 * Servlet implementation class ProcessoTeste
 */
@WebServlet("/processo")
public class ProcessoTeste extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessoTeste() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//recuperar os parametros
		
		
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
				out.println("<html><header><title> Resposta </title></header> <body>Seu nome completo é" + nomeCompleto + "e seu texto "  + text1 +  "sua idade é " + idade1 + "</body></html>");
			
	}

}
