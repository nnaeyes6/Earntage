import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final Uri _uril = Uri.parse('https://hng.tech/hire/flutter-developers');

final Uri _url = Uri.parse('https://github.com/nnaeyes6/Earntage/tree/main');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future<void> _launchUril() async {
  if (!await launchUrl(_uril)) {
    throw Exception('Could not launch $_uril');
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.redAccent,
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              letterSpacing: 4,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(4),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'Welcome to the Home Page of Earntage... This app is still in progress',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  width: 300,
                  height: 80,
                  child: Center(
                    child: Text(
                      'To visit our github repository and become a contributor, click ERANTAGE.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const SizedBox(
                  width: 300,
                  height: 80,
                  child: Center(
                    child: Text(
                      'Eartage is a from an HNG12 intern... To hire a professional flutter developer, click   HNG HIRE.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton.large(
                      backgroundColor: Colors.red,
                      onPressed: _launchUrl,
                      child: Center(
                        child: Text('EARNTAGE'),
                      ),
                    ),
                    FloatingActionButton.large(
                      backgroundColor: Colors.green,
                      onPressed: _launchUril,
                      child: Center(
                        child: Text('HNG HIRE'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
