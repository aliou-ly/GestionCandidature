/**
 * Created by incognito on 23/02/2023.
 */

public with sharing class Adresse {
    private String rue;
    private String ville;
    private String pays;
    private Integer codePostal;

    public Adresse(String rue,String ville,Integer codePostal, String pays) {
        this.codePostal = codePostal;
        this.pays = pays;
        this.rue = rue;
        this.ville = ville;
    }

    public String getRue() { return rue;}
    public String getVille() {return ville;}
    public String getPays() { return pays;}
    public integer getCodePostal() { return codePostal; }

    public void setCodePostal(Integer codePostal) {
        this.codePostal = codePostal;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public void setPays(String pays) {
        this.pays = pays;
    }

}