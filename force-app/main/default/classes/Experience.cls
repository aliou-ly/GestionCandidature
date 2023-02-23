public with sharing class Experience {
    private String poste;
    private String entreprise;
    private String description;
    private Date dateDebut;
    private Date dateFin;

    public Experience(String poste, String entreprise, String description, Date debut, Date fin) {
        this.poste = poste;
        this.entreprise = entreprise;
        this.description = description;
        this.dateDebut = debut;
        this.dateFin = fin;
    }

    public String getPoste() {
        return poste;
    }

    public void setPoste(String poste) {
        this.poste = poste;
    }

    public String getEntreprise() {
        return entreprise;
    }

    public void setEntreprise(String entreprise) {
        this.entreprise = entreprise;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDateDebut() {
        return dateDebut;
    }

    public void setDateDebut(Date dateDebut) {
        this.dateDebut = dateDebut;
    }

    public Date getDateFin() {
        return dateFin;
    }

    public void setDateFin(Date dateFin) {
        this.dateFin = dateFin;
    }
}
