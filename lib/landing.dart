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
            alignment: width > 800 ? Alignment(1, 0.4) : Alignment(1, 0.2),
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
            alignment: width > 800 ? Alignment(-1, -0.3) : Alignment(-1, -0.9),
            child: Image.asset(
              'landing-vector-3.png',
              height: 300,
            ),
          ),
          width > 800
              ? Stack(
                  //Desktop View
                  children: [
                    Align(
                      alignment: width > 800
                          ? const Alignment(-0.82, -0.5)
                          : const Alignment(0, -0.7),
                      child: Text(
                        'Hamari\nSilai',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 75),
                        textAlign:
                            width > 800 ? TextAlign.left : TextAlign.center,
                      ),
                    ),
                    Align(
                      alignment: width > 800
                          ? const Alignment(0.8, -0.9)
                          : const Alignment(0, -0.2),
                      child: Image.asset(
                        'landing-image-1.png',
                        height: 400,
                        width: 400,
                      ),
                    ),
                    Align(
                      alignment: width > 800
                          ? const Alignment(0, 0.3)
                          : const Alignment(0, 0.6),
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
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 25),
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ),
                  ],
                )
              : Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Text(
                        'Hamari\nSilai',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 75),
                        textAlign:
                            width > 800 ? TextAlign.left : TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'landing-image-1.png',
                        width: 400,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        // height: 320,
                        width: 320,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                            'message_rectangle.png',
                          )),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Center(
                              child: Text(
                            'We empower women from low-income communities through tailoring',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 25),
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
