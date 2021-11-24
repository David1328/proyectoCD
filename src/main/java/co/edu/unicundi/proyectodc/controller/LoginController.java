/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unicundi.proyectodc.controller;

import co.edu.unicundi.proyectocdejb.dto.TokenDto;
import co.edu.unicundi.proyectocdejb.enity.Admin;
import co.edu.unicundi.proyectocdejb.enity.AuditoriaToken;
import co.edu.unicundi.proyectocdejb.exception.ExceptionNoAutorizado;
import co.edu.unicundi.proyectocdejb.service.IAdminService;
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
@Path("login")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class LoginController {

    @EJB
    private IAdminService service;

    @Path("token")
    @POST
    public Response ingresoLogin(Admin datosE) throws ExceptionNoAutorizado, Exception {

        TokenDto token = new TokenDto();
        token.setToken((this.service.login(datosE)));
        AuditoriaToken auditoria = new AuditoriaToken();
        auditoria.setToken(token.getToken());
        System.out.println(auditoria.getToken());
        System.out.println("Ingreso Login");
        return Response.status(Response.Status.OK).entity(token).build();
    }

}
