package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;

import java.awt.geom.QuadCurve2D;

public class JavaStepDefs {
    @And("I say {string}")
    public void iSay(String text) {
        System.out.println(text);
    }

    @And("I perform actions with {string} and {string}")
    public void iPerformActionsWithAnd(String str1, String str2) {
        System.out.println("String1= " + str1);
        System.out.println("String2= " + str2);
        System.out.println(str1.toUpperCase());
        System.out.println(str2.toUpperCase());
        System.out.println(str1.length());
        System.out.println(str2.length());
        System.out.println(str1.equals(str2));
        System.out.println(str1.equalsIgnoreCase(str2));
        System.out.println(str1.contains(str2));
    }

    @And("I print if number {int} is positive")
    public void iPrintIfNumberIsPositive(int number) {
        if (number == 35) {
            System.out.println("Number " + number + " is positive");
        } else if (number < 0) {
            System.out.println("Number " + number + " is negative");
        }
    }

    @And("I print {int} th day of week")
    public void iPrintThDayOfWeek(int day) {
        if (day == 1) {
            System.out.println("Monday");
        } else if (day == 2) {
            System.out.println("Tuesday");
        } else if (day == 3) {
            System.out.println("Wednesday");
        } else if (day == 4) {
            System.out.println("Thursday");
        } else if (day == 5) {
            System.out.println("Friday");
        } else if (day == 6) {
            System.out.println("Saturday");
        } else {
            System.out.println("Sunday");
        }
    }

    @And("I calculate numbers")
    public void iCalculateNumbers() {
        int a = 10;
        int b = 3;
        float c = 3f;
        System.out.println(a / b);
        System.out.println(a / c);
        // dividing int by int will give us an int; dividing int by float will give us a float
        int num1 = 1220;
        int num2 = 36;
        int sum = num1 + num2;
        int difference = num1 - num2;
        int quotient = num1 / num2;
        int product = num1 * num2;
        System.out.println(sum);
        System.out.println(difference);
        System.out.println(quotient);
        System.out.println(product);
        String favoriteColor = "Black";
        String notFavoriteColor = "White";
        System.out.println(favoriteColor == notFavoriteColor);
    }

    @And("I print url for {string} page")
    public void iPrintUrlForPage(String site) {
        switch (site) {
            case "yahoo":
                System.out.println("https://www.yahoo.com/");
                break;
            case "google":
                System.out.println("https://www.google.com/");
                break;
            case "amazon":
                System.out.println("https://www.amazon.com/");
                break;
            default:
                System.out.println("Unsupported page: " + site);
        }
    }

    @And("I do exercises with arrays")
    public void iDoExercisesWithArrays() {
        String [] groceryList = {"apple", "banana", "pear", "strawberry"};
        System.out.println(groceryList);
        //when I print out the array using System.out.println, I get [Ljava.lang.String;@1fa268de which is the array's address in memeory stack
        System.out.println(groceryList [0]);
        // index [0] is "apple", because arrays have zero-based indexing
        System.out.println(groceryList [2]);
        // index [2] is pear, because it's a third item in the index
    }
}
