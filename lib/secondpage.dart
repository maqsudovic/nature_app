import 'package:flutter/material.dart';
import 'package:plants_app/widgets.dart';


class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 250,
            color: Colors.brown.shade200,
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/boy.png'),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text(
                      'Jack',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                    ),
                    const Text(
                      'Party organizer',
                      style: TextStyle(color: Colors.black),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Read more'))
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0, 1),
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 700,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'Octobers',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Holidays',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Secondpageitem(names: 'Tanksgiving', id: 0, func: () {}),
                  Secondpageitem(names: 'Helloween', id: 1, func: () {}),
                  Secondpageitem(names: 'Holiday', id: 2, func: () {}),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Party',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Planing',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                const  SizedBox(
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
    );
  }
}