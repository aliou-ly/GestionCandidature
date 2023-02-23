/**
 * Created by incognito on 23/02/2023.
 */

@IsTest
private class CompetenceTest {
    @IsTest
    static void testBehavior() {
    }

    @IsTest
    static void testGetId() {
        Competence c = new Competence('001', 'Java');
        System.assertEquals('001', c.getId());
    }

    @IsTest
    static void testGetLibelle() {
        Competence c = new Competence('001', 'Java');
        System.assertEquals('Java', c.getLibelle());
    }

    @IsTest
    static void testSetLibelle() {
        Competence c = new Competence('001', 'Java');
        c.setLibelle('Python');
        System.assertEquals('Python', c.getLibelle());
    }
}