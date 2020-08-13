package definitions;

import cucumber.api.java.en.And;

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
}
