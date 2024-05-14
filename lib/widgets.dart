import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class firstitem extends StatelessWidget {
  Color colors;
  int id;
  firstitem({required this.colors, required this.id});
  List cosmosphoto = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfkIUkszfTFgTX1EK-ZsZuv-rKg_qVrku7m_JFcmvBBH5hUeqTMsfzplhyXL30bQddRlQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfkIUkszfTFgTX1EK-ZsZuv-rKg_qVrku7m_JFcmvBBH5hUeqTMsfzplhyXL30bQddRlQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfkIUkszfTFgTX1EK-ZsZuv-rKg_qVrku7m_JFcmvBBH5hUeqTMsfzplhyXL30bQddRlQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfkIUkszfTFgTX1EK-ZsZuv-rKg_qVrku7m_JFcmvBBH5hUeqTMsfzplhyXL30bQddRlQ&usqp=CAU'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      padding: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: colors, borderRadius: BorderRadius.circular(15)),
      child: Image.network(
        cosmosphoto[id],
        fit: BoxFit.cover,
      ),
    );
  }
}

class scheduleitem extends StatelessWidget {
  int id;
  scheduleitem(this.id);
  List cosmosphoto = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTChfhN41fQn0BaOaZ50n8GuYK2NEheyT__v_yanrpGvoCn3TLdAuQavw23b8lgm7YfRA&usqp=CAU',
    'https://static.vecteezy.com/system/resources/previews/023/079/095/non_2x/trees-around-the-earth-globe-or-planet-for-world-environment-day-concept-vector.jpg',
    'https://static.vecteezy.com/system/resources/previews/023/079/095/non_2x/trees-around-the-earth-globe-or-planet-for-world-environment-day-concept-vector.jpg',
    'https://static.vecteezy.com/system/resources/previews/023/079/095/non_2x/trees-around-the-earth-globe-or-planet-for-world-environment-day-concept-vector.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(cosmosphoto[id]), fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

class Secondpageitem extends StatelessWidget {
  List rocketsphoto = [
    'assets/images/rocket.png',
    'assets/images/rocket2.png',
    'assets/images/rocket3.png'
  ];
  String names;
  int id;
  VoidCallback func;
  Secondpageitem({required this.names, required this.id, required this.func});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.shade100),
                ),
                Align(
                    alignment: Alignment(0, 0),
                    child: Image.asset(
                      rocketsphoto[id],
                      width: 70,
                      height: 70,
                    ))
              ],
            ),
            Column(
              children: [
                Text(
                  names,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text('\$177.77'),
              ],
            ),
            TextButton(onPressed: func, child: const Text('View'))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 3,
          color: Colors.black,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
