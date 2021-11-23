/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unicundi.proyectodc.controller;

import co.edu.unicundi.proyectocdejb.enity.Venta;
import co.edu.unicundi.proyectocdejb.exception.RecursoNoEncontrado;
import co.edu.unicundi.proyectocdejb.service.IVentaService;
import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * @author asantibo
 */
@Path("venta")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class VentaController {

    @EJB
    private IVentaService service;

    @Path("agregarVenta")
    @POST
    public Response registrarventa(Venta nuevo) throws RecursoNoEncontrado {

        this.service.agregar(nuevo);
        System.out.println("Registro de venta servicio");
        return Response.status(Response.Status.CREATED).build();
    }

    @Path("agregarAlCarrito")
    @POST
    public Response datosagregarAlCarrito(Venta nuevo) throws RecursoNoEncontrado {
        Object obj = new Object();
        obj = this.service.agregarCarrito(nuevo);
        System.out.println("Registro de agregar al carrito");
        return Response.status(Response.Status.OK).entity(obj).build();
    }

}
