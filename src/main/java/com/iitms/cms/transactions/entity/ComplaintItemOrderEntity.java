package com.iitms.cms.transactions.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "COMPLAINT_ITEMORDER")
public class ComplaintItemOrderEntity  implements Serializable{
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
   @Column(name="\"ORDERID\"")
	private int ORDERID;

	public int getORDERID() {
		return ORDERID;
	}

	public void setORDERID(int oRDERID) {
		ORDERID = oRDERID;
	}
	
}
