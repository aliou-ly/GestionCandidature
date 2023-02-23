public with sharing class Candidat {
    private String nom;
    private String prenom;
    private String email;
    private Sexe sexe;
    private Date dateNaissance;
    private String telephone;
    private String lienLinkedin;
    private List<Formation> formations;
    private List<Certificat> certificats;
    private List<Experience> experiences;
    private List<Langue> langues;
    private Adresse addresse;

    public Candidat(Sexe sexe, String nom, String prenom, String email, String telephone, Adresse adresse) {
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.telephone = telephone;
        this.sexe = sexe;
        this.addresse = adresse;

        this.experiences = new List<Experience>();
        this.formations = new List<Formation>();
        this.certificats = new List<Certificat>();
        this.langues = new List<Langue>();
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Sexe getSexe() {
        return sexe;
    }

    public void setSexe(Sexe sexe) {
        this.sexe = sexe;
    }

    public Date getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getLienLinkedin() {
        return lienLinkedin;
    }

    public void setLienLinkedin(String lienLinkedin) {
        this.lienLinkedin = lienLinkedin;
    }

    public List<Formation> getFormations() {
        return formations;
    }

    public void setFormations(List<Formation> formations) {
        this.formations = formations;
    }

    public List<Certificat> getCertificats() {
        return certificats;
    }

    public void setCertificats(List<Certificat> certificats) {
        this.certificats = certificats;
    }

    public List<Experience> getExperiences() {
        return experiences;
    }

    public void setExperiences(List<Experience> experiences) {
        this.experiences = experiences;
    }

    public List<Langue> getLangues() {
        return langues;
    }

    public void setLangues(List<Langue> langues) {
        this.langues = langues;
    }

    public Adresse getAddresse() {
        return addresse;
    }

    public void setAddresse(Adresse addresse) {
        this.addresse = addresse;
    }
}
