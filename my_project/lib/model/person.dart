import 'package:flutter/material.dart';

enum Job {
  //const data
  doctor(
      title: "หมอ", image: "assets/images/Flutter-logo.png", color: Colors.red),
  teacher(
      title: "ครู",
      image: "assets/images/Flutter-logo.png",
      color: Colors.green),
  nurse(
      title: "พยาบาล",
      image: "assets/images/Flutter-logo.png",
      color: Colors.blue);

  const Job({required this.title, required this.image, required this.color});
  final String title;
  final String image;
  final Color color;
}

class Person {
  String name;
  int age;
  Job job;

  Person({required this.name, required this.age, required this.job});
}

List<Person> data = [
  Person(name: "A", age: 1, job: Job.doctor),
  Person(name: "B", age: 2, job: Job.teacher),
  Person(name: "C", age: 3, job: Job.nurse)
];
