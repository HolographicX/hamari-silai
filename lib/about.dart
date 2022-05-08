import 'package:flutter/material.dart';

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
      height: height,
      width: width,
      child: Stack(
        children: [
          Image.asset('about-vector-1.png'),
          const Align(
            alignment: Alignment(-0.89, -0.55),
            child: Text(
              'About Us',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 65),
            ),
          )
        ],
      ),
    );
  }
}
