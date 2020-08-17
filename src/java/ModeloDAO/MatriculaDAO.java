package ModeloDAO;

import Config.bd.ConectaBd;
import Interfaces.CRUD;
import Modelo.Matricula;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MatriculaDAO implements CRUD{
    ConectaBd cn = new ConectaBd();
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Matricula e = new Matricula();


    public List listarmatricula() {
        ArrayList<Matricula> matriculas = new ArrayList<>();
        String consulta = " select * "
                        + "from matricula ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                Matricula matricula = new Matricula();
                matricula.setIdmatricula(rs.getInt("idmatricula"));
                matricula.setSemestre(rs.getString("semestre"));
                matricula.setCiclo(rs.getString("ciclo"));
                matricula.setEstado(rs.getString("estado"));
                matricula.setId_curso(rs.getString("id_curso"));
                matricula.setId_estudiante(rs.getString("id_estudiante"));
                matricula.setId_carrera(rs.getString("id_carrera"));
                matriculas.add(matricula);
            }
        } catch (Exception e) {
            
        }
        return matriculas;
    }

    @Override
    public Matricula buscarmatricula(int idmatricula) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean agregarmatricula(Matricula matricula) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean editarmatricula(Matricula matricula) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarmatricula(int idmatricula) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    

    
    

    

    
    
}
