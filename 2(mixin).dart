mixin Agility {
  int speed = 10;
  void run() {
    print('running like a cheetah');
  }
}

mixin Voice {
  void speak() {
    print('hey this is me!');
  }
}

class Mammal {
  int ageM = 21;
  void breathe() {
    print('Breathe in and breathe out');
  }
}

class Person extends Mammal with Agility, Voice {
  // just logically theres no relation of Agiility with person
  // but person is a mammal, direct logical relations
  // multiple mixin can be called but cant extend multiple classes
  String name;
  int age;

  Person({required this.name, this.age = 20});
}

void main() {
  var person1 = Person(name: 'Raj', age: 21);
  var person2 = Person(name: 'Anushka', age: 19);
  var person3 = Person(age: 21, name: 'Rishi');
  var person4 = Person(name: 'Yato');

  print('person1 name : ${person1.name}\nperson1 age : ${person1.age}\n');
  print('person2 name : ${person2.name} \nperson2 age : ${person2.age}\n');

  print(
      'person4 name : ${person4.name} \nperson2 age : ${person4.age}\nmammal age : ${person4.ageM}\nspeed: ${person4.speed} m/s');
  person4.breathe();
  person4.run();
}
