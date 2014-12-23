/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ia.project.mmm.service;

import ia.project.mmm.model.Message;
import ia.project.mmm.model.UserInfo;

/**
 * dummy implementation for IMessageService
 * @author Mohamed Kamal
 */
public class DummyImplMessageService implements IMessageService {

    @Override
    public Message getMessageById(int messageId) {
        UserInfo[] arr2 = new UserInfo[1];
        arr2[0] = new UserInfo("komalo", "mohamed kamal");

        return new Message(1, arr2, new UserInfo("mohsen", "mahmoud mohsen"), "subject in inbox", "sadsdadsads adsdsa\nads ads sd ads ads \ndsa adssaddassadsadsad\n");
    }

    @Override
    public Message[] getInboxOf(String username) {
        Message[] arr = new Message[2];

        UserInfo[] arr2 = new UserInfo[1];
        arr2[0] = new UserInfo("komalo", "mohamed kamal");

        arr[0] = new Message(1, arr2, new UserInfo("mohsen", "mahmoud mohsen"), "subject in inbox", "body");
        arr[1] = new Message(1, arr2, new UserInfo("mohsen", "mahmoud mohsen"), "subject in inbox", "body");
        return arr;
    }

    @Override
    public Message[] getSentOf(String username) {
        Message[] arr = new Message[2];

        UserInfo[] arr2 = new UserInfo[1];
        arr2[0] = new UserInfo("komalo", "mohamed kamal");

        arr[0] = new Message(1, arr2, new UserInfo("mohsen", "mahmoud mohsen"), "subject in sent", "body");
        arr[1] = new Message(1, arr2, new UserInfo("mohsen", "mahmoud mohsen"), "subject in sent", "body");
        return arr;
    }

    @Override
    public Message[] getDraftsOf(String username) {
        Message[] arr = new Message[2];

        UserInfo[] arr2 = new UserInfo[1];
        arr2[0] = new UserInfo("komalo", "mohamed kamal");

        arr[0] = new Message(1, arr2, new UserInfo("mohsen", "mahmoud mohsen"), "subject in drafts", "body");
        arr[1] = new Message(1, arr2, new UserInfo("mohsen", "mahmoud mohsen"), "subject in drafts", "body");
        return arr;
    }

    @Override
    public Message[] getTrashOf(String username) {
        Message[] arr = new Message[2];

        UserInfo[] arr2 = new UserInfo[1];
        arr2[0] = new UserInfo("komalo", "mohamed kamal");

        arr[0] = new Message(1, arr2, new UserInfo("mohsen", "mahmoud mohsen"), "subject in trash", "body");
        arr[1] = new Message(1, arr2, new UserInfo("mohsen", "mahmoud mohsen"), "subject in trash", "body");
        return arr;
    }

    @Override
    public String[] sendMessage(String senderUsername, String[] receiversUsernames, String subject, String body) {
        return new String[0];
    }

}