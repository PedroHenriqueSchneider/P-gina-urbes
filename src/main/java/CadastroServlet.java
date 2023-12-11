import java.io.IOException;
import java.io.PrintWriter;
import org.json.JSONArray;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastroservlet")
public class CadastroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] zonas = null; // Inicialize a variável zonas fora dos blocos condicionais
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		String evento = request.getParameter("evento");

		if (evento.equalsIgnoreCase("regiao")) {
			// Criar um array de strings com os valores desejados
			zonas = new String[] { "Zona Norte", "Zona Sul", "Zona Leste", "Zona Oeste" };
			// Transformar o array em um JSONArray
			JSONArray jsonArray = new JSONArray();
			for (String zona : zonas) {
				jsonArray.put(zona);
			}

			// Enviar a resposta JSON de volta para o cliente
			out.print(jsonArray.toString());
			out.flush();
		} else {
			String regiao = request.getParameter("regiao");
			if (regiao.equalsIgnoreCase("Zona Norte")) {
				zonas = new String[] { "AV. AMÉRICO FIGUEIREDO", "AV. SANTA CRUZ", "AV. ARMANDO PANNUNZIO",
						"AV. WASHINGTON LUIZ", "AV. GISELE CONSTANTINO", "AV. INDEPENDÊNCIA", "AV. GENERAL CARNEIRO", };
			} else if (regiao.equalsIgnoreCase("Zona Oeste")) {
				zonas = new String[] { "R. LEOPOLDO MACHADO", "R. SANTA CRUZ", "R. MAJOR JOÃO LÍCIO",
						"AV. JUSCELINO K. DE OLIVEIRA", "AV. MOREIRA CESAR", "PÇA. NOVE DE JULHO",
						"AV. ARMANDO PANNUNZIO", };
			} else if (regiao.equalsIgnoreCase("Zona Sul")) {
				zonas = new String[] { "AV. LUIZ FERRAZ DE SAMPAIO JUNIOR", "R. ARAÇOIABA", "R. DOM ANTÔNIO ALVARENGA",
						"VIADUTO JÂNIO DA SILVA QUADROS", "R. SANTA ROSÁLIA", "AV. DOM AGUIRRE",
						"AV. XV DE AGOSTO", };
			} else if (regiao.equalsIgnoreCase("Zona Leste")) {
				zonas = new String[] { "R. GENÉSIO RODRIGUES", "ESTRADA DINORAH ROSA", "AV. VINICIUS DE MORAES",
						"R. ROQUE NUNES", "R. JAMIR CAETANO DA SILVA", "R. MARCOS ANTONIO FERRAZR",
						"R. AMÉLIA DO ROSÁRIO GASPAR", };
			}
			// Transformar o array em um JSONArray
			JSONArray jsonArray = new JSONArray();
			for (String zona : zonas) {
				jsonArray.put(zona);
			}

			// Enviar a resposta JSON de volta para o cliente
			out.print(jsonArray.toString());
			out.flush();
		}

	}
}
