package br.com.rchlo.store.domain;

import javax.persistence.Embeddable;

@Embeddable
public class Card {

    private String clientName;
    private String number;
    private String expiration;
    private String verificationCode;

}
