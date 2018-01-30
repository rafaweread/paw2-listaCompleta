/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import dominio.Lider;
import java.util.ArrayList;

/**
 *
 * @author Rafael
 */
public class LiderBD {
    
    private static ArrayList<Lider> lista = new ArrayList<Lider>();
    
    public static void inserir(Lider novoLider){
        
        lista.add(novoLider);
    }
    
    public static void alterar(Lider liderAlterado){
        
        excluir(liderAlterado.getCpf());
        inserir(liderAlterado);
    }
    
    public static void excluir(String cpf){
        for(int i=0; i < lista.size(); i++){ //For pega toda a lista de lideres
            Lider cadaLider = lista.get(i);
            if(cadaLider.getCpf().equals(cpf)){ //Compara cadaLider com o que queremos excluir
                lista.remove(i);
                break;
            }
        }
        
    }
    
    public static ArrayList<Lider> listar(){
        return lista;
    
    }
}
