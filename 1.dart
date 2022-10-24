class Person {
  String name;
  int age;

  Person({this.name='Rohan', this.age = 20}) {}

  // Person.Age({this.name='Raj'}) {
  //   this.age = 60;
  // }

  String greet() {
    return 'Hi! I am ' +
        name +
        ' my age is : ' +
        age.toString() +
        ' would you wanna hangout ?';
  }
}

num func1(num n1, double n2) {
  return n1 * n2;
}

void main() {
  print('hello rohan!');
  print('this is my value : ${func1(1.24, 2.45)} ');

  num vars;
  vars = func1(56, 34);
  print(vars);

  int number = 12;
  print(number);

  var name = 'Rohan';
  print(name);

  String name2 = 'Aritrika\t\nKarmakar';
  print(name2);

  print('\n');

  var person1 = Person(name: 'Raj', age: 21);
  var person2 = Person(name: 'Anushka', age: 19);
  var person3 = Person(age: 21, name: 'Rishi');
  var person4 = Person(name: 'Yato');
  // var person5 = Person.Age(name: 'Naofumi');

  print('person1 name : ${person1.name}\nperson1 age : ${person1.age}\n');
  print('person2 name : ${person2.name} \nperson2 age : ${person2.age}\n');
  print(
      'person3 name : ${person3.name} \nperson3 age : ${person3.age}\n${person3.greet()}\n');
  print('person4 name : ${person4.name} \nperson2 age : ${person4.age}\n');
  // print('person5 name : ${person5.name} \nperson2 age : ${person5.age}\n');

// FINAL AND CONST

  final ex1 = ['this'];
  ex1.add('max');
  print(ex1);

  const variab = ['this', 'is', 'something'];
//   variab = ['thisisNew'];
  print(variab);
  print('\n');
  // not possible to change const var

  var variab2 = const ['this', 'is', 'it', 'bruh'];
  /* variab2.add('impossible'); */
//   this line is not possible cause im trying to change const values

  variab2 = ['completelyNew'];
  print(variab2);
}
