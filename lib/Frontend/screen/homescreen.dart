import 'package:flutter/material.dart';
import 'package:hackathon_gpt/Backend/edge_detection/edgescreen.dart';
import 'package:hackathon_gpt/Backend/image_text/lens.dart';
import 'package:hackathon_gpt/Frontend/screen/image_screen.dart';
import '../widget/build_Card.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff20262E),
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              fit: BoxFit.cover,
              'assets/images/logo.png',
            )),
        title: const Text(
          'AI Assistants',
          style: TextStyle(
              fontFamily: 'Gotham',
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 19),
        ),
        toolbarHeight: 70,
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Image Generator',
                  style: TextStyle(
                      fontFamily: 'Gotham',
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 19),
                ),
              ),
            ),
            GestureDetector(
              onDoubleTap: null,
              onTap: () {
                Navigator.pushNamed(context, ImageScreen.routeName);
              },
              child: buildCard(
                image: Image.asset('assets/images/imageD.png'),
                heading: 'Click to Generate an Image',
                textBody:
                    'An AI tool to Generate images\nof any object you want.',
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Text Detector',
                  style: TextStyle(
                      fontFamily: 'Gotham',
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 19),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ImageLens.routeName);
              },
              child: buildCard(
                image: Image.asset('assets/images/text.png'),
                heading: 'Click to Detect any Text',
                textBody: 'An AI tool to Detect your\ndesired Text.',
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Edge Detector',
                  style: TextStyle(
                      fontFamily: 'Gotham',
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 19),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, EdgeScreen.routeName);
              },
              child: buildCard(
                image: Image.asset('assets/images/edge.png'),
                heading: 'Click to Detect the Edges',
                textBody:
                    'An AI tool to Detect the \nsharp Edges of any Object.',
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
