import 'package:flutter/material.dart';

class Mission extends StatefulWidget {
  const Mission({Key? key}) : super(key: key);

  @override
  State<Mission> createState() => _MissionState();
}

class _MissionState extends State<Mission> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final image = Image.asset(
      'mission-image-1.png',
      width: 400,
    );
    const title = Text(
      "Mission",
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 65),
    );
    const caption = SizedBox(
      width: 400,
      child: Text(
        'Our efforts have given women give them a respectful and dignified life, and a means to fulfill this journey by providing them a connection to society. Our Mission is to educate, empower, and up-skill women from deprived communities by availing various opportunities for them.',
        style: const TextStyle(fontWeight: FontWeight.w400),
      ),
    );
    final missionStatement = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: const Color(0xffA93F55).withOpacity(0.8),
          width: 2,
          height: 270,
        ),
        const SizedBox(
          width: 30,
        ),
        const SizedBox(
          width: 330,
          child: Text(
            'Mohan Rathod, the Founder of Hamari Silai, and our team saw that women, despite striving to support and take care of their family, ended up as targets for everyone in the family and as victims of abuse. All the hard work they put in goes unnoticed. Women are always looked down upon. We wanted to change that.',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.5),
          ),
        )
      ],
    );
    return SizedBox(
      height: height,
      width: width,
      child: width > 600
          ? //desktop mode
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    title,
                    missionStatement,
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    image,
                    const SizedBox(
                      height: 40,
                    ),
                    caption,
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            )
          :
          //mobile mode
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [title, image, missionStatement, caption],
            ),
    );
  }
}
