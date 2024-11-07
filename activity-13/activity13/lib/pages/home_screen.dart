import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:activity13/global_theme_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {

  final user = FirebaseAuth.instance.currentUser;

  List<String> genderMenu = [
    "Women",
    "Men",
  ];

  late String dropdownValue = genderMenu.first as String;

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    final Color onPrimaryColor = Theme.of(context).colorScheme.onPrimary;

    final Color secondaryColor = Theme.of(context).colorScheme.secondary;
    final Color onSecondaryColor = Theme.of(context).colorScheme.onSecondary;

    final Color surfaceColor = Theme.of(context).colorScheme.surface;
     final Color onSurfaceColor = Theme.of(context).colorScheme.onSurface;
    final Color tertiaryColor = Theme.of(context).colorScheme.tertiary;

    TextEditingController searchController = TextEditingController();

    return Scaffold(
      backgroundColor: surfaceColor,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to Home Screen!"),
            MaterialButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacementNamed(context, '/login');
              },
              color: primaryColor,
              child: Text(
                "Signout",
                style: GoogleFonts.montserrat(color: onPrimaryColor, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
