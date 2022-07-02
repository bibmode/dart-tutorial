// importing libraries
import 'dart:core'; // already automatically added
import 'dart:io';

class Num {
  int num = 100;
}

// Functions
// dynamic returns any type of value
dynamic square(var num) {
  return num * num;
}

// Arrow Function
void showOutput(var msg) => print(msg);

void printF(item) {
  print(item);
}

// Named parameter
dynamic sum({var num1, var num2}) => num1 + num2;

// Optional value named parameter
dynamic sum2(var num1, {var num2}) => num1 + (num2 ?? 0);

// Default value named paramter
dynamic sum3(var num1, {var num2 = 0}) => num1 + num2;

// Optional parameter
dynamic sum4(var num1, [var num2]) => num1 + (num2 ?? 0);

class X {
  // final can only be changed once using the constructor for classes only although final can be used like a const if its not in a class
  final name;
  // const is unchangeable
  // static is a class property
  static const int age = 10;

  X(this.name);
}

// Class
class Person {
  late String name;
  late int age;

  // constructor method
  Person(String name, [int age = 18]) {
    this.name = name;
    this.age = age;
  }

  // named constructor
  Person.guest() {
    this.name = "Scarlett Johansson";
    this.age = 32;
  }

  void showOutput() {
    print(name);
    print(age);
    print('\n');
  }
}

void main() {
  // Classes
  var xClass = X('gen');
  print(xClass.name);

  Person person1 = Person('vieve');
  person1.age = 21;

  // or
  //  var person1 = Person('vieve', 21);

  person1.showOutput();

  var person2 = Person.guest();

  person2.showOutput();

  print(X.age);

  // Functions
  showOutput(square(2));

  // Map
  var exampleMap = {
    1: 'value 1',
  };

  print(exampleMap[1]);

  var listTest = ['apples', 'oranges', 'mangoes'];

  // Anonymous Function
  listTest.forEach((item) {
    printF(item);
  });
  print('\n');

  // named parameter test
  print(sum(num1: 4, num2: 3));

  // empty map
  var gifts = Map();
  gifts['first'] = 'Mango';

  print(gifts['first']);

  // Set - unique collection of items
  var halogens = {'flourine', 'chlorine', 'flourine'};

  for (var x in halogens) {
    print(x);
  }

  // 2 ways to initialize an empty set
  var emptySet = <String>{};
  Set<String> mt = {};

  print(emptySet);
  print(mt);

  // List
  // immutable type <String>
  List<String> names = ['Jack', 'Jill'];

  // clone list
  var names2 = [...names];

  for (var n in names2) {
    print(n);
  }

  var n;
  int number;

  number = n?.num ?? 0;
  print(number);

  var x = 100;
  var result = x % 2 == 0 ? 'Even' : 'Odd';
  print(result);

  if (x is int) {
    print('integer\n');
  }

  // type inference
  var firstName = 'Genevieve';

  // statically typed
  String lastName = 'Navales';

  print(firstName + ' ' + lastName);

  stdout.writeln('What is your name: ?');
  String? name = stdin.readLineSync();
  print('My name is $name\n');

  // line comment

  /*
  block comment
  */

  /// documentation

  int amount1 = 100;
  var amount2 = 200;

  print('Amount1: $amount1 | amount2: $amount2');

  double dAmount1 = 222.22;
  var dAmount2 = 111.11;

  print('dAmount1: $dAmount1 | dAmount2: $dAmount2\n');

  dynamic weakVariable = 100;
  print('WeakVariable 1: $weakVariable');

  weakVariable = 'Dart Programming';
  print('WeakVariable 2: $weakVariable');

  weakVariable = null;
  print('WeakVariable 3: $weakVariable\n');

  var s1 = '''
multiline string
multiline hello
''';

  print(s1);

  // String to int
  var one = int.parse('1');
  assert(one == 1);

  // String to int
  var two = double.parse('2.3');
  assert(two == 2);

  // int to String
  String three = 1.toString();
  assert(three == '1');

  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string\n';

  print(aConstNum);
  print(aConstBool);
  print(aConstString);

  print(aConstNum.runtimeType);
  print(aConstBool.runtimeType);
  print(aConstString.runtimeType);
}
