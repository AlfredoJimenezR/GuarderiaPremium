package Cliente;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class AlumnosProfe {

	public void Buscar() {
		final String Host = "127.0.0.1";
        final int Puerto = 6500;
		
        try {
            Socket socket = new Socket(Host, Puerto);
            //Canal de entrada
            DataInputStream Recibe = new DataInputStream(socket.getInputStream());

            //Canal Salida
            OutputStream flujoS = socket.getOutputStream();
            DataOutputStream Salida = new DataOutputStream(flujoS);
            //Creamos consulta y lista para enviar al server
            String Consulta = "BuscarAlumn";
            
            //Enviar mensaje
            Salida.writeUTF(Consulta);
            //Mensajes a leer del server
            String Matricula = Recibe.readUTF();
            String Name = Recibe.readUTF();
            String Group = Recibe.readUTF();
            String AgeN = Recibe.readUTF();

            //Listas para separar recibida del cliente
            List<String> Mat = new ArrayList<>(Arrays.asList(Matricula.split(",")));
            List<String> Nom = new ArrayList<>(Arrays.asList(Name.split(",")));
            List<String> Grup = new ArrayList<>(Arrays.asList(Group.split(",")));
            List<String> Edad = new ArrayList<>(Arrays.asList(AgeN.split(",")));
            
            //Listas Permanentes de los datos
            DatosAlumnos dat = DatosAlumnos.getInstance();
            //Eliminarmos cualquier dato que puedan tener las listas
            dat.deleteMatricula();
            dat.deleteNombre();
            dat.deleteEdad();
            dat.deleteGrupo();
            //Cerramos lineas de llegada y salida
            Recibe.close();
            Salida.close();
            
            for(int i = 0; i < Mat.size(); i++) {
            	dat.addMat(Mat.get(i));
            	dat.addNom(Nom.get(i));
            	dat.addEdad(Edad.get(i));
            	dat.addGrupo(Grup.get(i));
            }
            
            socket.close();
      
        } catch (IOException e) {
           System.out.println(e);
        }
	}
}
