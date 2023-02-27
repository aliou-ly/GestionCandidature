@IsTest
public class MatcherTest {

    @IsTest
    static void testScoreSimularite() {
        // Créer des compétences pour le candidat
        Competence c1 = new Competence('1', 'Java');
        c1.setNiveau(5);
        Competence c2 = new Competence('2', 'Salesforce');
        c2.setNiveau(3);
        Set<Competence> competencesCand = new Set<Competence>{c1, c2};

        // Créer des compétences pour l'offre
        Competence c3 = new Competence('3', 'Java');
        c3.setNiveau(4);
        Competence c4 = new Competence('4', 'SQL');
        c4.setNiveau(2);
        Set<Competence> competencesOff = new Set<Competence>{c3, c4};

        // Vérifier que le score est correct
        Matcher matcher = new Matcher();
        Decimal expectedScore = Decimal.valueOf(9/16);
        Decimal actualScore = matcher.scoreSimularite(competencesCand, competencesOff);
        System.assertEquals(expectedScore, actualScore);
    }

    @IsTest
    static void testFind() {
        Matcher matcher = new Matcher();
        Boolean match1 = matcher.find('Java', 'Jva');
        System.assertEquals(true, match1);



        Boolean match3 = matcher.find('Salesforce', 'SalesForce');
        System.assertEquals(true, match3);

        Boolean match4 = matcher.find('Salesforce', 'Salesforce Lightning');
        System.assertEquals(false, match4);

        Boolean match5 = matcher.find('Salesforce', 'Salesforce Einstein');
        System.assertEquals(false, match5);

        Boolean match6 = matcher.find('Salesforce', 'Salesforce Einstein Analytics');
        System.assertEquals(false, match6);
    }
}