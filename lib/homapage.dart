import 'package:flutter/material.dart';
import 'package:plants_app/secondpage.dart';
import 'package:plants_app/widgets.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 350,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/nature.png'),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFC97758)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Autumn day',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      const Text(
                        'Hello Jack',
                        style: TextStyle(
                            color: Color.fromARGB(255, 226, 181, 165),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/boy.png'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 1),
            child: Container(
              width: double.infinity,
              height: 400,
              padding: EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return Secondpage();
                                },
                              ),
                            );
                          },
                          child:
                              firstitem(colors: Colors.amber.shade300, id: 0)),
                      firstitem(colors: Colors.red.shade300, id: 1),
                      firstitem(colors: Colors.blue.shade300, id: 2),
                      firstitem(
                          colors: const Color.fromARGB(255, 236, 137, 130),
                          id: 3),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Day',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Schedule',
                        style: TextStyle(fontSize: 30, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        scheduleitem(0),
                        scheduleitem(1),
                        scheduleitem(2),
                        scheduleitem(3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
