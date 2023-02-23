/**
 * Created by incognito on 23/02/2023.
 */

public with sharing class Utils {

    public static Integer levenshteinDistance(String str1, String str2) {
        Integer[] current = new Integer[str2.length() + 1];
        Integer[] previous = new Integer[str2.length() + 1];

        for (Integer j = 0; j < previous.size(); j++) {
            previous[j] = j;
        }

        for (Integer i = 1; i <= str1.length(); i++) {
            current[0] = i;
            for (Integer j = 1; j <= str2.length(); j++) {
                Integer substitutionCost = 1;
                if (str1.charAt(i - 1) == str2.charAt(j - 1)) {
                    substitutionCost = 0;
                }
                current[j] = Math.min(Math.min(current[j - 1] + 1, previous[j] + 1), previous[j - 1] + substitutionCost);
            }
            Integer[] temp = previous;
            previous = current;
            current = temp;
        }

        return previous[str2.length()];
    }


}