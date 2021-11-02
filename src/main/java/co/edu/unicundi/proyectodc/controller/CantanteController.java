/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unicundi.proyectodc.controller;

import co.edu.unicundi.proyectocdejb.service.ICantanteService;
import co.edu.unicundi.proyectocdejb.enity.Cantante;
import java.util.List;
import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
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
        return Response.status(Response.Status.OK).build();
        //return Response.status(Response.Status.CREATED).build();
    }
    
    @Path("cantantes")
    @GET
    public Response obtenerCantantes(){
        System.out.println("Servicio para la lista");
        List<Cantante> lCantantes;
        lCantantes =  this.service.listarCantantes();
        System.out.println("primer"+lCantantes.get(0).getNombre());
        return Response.status(Response.Status.OK).entity(lCantantes).build();
    }
    
    @Path("eliminarCantante/{idCantante}")
    @DELETE
    public Response eliminarCantante(@PathParam("idCantante") int id){
        this.service.elminarCantanteId(id);
        return Response.status(Response.Status.NO_CONTENT).build();
    }
    @Path("actualizarCantante")
    @PUT
    public Response actualizarCantante(Cantante actualizarCantante){
        this.service.actualizarCantante(actualizarCantante);
        return Response.status(Response.Status.OK).build();
    }
    @Path("cantantePorId/{idCantante}")
    @GET
    public Response buscarCantantePorId(@PathParam("idCantante")int idCantante){
        this.service.listarCantantePorId(idCantante);
        return Response.status(Response.Status.OK).entity(this.service.listarCantantePorId(idCantante)).build();
    }
    
}
