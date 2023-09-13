import 'package:demo/parent.dart';
import 'package:demo/student.dart';
import 'package:demo/teacher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Student()));
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 15),
                    backgroundColor: const Color.fromARGB(255, 218, 192, 231),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                child: Text(
                  "Student",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(fontSize: 15),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Teacher()));
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 15),
                    backgroundColor: const Color.fromARGB(255, 218, 192, 231),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                child: Text(
                  "Teacher",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(fontSize: 15),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Parent()));
            },
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 64, vertical: 15),
                backgroundColor: const Color.fromARGB(255, 218, 192, 231),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                )),
            child: Text(
              "Parent",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
