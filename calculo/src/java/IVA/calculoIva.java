/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package IVA;
import javax.ejb.Stateless;
import javax.jws.WebParam;
import javax.jws.WebService;

@Stateless
@WebService(serviceName = "iva")

public class calculoIva implements operaciones{
    @Override
    public double calculo(@WebParam(name = "calculo") double num){
        return num*1.19;
    }
}
