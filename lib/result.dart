import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vacci_app/form.dart';
import 'package:vacci_app/widget.dart';

class Result extends StatefulWidget {
  String name;
  String time;
  String age;
  String vaccine;

  Result({
    required this.age,
    required this.name,
    required this.time,
    required this.vaccine,
  });

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            textstype01("Vaccine Register", 30, FontWeight.bold, Colors.black),
            const SizedBox(
              height: 10,
            ),
            textstype01("Let's get registered for getting vaccinated", 13,
                FontWeight.w500, Colors.black),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 378,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blue),
                          child: const Icon(
                            Icons.medical_information,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        textstype01(
                            widget.vaccine, 20, FontWeight.bold, Colors.black),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blue),
                          child: const Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textstype01(
                                widget.time, 18, FontWeight.bold, Colors.black),
                            SizedBox(
                              height: 3,
                            ),
                            textstype01("17 - MAY - 2024", 12, FontWeight.w500,
                                Colors.black),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blue),
                          child: const Icon(
                            Icons.face,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textstype01(
                                widget.age, 18, FontWeight.bold, Colors.black),
                            SizedBox(
                              height: 3,
                            ),
                            textstype01(
                                "500 MG", 12, FontWeight.w500, Colors.black),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blue),
                          child: const Icon(
                            Icons.airline_seat_recline_normal_rounded,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textstype01(
                                widget.name, 18, FontWeight.bold, Colors.black),
                            SizedBox(
                              height: 3,
                            ),
                            textstype01("Sunil Jasathi", 12, FontWeight.w500,
                                Colors.black),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blue),
                          child: const Icon(
                            Icons.masks_sharp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textstype01("XYZ Hospital", 18, FontWeight.bold,
                                Colors.black),
                            SizedBox(
                              height: 3,
                            ),
                            textstype01(
                                "Jabalpur", 12, FontWeight.w500, Colors.black),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      curve: Curves.linear,
                      type: PageTransitionType.bottomToTop,
                      child: Login()),
                );
              },
              child: Container(
                height: 78,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Center(
                  child: textstype01(
                      "Register Again", 20, FontWeight.w500, Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
