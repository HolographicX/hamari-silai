import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(1, 0.4),
            child: Image.asset(
              'landing-vector-1.png',
              height: 200,
              width: 200,
            ),
          ),
          Align(
            alignment: Alignment(1, 1),
            child: Image.asset(
              'landing-vector-2.png',
              height: 400,
            ),
          ),
          Align(
            alignment: Alignment(-1, -0.3),
            child: Image.asset(
              'landing-vector-3.png',
              height: 300,
            ),
          ),
          Align(
            alignment: const Alignment(0.8, -0.9),
            child: Image.asset(
              'landing-image-1.png',
              height: 400,
              width: 400,
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.3),
            child: Container(
              height: 320,
              width: 320,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                  'message_rectangle.png',
                )),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                    child: Text(
                  'We empower women from low-income communities through tailoring',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                  textAlign: TextAlign.center,
                )),
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.82, -0.5),
            child: Text(
              'Hamari\nSilai',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 75),
            ),
          ),
        ],
      ),
    );
  }
}
