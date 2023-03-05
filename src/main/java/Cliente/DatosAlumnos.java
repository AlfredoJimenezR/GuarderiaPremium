package Cliente;

import java.util.ArrayList;
import java.util.List;

public enum DatosAlumnos {
	INSTANCE;
    public final List<String> Matricula = new ArrayList<>();
    public final List<String> Nombre = new ArrayList<>();
    public final List<String> Edad = new ArrayList<>();
    public final List<String> Grupo = new ArrayList<>();

    public static DatosAlumnos getInstance(){
        return INSTANCE;
    }    
    //Matricula
    public List<String> getMatricula(){
        return Matricula;
    }
    public void addMat(String Datos1) {
    	Matricula.add(Datos1);
    }
    public int TamañoMat(){
        return Matricula.size();
    }
    public String RecorreMat(int i){
        return Matricula.get(i);
    }
    public void deleteMatricula(){
    	Matricula.clear();
    }
    //Nombre
    public List<String> getNombre(){
        return Nombre;
    }
    public void addNom(String Datos2) {
    	Nombre.add(Datos2);
    }
    public int TamañoNom(){
        return Nombre.size();
    }
    public String RecorreNom(int i){
        return Nombre.get(i);
    }
    public void deleteNombre(){
    	Nombre.clear();
    }
    //Edad
    public List<String> getEdad(){
        return Edad;
    }
    public void addEdad(String Datos3) {
    	Edad.add(Datos3);
    }
    public int TamañoEdad(){
        return Edad.size();
    }
    public String RecorreEdad(int i){
        return Edad.get(i);
    }
    public void deleteEdad(){
    	Edad.clear();
    }
    //Grupo
    public List<String> getGrupo(){
        return Grupo;
    }
    public void addGrupo(String Datos4) {
    	Grupo.add(Datos4);
    }
    public int TamañoGrupo(){
        return Grupo.size();
    }
    public String RecorreGrupo(int i){
        return Grupo.get(i);
    }
    public void deleteGrupo(){
    	Grupo.clear();
    }
}
