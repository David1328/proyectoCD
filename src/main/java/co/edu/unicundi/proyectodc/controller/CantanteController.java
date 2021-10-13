/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unicundi.proyectodc.controller;

import co.edu.unicundi.proyectocdejb.ICantanteService;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 *
 * @author David
 */
@Path("cantanteService")
public class CantanteController {
    
    private ICantanteService service;
    
    @Path("agregarCantante")
    @GET
    public void ingresarCantante(){
        System.out.println("Ingreso Primer servicio");
    }
    
}
