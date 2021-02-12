/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.formation.tchat.ejb;

import fr.formation.tchat.Models.Message;

import javax.ejb.Stateless;
import java.util.List;

/**
 * @author ryank
 */
@Stateless
public class RemoteImpl implements RemoteInterface {

    @Override
    public List<String> getMessages() {
        return Message.msg;
    }

    @Override
    public void setMessage(String msg) {
        Message.msg.add(msg);
    }

}
