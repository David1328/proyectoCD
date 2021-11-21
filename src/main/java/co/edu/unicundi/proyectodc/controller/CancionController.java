/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unicundi.proyectodc.controller;

import co.edu.unicundi.proyectocdejb.enity.Cancion;
import co.edu.unicundi.proyectocdejb.exception.RecursoNoEncontrado;
import co.edu.unicundi.proyectocdejb.service.ICancionService;
import java.util.List;
import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * @author asantibo
 */
@Path("cancion")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class CancionController {

    @EJB
    private ICancionService service;

    @Path("agregarCancion")
    @POST
    public Response ingresarCancion(Cancion nuevo) throws RecursoNoEncontrado {

        this.service.agregar(nuevo);
        System.out.println("Ingreso de cancion servicio");
        return Response.status(Response.Status.CREATED).build();
    }

    @Path("listarCancionPorArtistaAutor/{artista_productor}")
    @GET
    public Response listarCancionPorArtistaAutor(@PathParam("artista_productor") String artista_productor) throws RecursoNoEncontrado {
        System.out.println("Servicio para la lista de canciones por autor");
        List<Cancion> lCanciones;
        lCanciones = this.service.listarCancionPorArtistaAutor(artista_productor);
        return Response.status(Response.Status.OK).entity(lCanciones).build();
    }

    @Path("listarCancionPorNombre/{nombre}")
    @GET
    public Response listarCancionPorNombre(@PathParam("nombre") String nombre) throws RecursoNoEncontrado {
        System.out.println("Servicio para la lista de canciones por nombre");
        List<Cancion> lCanciones;
        lCanciones = this.service.listarCancionPorNombre(nombre);
        return Response.status(Response.Status.OK).entity(lCanciones).build();
    }
    
    @Path("listarCancionPorAlbum/{id_album}")
    @GET
    public Response listarCancionPorAlbum(@PathParam("id_album") int id_album) throws RecursoNoEncontrado {
        System.out.println("Servicio para la lista de canciones por album");
        List<Cancion> lCanciones;
        lCanciones = this.service.listarCancionPorAlbum(id_album);
        return Response.status(Response.Status.OK).entity(lCanciones).build();
    }
}
