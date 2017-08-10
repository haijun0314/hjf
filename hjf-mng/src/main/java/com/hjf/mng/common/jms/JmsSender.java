package com.hjf.mng.common.jms;

import javax.annotation.Resource;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

import org.apache.log4j.Logger;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

import com.hjf.base.LogUtil;
@Service
public class JmsSender {
	@Resource private JmsTemplate jmsTemplate;
	Logger log=LogUtil.getLogger();
    public void sendMessage(Destination destination,final String msg){
    	log.info(" 向队列"+destination.toString()+"发送消息---------------------->"+msg);
        jmsTemplate.send(destination, new MessageCreator() {
            public Message createMessage(Session session) throws JMSException {
                return session.createTextMessage(msg);
            }
        });
    }

    public void sendMessage(final String msg){
    	Destination destination = jmsTemplate.getDefaultDestination();
        log.info(" 向队列"+destination.toString()+"发送消息---------------------->"+msg);
        jmsTemplate.send(new MessageCreator() {
            public Message createMessage(Session session) throws JMSException {
                return session.createTextMessage(msg);
            }
        });
    }
	    
}
