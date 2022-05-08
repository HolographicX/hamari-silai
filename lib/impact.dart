import 'package:flutter/material.dart';

class Impact extends StatefulWidget {
  const Impact({Key? key}) : super(key: key);

  @override
  State<Impact> createState() => ImpactState();
}

class ImpactState extends State<Impact> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 1.2,
      width: width,
      child: Column(children: [
        const SizedBox(
          height: 60,
        ),
        Image.asset(
          'impact-image-1.png',
          width: width > 600 ? width * 0.5 : width * 0.85,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Impact',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 65),
        ),
        const SizedBox(
          height: 20,
        ),
        width > 600
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  impact1,
                  Container(
                    height: 180,
                    width: 2,
                    color: const Color(0xffA93F55).withOpacity(0.8),
                  ),
                  impact2,
                  Container(
                    height: 180,
                    width: 2,
                    color: const Color(0xffA93F55).withOpacity(0.8),
                  ),
                  impact3
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  impact1,
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 2,
                    width: 180,
                    color: const Color(0xffA93F55).withOpacity(0.8),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  impact2,
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 2,
                    width: 180,
                    color: const Color(0xffA93F55).withOpacity(0.8),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  impact3
                ],
              )
      ]),
    );
  }

  final impact1 = Column(
    children: [
      const Text(
        '2',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 50,
            color: Color(0xffD87E90)),
      ),
      Text(
        'Branches\nAdopted',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.black.withOpacity(0.7)),
      ),
      Text(
        'Mumbai & Karnataka',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Colors.black.withOpacity(0.26)),
      )
    ],
  );
  final impact2 = Column(
    children: [
      const Text(
        '180+',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 50,
            color: Color(0xffD87E90)),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        'Women\nTrained',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.black.withOpacity(0.7)),
      ),
    ],
  );
  final impact3 = Column(
    children: [
      const Text(
        '30%',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 50,
            color: Color(0xffD87E90)),
      ),
      SizedBox(
        width: 200,
        child: Text(
          'Of income generated invested in the betterment of women',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Colors.black.withOpacity(0.7)),
        ),
      ),
    ],
  );
}
