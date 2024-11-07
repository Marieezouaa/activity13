import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:activity13/pages/home_screen.dart';

class CustomGNav extends StatefulWidget {
  const CustomGNav({Key? key}) : super(key: key);

  @override
  _CustomGNavState createState() => _CustomGNavState();
}

class _CustomGNavState extends State<CustomGNav> {
  double income = 0;
  double expenses = 0;

  final List<String> institutions = [];

  @override
  Widget build(BuildContext context) {
    final Color surfaceColor = Theme.of(context).colorScheme.surface;

     final Color secondaryColor = Theme.of(context).colorScheme.secondary;
    final Color onSecondaryColor = Theme.of(context).colorScheme.onSecondary;

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: secondaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
            child: GNav(
              gap: 8,
              onTabChange: (index) {
                Widget targetScreen = const HomeScreen();

                if (index == 0) {
                  targetScreen = const HomeScreen();
                } else if (index == 1) {
                  targetScreen = HomeScreen();
                } else if (index == 2) {
                  targetScreen = HomeScreen();
                } else if (index == 3) {
                  targetScreen = const HomeScreen();
                }

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        targetScreen,
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              backgroundColor: secondaryColor,
              color: Colors.white,
              activeColor: (Colors.white),
              tabBackgroundColor: Colors.grey.shade800,
              padding: const EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.wallet,
                  leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedHome01,
                    color: onSecondaryColor,
                    size: 24.0,
                  ),
                ),
                GButton(
                  leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedSearch01,
                    color: onSecondaryColor,
                    size: 24.0,
                  ),
                  icon: Icons.business,
                ),
                GButton(
                  icon: Icons.star,
                  leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedFavourite,
                    color: onSecondaryColor,
                    size: 24.0,
                  ),
                ),
                GButton(
                  leading: HugeIcon(
                    icon: HugeIcons.strokeRoundedUser,
                    color: onSecondaryColor,
                    size: 24.0,
                  ),
                  icon: Icons.settings,
                ),
              ],
            ),
          ),
        ));
  }
}



/*
onTabChange: (index) {
            Widget targetScreen = const HomeScreen();

            if (index == 0) {
              targetScreen = const HomeScreen();
            } else if (index == 1) {
              targetScreen = WalletScreen(
                onIncomeUpdated: (newIncome) {
                  setState(() {
                    income = newIncome;
                    
                  });
                },
                onExpensesUpdated: (newExpenses) {
                  setState(() {
                    expenses = newExpenses;
                  });
                },
                currentIncome: income,
                currentExpenses: expenses,
              );
            } else if (index == 2) {
              targetScreen = LinkInstitution(institutions: institutions);
            } else if (index == 3) {
              targetScreen = const SettingsScreen();
            }

            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    targetScreen,
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
          },*/