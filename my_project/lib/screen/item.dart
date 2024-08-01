import 'package:flutter/material.dart';
import 'package:my_project/model/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/screen/addForm.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: data[index].job.color),
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(data[index].name,
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          Text("Age : ${data[index].age}",
                              style: GoogleFonts.kanit(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                          Text("Career : ${data[index].job.title}",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)))
                        ],
                      ),
                      Image.asset(
                        data[index].job.image,
                        width: 50,
                      )
                    ],
                  ),
                );
              }),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: IconButton(
            icon: const Icon(
              Icons.add,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const AddForm()));
            },
          ),
        ),
      ],
    );
  }
}
