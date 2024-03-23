import 'package:flutter/material.dart';
import 'package:gcoat_tutorial_session_1/pages/calculator.dart';
import 'package:gcoat_tutorial_session_1/pages/calculator2.dart';
import 'package:gcoat_tutorial_session_1/pages/experiment.dart';
import 'package:gcoat_tutorial_session_1/pages/input.dart';
import 'package:gcoat_tutorial_session_1/pages/todo.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'pages/counter.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('mybox');
  runApp(const DemoApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*
    VARIABLES:

    String name = "Amali Krigger";
    int age = 30;
    double pi = 3.14159;
    bool isAdult = true;
    var firstName = "Amali";
    var height = 60;
    var isTall = false;
    final String lastName;
    lastName = 'Krigger';
    const double radius = 5.0;
    print(name);
    print(age);
    print(pi);
    print(isAdult);
    print(firstName);
    print(height);
    print(isTall);
    print(lastName);
    print(radius);

    BASIC MATH OPERATORS:
    1 + 1 -> 2, add
    4 - 1 -> 3, subtract
    2 * 3 -> 6, multiply
    8 / 4 -> 2, divide
    9 % 4 -> 1, remainder
    5++ -> 6, increment by 1
    5-- -> 4, decrement by 1

    var addition = 2 + 3;
    print("Addition: " + addition.toString());
    var subtraction = 2 - 3;
    print("Subtraction: $subtraction");
    var multiplication = 2 * 3;
    print("Multiplication: $multiplication");
    var division = 5 / 2;
    print("Division: $division");
    var divisionInt = 5 ~/ 2;
    print("Division Int: $divisionInt");
    var modulus = 5 % 2;
    print("Modulus: $modulus");
    var increment = 5;
    increment++;
    print(increment);
    var decrement = 10;
    decrement--;
    print(decrement);
    increment += 5;
    print(increment);
    decrement -= 6;
    print(decrement);

    COMPARISON OPERATORS:
    5 == 5 -> true, EQUAL TO
    2 != 3 -> true, NOT EQUAL TO
    3 > 2 -> true, GREATER THAN
    3 < 2 -> false, LESS THAN
    5 >= 5 -> true, GREATER OR EQUAL TO
    3 <= 7 -> true, LESS OR EQUAL TO

    print("2 == 2: ${2 == 2}");
    print("2 != 2: ${2 != 3}");
    print("3 > 2: ${3 > 2}");
    print("2 < 3: ${2 < 3}");
    print("3 >= 3: ${3 >= 3}");
    print("2 <= 3: ${2 <= 3}");

    LOGICAL OPERATORS:

    AND operator, returns true if both sides are true
    isAdult && ( age > 18 ) -> return true

    OR operator, returns true if at least one side is true
    isAdult || ( age > 18 ) -> return true

    NOT operator, returns the opposite value
    !isAdult -> return false

    print("5 == 5 && 5 > 4: ${5 == 5 && 5 > 4}");
    print("6 == 5 || 2 < 8: ${6 == 5 || 2 < 8}");
    print("!isAdult: ${!isAdult}");

    CONTROL FLOW:

    IF STATEMENTS

    if (condition) {
      do something;
    }

    if (condition) {
      do something
    } else if (another condition) {
      do something else
    }

    if (condition) {
      do something
    } else {
      do something else
    }

    int age = 18;

    if (age >= 18) {
      print('You are eligible to vote. Make your voice heard!');
    }

    int number = -7;

    if (number > 0) {
      print('The number is positive.');
    } else {
      print('The number is non-positive, possibly zero or negative.');
    }

    int num = 8;

    if (num % 2 == 0) {
      print('The number is even.');
    } else {
      print('The number is odd.');
    }


    double temperature = 25.0;

    if (temperature < 0) {
      print('It\'s freezing cold! Stay warm.');
    }
    else if (temperature >= 0 && temperature < 20) {
      print('It\'s chilly, consider wearing a jacket.');
    } else {
      print('It\'s a pleasant day! Enjoy the weather.');
    }

    SWITCH STATEMENTS

    switch (expression) {
      case value:
        break;
      case value:
        break;
      default:
        break;
    }

    int dayNumber = 3;

    switch (dayNumber) {
      case 1:
        print('It\'s Monday!');
        break;
      case 2:
        print('It\'s Tuesday!');
        break;
      case 3:
        print('It\'s Wednesday!');
        break;
      case 4:
        print('It\'s Thursday!');
        break;
      case 5:
        print('It\'s Friday!');
        break;
      case 6:
        print('It\'s Saturday!');
        break;
      case 7:
        print('It\'s Sunday!');
        break;
      default:
        print('Invalid day number.');
    }

    FOR LOOPS

    for (initialization; condition; iteration) {}

    for (int i = 1; i <= 5; i++) {
      print(i);
    }
    - break -> break out of loop
    - continue -> skip current iteration

    WHILE LOOP

    int countDown = 5;
    while(i > 0) {
      print(countDown);
      i--;
    }

    FUNCTIONS/METHODS

    We can organize these blocks of code into functions so that we can reuse them easily.

    'void' means that the function returns nothing.

    void greet() {
      print("Hello, World!");
    }

    METHOD PARAMETERS

    void greet(String name) {
      print("Hello, $name");
      print("Hello, " + name);
    }

    greet("Steve");

    void greet(String name, int age) {
      print("Hello, $name, you are $age years old.");
      print("Hello, " + name + ",you are " + age + "years old.");
    }

    greet("Steve", 25);

    RETURN METHODS

    int add(int a, int b) {
      int sum = a + b;
      return sum;
    }

    var sum = add(8, 5);
    print(sum);

    DATA STRUCTURES

    LIST = Ordered and can have duplicates, position by index

    List numbers = [1, 2, 3];

    print(numbers[0]);
    // -> 1
    print(numbers[2]);
    // -> 2
    print(numbers[3]);
    // error

    void printNumbers() {
      for (int i = 0; i < numbers.length; i++) {
        print(numbers[i]);
      }
    }

    List<String> names = ["Amali", "Raydell", "Deshaun"];
    // names[0] -> Amali
    // names[1] -> Raydell
    // names[2] -> Deshaun

    print(numbers[0]);
    // -> Amali
    print(numbers[2]);
    // -> Deshaun
    print(numbers[3]);
    // error

    void printNames() {
      for (var name in names) {
        print(name);
      }
    }

    SET = Unordered and can't have duplicates, position by index
    Set<String> fruits = {'apple', 'banana', 'orange', 'kiwi'};
    fruits.add('grape');
    fruits.add('banana');
    fruits.remove('orange');
    print('Fruits: $fruits');

    MAP = Unordered, stored as key value pairs

    Map<String, dynamic> user = {
      'username': 'john_doe',
      'age': 25,
      'isStudent': true,
    };

    String username = user['username'];
    int age = user['age'];
    bool isStudent = user['isStudent'];

    print('User: $user');
    print('Username: $username, Age: $age, Is Student: $isStudent');

    NULL & NULL SAFETY

    String? name;

    name = 'John Doe';

    if (name != null) {
      print('Hello, $name!');
    } else {
      print('Name is null.');
    }

    NULL COALESCING

    print(name ?? "John Doe");
    int? number;
    var sum = number! + 5;
    print(sum);

    List<int>? numbers1 = [1, 2, 3, 4, 5];
    List<int>? numbers2;

    int? firstElement1 = numbers1?.first;
    int? firstElement2 = numbers2?.first;

    print("First Element 1: $firstElement1"); // Output: First Element 1: 1
    print("First Element 2: $firstElement2");

    CLASS

    class Person {
      String name;
      int age;

      Person(this.name, this.age);

      void printDetails() {
        print('Name: $name, Age: $age');
      }
    }

    Person person = Person('John Doe', 25);
    print(person.name);
    person.printDetails();

    ENUM

    enum Weekday {
      monday,
      tuesday,
      wednesday,
      thursday,
      friday,
    }

    Weekday today = Weekday.wednesday;

    switch (today) {
      case Weekday.monday:
        print('It\'s Monday!');
        break;
      case Weekday.wednesday:
        print('It\'s Wednesday!');
        break;
      case Weekday.friday:
        print('It\'s Friday!');
        break;
      default:
        print('It\'s not a special day.');
    }

    enum Color {
      red,
      green,
      blue,
      yellow,
    }

    */

    return const MaterialApp(
      home: Scaffold(),
    );
  }
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFFFFEB3B),
        useMaterial3: true,
      ),
      home: PageView(
        children: const [
          Todo(),
          Experiment(),
          Counter(),
          Calculator(),
          Input(),
          Calculator2(),
        ],
      ),
    );
  }
}
