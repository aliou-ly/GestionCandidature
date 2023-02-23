/**
 * Created by incognito on 23/02/2023.
 */

public with sharing class Formation {
    private final String idFormation;
    private String diplome;
    private String etablissement;
    private Date dateDebut;
    private Date dateFin;
    private String description;
    private String niveau;

    public Formation(String diplome, String etablissement, Date debut, Date fin, String description, String niveau) {

        if (fin < debut) {
            throw new DateFormatException('La date de fin est antérieur à la date de début'); }
        this.diplome = diplome;
        this.etablissement = etablissement;
        this.description = description;
        this.niveau = niveau;
        this.dateDebut = debut;
        this.dateDebut = fin;
    }

    public String getDiplome() { return diplome;}
    public String getEtabliseement() { return etablissement;}

    public String getDescription() { return description;}
    public String niveau() { return niveau;}
    public Date getDateDebut() { return dateDebut;}
    public Date getDateFin() { return dateFin;}

    public void setDiplome(String diplome ) { this.diplome = diplome; }
    public void setEtablissement(String etablissement) { this.etablissement = etablissement; }
    public void setDescription(String description) { this.description = description; }
    public void setNiveau(String niveau) { this.niveau = niveau; }
    public void setDateDebut(Date dateDebut) { this.dateDebut = dateDebut; }
    public void setDateFin(Date dateFin) { this.dateFin = dateFin; }

}