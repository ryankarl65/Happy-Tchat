/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.formation.tchat.ejb;

import javax.ejb.Remote;
import java.util.List;

/**
 * @author ryank
 */

@Remote
public interface RemoteInterface {

    List<String> getMessages();

    void setMessage(String msg);

}
