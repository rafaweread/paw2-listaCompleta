/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import dominio.Romaria;
import java.util.ArrayList;

/**
 *
 * @author Rafael
 */
public class RomariaBD {
    
    private static ArrayList<Romaria> lista = new ArrayList<Romaria>();
    
    public static void inserir(Romaria novaRomaria){
        
        lista.add(novaRomaria);
    }
    
    public static void alterar(Romaria romariaAlterada){
        
        excluir(romariaAlterada.getCodigo());
        inserir(romariaAlterada);
    }
    
    public static void excluir(int codigo){
        for(int i=0; i < lista.size(); i++){ //For pega toda a lista de lideres.
            Romaria cadaRomaria = lista.get(i);
            if(cadaRomaria.getCodigo() == codigo){ //Compara cadaLider com o que queremos excluir. Obs: .equal usado para comparar String e == para int normal
                lista.remove(i);
                break;
            }
        }
        
    }
    
    public static ArrayList<Romaria> listar(){
        return lista;
    
    }
    
}
