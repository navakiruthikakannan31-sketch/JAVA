import java.util.*;

public class y {

    static String[] map = {
            "", "",
            "abc", "def", "ghi",
            "jkl", "mno", "pqrs",
            "tuv", "wxyz"
    };

    public static List<String> letterCombinations(String digits) {

        List<String> result = new ArrayList<>();

        if (digits == null || digits.length() == 0)
            return result;

        backtrack(digits, 0, "", result);
        return result;
    }

    private static void backtrack(String digits, int index,
                                  String current, List<String> result) {

        if (index == digits.length()) {
            result.add(current);
            return;
        }

        String letters = map[digits.charAt(index) - '0'];

        for (char ch : letters.toCharArray()) {
            backtrack(digits, index + 1, current + ch, result);
        } // ← closes for loop
    } // ← closes backtrack method

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        String digits = sc.next();

        List<String> ans = letterCombinations(digits);
        System.out.println(ans);

        sc.close();
    } // ← closes main

} // ← closes class
