package com.example.asr;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author andreadisst
 */
public class MessageToASRContent {
    
    String URL;
    String timestamp;
    String language;
    String incidentID;
    
    public MessageToASRContent(){
        
    }
    
    public MessageToASRContent(String URL, String timestamp, String language, String incidentID){
        this.URL = URL;
        this.timestamp = timestamp;
        this.language = language;
        this.incidentID = incidentID;
    }
    
}
