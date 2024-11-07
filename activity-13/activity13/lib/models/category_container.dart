import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CategoryContainer extends StatelessWidget {
  String firstImagePath;
  String secondImagePath;
  String categoryTitle;

  CategoryContainer(
      {super.key, required this.firstImagePath, required this.secondImagePath, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage(
                    Theme.of(context).brightness == Brightness.dark
                        ? firstImagePath
                        : secondImagePath,
                  ),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          categoryTitle,
          style: GoogleFonts.montserrat(fontSize: 15),
        )
      ],
    );
  }
}
