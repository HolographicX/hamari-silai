import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hamari_silai_website/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final caption = SizedBox(
      width: 300,
      child: Text(
        'We are an NGO targeted at helping women in rural communities. We aim to make these women entrepreneurs and equip them with a skillset of confidence, self-respect and dignity.\n\nHamari Silai Foundation is a non-profit organization and registered under B.P.T Registration Act 1950, on 15th February 2020.',
        style: TextStyle(
            fontSize: 12, color: bgColor, fontWeight: FontWeight.w300),
      ),
    );
    final logoAndlLinks =
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        'hamari-silai-logo-with-text.png',
        width: 180,
      ),
      const SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => launchUrl(Uri.parse(
                  "https://www.facebook.com/Hamari-Silai-2994457877238674/")),
              child: Icon(
                FontAwesomeIcons.facebookSquare,
                color: bgColor,
                size: 35,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => launchUrl(
                  Uri.parse("https://www.instagram.com/hamarisilai/?hl=en")),
              child: Icon(
                FontAwesomeIcons.instagramSquare,
                color: bgColor,
                size: 35,
              ),
            ),
          )
        ],
      )
    ]);
    return Container(
        color: const Color(0xff35353F),
        height: height / 2,
        width: width,
        child: width > 600
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [logoAndlLinks, caption],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [logoAndlLinks, caption]));
  }
}
