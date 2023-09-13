import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:demo/screen1.dart';
class Demo extends StatefulWidget {
  const Demo({super.key});
  @override
  State<Demo> createState() {
    return _DemoState();
  }
}
class _DemoState extends State<Demo> {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 35),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/boy.png',
                width: double.infinity,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'How you gonna use this app?',
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 164, 85, 210),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Screen1(),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 160, vertical: 20),
                    backgroundColor: const Color.fromARGB(255, 153, 80, 220),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                child: Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
