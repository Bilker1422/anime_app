import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LongCard extends StatelessWidget {
  const LongCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            "images/templete.jpg",
            width: 120,
            height: 160,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6, top: 6),
          child: Text(
            "My Hero Academia",
            style: GoogleFonts.getFont('Open Sans', fontSize: 10),
          ),
        )
      ],
    );
  }
}
