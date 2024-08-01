import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              onPressed: () {
                print("Already Test 1");
              },
              child: Text(
                "Click",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 10,
          ),
          FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.black, foregroundColor: Colors.grey),
              onPressed: () {
                print("Already Test 2");
              },
              child: Text(
                "Click",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue, width: 3),
                  foregroundColor: Colors.blueAccent),
              onPressed: () {
                print("Already Test 3");
              },
              child: Text(
                "Click",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.brown),
              onPressed: () {
                print("Already Test 4");
              },
              child: Text(
                "Click",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
