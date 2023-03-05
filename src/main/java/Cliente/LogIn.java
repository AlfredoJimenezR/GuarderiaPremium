package Cliente;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Servlet implementation class LogIn
 */
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LogIn() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("Red.jsp?Respuesta=Datos incorrectos, por favor, inténtelo de nuevo").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		final String Host = "127.0.0.1";
		final int Puerto = 6500;

		Socket socket = null;

		try {
			String user = request.getParameter("user");
			String pass = request.getParameter("pass");
		
			socket = new Socket(Host, Puerto);

			// Canal de entrada
			DataInputStream Recibe = new DataInputStream(socket.getInputStream());

			// Canal Salida
			OutputStream flujoS = socket.getOutputStream();
			DataOutputStream Salida = new DataOutputStream(flujoS);

			List Envia = new ArrayList<>();
			Envia.add(user);
			Envia.add(pass);
			// Envíamos el mensaje
			Salida.writeUTF(String.join(",", Envia) + ",LogIn");
			// Esperamos respuesta
			String Mensaje = Recibe.readUTF();
			// Separamos todas las variables
			List<String> Desplegado = new ArrayList<>(Arrays.asList(Mensaje.split(",")));
			
			Recibe.close();
            Salida.close();
			
			for (int i = 0; i < Desplegado.size(); i++) {
			
				if (Desplegado.get(i).equals("Valido")) {
					
					HttpSession sesion = request.getSession();
					sesion.setAttribute("user", Desplegado.get(0));
					sesion.setAttribute("lvl", Desplegado.get(1));

					if (Integer.parseInt(Desplegado.get(1)) == 1) {
						request.getRequestDispatcher("Secretaria.jsp").forward(request, response);
					
					} else if (Integer.parseInt(Desplegado.get(1)) == 2) {
						request.getRequestDispatcher("Tutor.jsp").forward(request, response);

					} else {
						request.getRequestDispatcher("ProfesorI.jsp").forward(request, response);
					}
				} else if (Desplegado.get(i).equals("Datos_Incorrectos")){
					doGet(request, response);
				}

			}
			socket.close();
		} catch (IOException e) {
			System.out.print(e);
		}
	}

}
