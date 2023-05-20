import 'package:anime_app/wideCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LongCard.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainFrame(),
    );
  }
}

class MainFrame extends StatefulWidget {
  const MainFrame({super.key});

  @override
  State<MainFrame> createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "It's Fun Time",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: MainFrame(),
    );
  }

  Widget MainFrame() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Recommendation(),
          TitlePage(),
          Anime(),
        ],
      ),
    );
  }

  Widget TitlePage() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: (TextButton.icon(
        onPressed: null,
        icon: Icon(
          Icons.tv,
          color: Colors.black,
        ),
        label: Text(
          "Watch list",
          style: GoogleFonts.getFont('Open Sans',
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      )),
    );
  }

  Widget Recommendation() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 10; i++) WideCard(),
        ],
      ),
    );
  }

  Widget Anime() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 10; i++) LongCard(),
        ],
      ),
    );
  }
}
