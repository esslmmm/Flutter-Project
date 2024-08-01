import 'package:flutter/material.dart';
import 'package:my_project/main.dart';
import 'package:my_project/model/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _age = 0;
  Job _career = Job.doctor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My title",
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Form'),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 20,
                    decoration: const InputDecoration(
                        label: Text(
                      "Name",
                      style: TextStyle(fontSize: 20),
                    )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please fill the name";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value!;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        label: Text(
                      "Age",
                      style: TextStyle(fontSize: 20),
                    )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please fill the age";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _age = int.parse(value.toString());
                    },
                  ),
                  DropdownButtonFormField(
                      value: _career,
                      decoration: const InputDecoration(
                          label: Text(
                        "Career",
                        style: TextStyle(fontSize: 20),
                      )),
                      items: Job.values.map((e) {
                        return DropdownMenuItem(value: e, child: Text(e.title));
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _career = value!;
                        });
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  FilledButton(
                      onPressed: () {
                        _formKey.currentState!.validate();
                        _formKey.currentState!.save();
                        data.add(Person(name: _name, age: _age, job: _career));
                        _formKey.currentState!.reset();
                        print(data.length);
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (ctx) => const MyApp()));
                      },
                      style:
                          FilledButton.styleFrom(backgroundColor: Colors.green),
                      child: Text("Submit"))
                ],
              ),
            ),
          ),
        ));
  }
}
