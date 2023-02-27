/**
 * Created by incognito on 23/02/2023.
 */

public with sharing class Competence {
    private final String idCompetence;
    private String libelle;
    private Integer niveau;

    public Competence(String id, String libelle) {
        this.idCompetence = id;
        this.libelle = libelle;
    }

    public String getId() { return idCompetence; }

    public String getLibelle() { return libelle;}

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public void setNiveau(Integer niveau) {
        this.niveau = niveau;
    }

    public Integer getNiveau() { return niveau; }
}