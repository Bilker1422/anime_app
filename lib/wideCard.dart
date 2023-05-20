import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WideCard extends StatelessWidget {
  const WideCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.8,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white70, Colors.orange],
                begin: Alignment(-3, 0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    disabledBackgroundColor: Colors.white60,
                  ),
                  onPressed: null,
                  icon: const Icon(
                    Icons.star_sharp,
                    color: Colors.orange,
                  ),
                  label: Text(
                    "New Episode!",
                    style: GoogleFonts.getFont('Open Sans',
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "My Hero Academia",
                  style: GoogleFonts.getFont('Open Sans',
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "S6 E22 - Friend",
                  style: TextStyle(wordSpacing: 2, color: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
