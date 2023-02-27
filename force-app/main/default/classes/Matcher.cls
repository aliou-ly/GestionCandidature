/**
 * Created by incognito on 23/02/2023.
 */

public with sharing class Matcher {


    public Double scoreSimularite(Set<Competence> cmpCand, Set<Competence> cmpOff) {

        Double intersection = 0;
        Double union = 1;

        for (Competence cp : cmpOff) {
           union += Double.valueOf(cp.getNiveau());
            for (Competence cp1: cmpCand) {

                if (find(cp.getLibelle(),cp1.getLibelle())) {
                    intersection += Double.valueOf(cp.getNiveau());
                } else {
                    union += cp1.getNiveau();
                }
            }
        }

        Decimal similarityScore = Decimal.valueOf(intersection / union);
        return similarityScore;
    }
    public Boolean find(String str1, String str2) {
        //String str1 = cmp1.getLibelle(),
          //      str2 = cmp2.getLibelle();
        Boolean lengthComparator  = str1.length() < str2.length();

        Double length = lengthComparator?
                str2.length():str1.length();
        Double pourcentage  = 0.3;
        Double levenshtein = Utils.levenshteinDistance(str1,str2);

        Boolean match = (levenshtein) < (length*pourcentage);
        return match;
    }

}