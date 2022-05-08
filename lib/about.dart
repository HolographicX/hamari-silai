import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: width < 600 ? height * 1.5 : height,
      width: width,
      child: Column(
        children: [
          width > 600
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: titleimage)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: titleimage,
                ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment(0, 0),
            child: Text(
              'How Hamari Silai helps women',
              style: TextStyle(
                  color: Color(0xffBD4C63),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          width > 600
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: threeEs,
                )
              : Center(
                  child: SizedBox(
                    width: 230,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: threeEs,
                    ),
                  ),
                )
        ],
      ),
    );
  }

  List<Widget> titleimage = [
    Stack(
      children: [
        Align(
          alignment: const Alignment(-0.8, -0.55),
          child: Image.asset(
            'about-vector-1.png',
            width: 300,
          ),
        ),
        const Align(
          alignment: Alignment(-0.8, -0.55),
          child: Text(
            'About Us',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 65),
          ),
        ),
      ],
    ),
    Align(
      alignment: const Alignment(0.7, -0.55),
      child: Image.asset(
        'about-image-1.png',
        width: 450,
      ),
    ),
  ];
  List<Widget> threeEs = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 35,
              width: 2,
              color: const Color(0xffA93F55).withOpacity(0.8),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Icon(
                FontAwesomeIcons.award,
                color: const Color(0xffA93F55).withOpacity(0.46),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Education',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              )
            ]),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          width: 210,
          child: Text(
            'For the women’s first stage in their journey, Hamari Silai has designed an intensive 6 month training curriculum for the holistic development of women. This includes courses from tailoring, leadership, reading & writing, family planning, diseases management, saving management, and more.',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10.5),
          ),
        )
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 35,
              width: 2,
              color: const Color(0xffA93F55).withOpacity(0.8),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Icon(
                FontAwesomeIcons.solidStar,
                color: const Color(0xffA93F55).withOpacity(0.46),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Experience',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              )
            ]),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          width: 220,
          child: Text(
            'In the second phase of our module, women are provided experiential practices of tailoring by evolving them in the production of our products designed to to generate income. Additionally, women are asked to emphasise the education learning in their daily routine such as adopting sanitary napkins or embracing savings.',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10.5),
          ),
        )
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 35,
              width: 2,
              color: const Color(0xffA93F55).withOpacity(0.8),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Icon(
                FontAwesomeIcons.solidMap,
                color: const Color(0xffA93F55).withOpacity(0.46),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Exploration',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              )
            ]),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          width: 210,
          child: Text(
            'For the final stage, we have organized recruitment opportunities for women to explore their learnings. They are given oppurtunities to join either Hamari Silai’s own collaborative enterprise, or other companies in the same domain. We also encourage women to initiate their own enterprises in the communities and become role models for others.',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10.5),
          ),
        )
      ],
    ),
  ];
}
