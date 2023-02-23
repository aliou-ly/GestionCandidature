/**
 * Created by incognito on 23/02/2023.
 */

public with sharing class Certificat {
    private String libelle;
    private Date dateObtention;
    private String nomOrganisme;

    public Certificat(String libelle, String organisme, Date obtention) {
        this.libelle = libelle;
        this.nomOrganisme = organisme;
    }

    public String getLibelle() { return  libelle;}
    public Date getDateObtention() { return dateObtention;}

    public String getOrganisme() {return nomOrganisme;}
}