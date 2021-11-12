/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unicundi.proyectodc.controller;


import co.edu.unicundi.proyectocdejb.enity.Disco;
import co.edu.unicundi.proyectocdejb.service.IDiscoService;
import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * @author David
 */
@Path("discoService")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class DiscoController {
    
    @EJB
    private IDiscoService service;
    
    @Path("obtenerListaDiscos")
    @GET
    public Response obtenerDiscos(){
        System.out.println("Servicio para obtener todos los discos");
        return Response.status(Response.Status.OK).entity(this.service.listarDiscos()).build();
    }
    
    @Path("agregarDisco")
    @POST
    public Response agregarDisco(Disco nuevoDisco){
        System.out.println("Servicio para agregar Disco");
        this.service.agregarDisco(nuevoDisco);
        return Response.status(Response.Status.CREATED).build();
    }
    
    
    @Path("actualizarDisco")
    @PUT
    public Response actualizarDisco(){
        System.out.println("ActualizarDatos");
        return Response.status(Response.Status.OK).build();
    }
}
