package Servidor;

import java.io.IOException;
import java.net.*;

public class Servidor {

    public static void main(String[] args) {
        ServerSocket svSocket = null;
        Socket socketClient = null;
        try {
            final int port = 6500;
            svSocket = new ServerSocket(port); //Creamos socket del server
            
            while (true) {
                // Establecemos un timeout de 30 segs
                // Esperamos posibles conexiones
                System.out.println("Iniciado");
                socketClient = svSocket.accept();
                // Creamos un objeto ThreadServidor, pasándole la nueva conexión
                Thread ejecutarServer = new Thread(new serverConnection(socketClient));
                // Iniciamos su ejecución con el método start()
                ejecutarServer.start();
                
            }
            
        } catch (IOException e) {
            System.err.println("Error: " + e.getMessage());
        } finally {
            try {
                //Cerramos el socket del servidor
                svSocket.close();
            } catch (Exception e) {
            }
        }

    }
}
