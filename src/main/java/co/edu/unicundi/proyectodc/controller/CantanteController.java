/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unicundi.proyectodc.controller;

import co.edu.unicundi.proyectocdejb.service.ICantanteService;
import co.edu.unicundi.proyectocdejb.enity.Cantante;
import java.util.ArrayList;
import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * @author David
 */
@Path("cantanteService")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class CantanteController {
    
    
    @EJB
    private ICantanteService service;
    
    @Path("agregarCantante")
    @POST
    public Response ingresarCantante(Cantante nuevo){
        this.service.agregar(nuevo);
        System.out.println("Ingreso Primer servicio");
        return Response.status(Response.Status.CREATED).build();
    }
    
    @Path("cantantes")
    @GET
    public Response obtenerCantantes(){
        System.out.println("Servicio 2");
        ArrayList<Cantante> lCantantes = new ArrayList<>();
        return Response.status(Response.Status.OK).entity(lCantantes).build();
    }
    
}
