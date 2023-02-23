/**
 * Created by incognito on 23/02/2023.
 */

@IsTest
private class FormationTest {

    @isTest
    static void testFormationCreation() {
        // Création d'une formation avec des valeurs aléatoires
        String diplome = 'Diplôme ' + Datetime.now().getTime();
        String etablissement = 'Établissement ' + Datetime.now().getTime();
        Date debut = Date.today().addDays(-30);
        Date fin = Date.today();
        String description = 'Description ' + Datetime.now().getTime();
        String niveau = 'Niveau ' + Datetime.now().getTime();
        Formation f = new Formation(diplome, etablissement, debut, fin, description, niveau);

        // Vérification des propriétés de la formation
        System.assertEquals(diplome, f.getDiplome());
        System.assertEquals(etablissement, f.getEtabliseement());
        System.assertEquals(description, f.getDescription());
        System.assertEquals(niveau, f.niveau());
        System.assertEquals(debut, f.getDateDebut());
        System.assertEquals(fin, f.getDateFin());
    }

    @isTest
    static void testFormationDates() {
        // Création d'une formation avec des dates de début et de fin inversées
        Date debut = Date.today().addDays(30);
        Date fin = Date.today();
        try {
            Formation f = new Formation('Diplôme', 'Établissement', debut, fin, 'Description', 'Niveau');
            System.assert(false, 'Une exception de type FormationException aurait dû être levée');
        } catch (DateFormatException e) {
            // Vérification du message d'erreur
            System.assertEquals('La date de fin doit être postérieure à la date de début',e.getMessage());
        }
    }
    @IsTest
    static void testBehavior() {
    }
}