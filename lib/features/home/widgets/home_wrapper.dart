import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import '../../../utility/constants.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  int selectedIndex = 0;

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: widget.navigationShell,
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: const Color(0xffEDEDED),
        onButtonPressed: (index) {
          setState(() {
            selectedIndex = index;
          });
          _goBranch(selectedIndex);
        },
        iconSize: 30,
        inactiveColor: const Color(0xffADADAF),
        activeColor: AppColor.blue,
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.ios_share_outlined,
            title: 'Export',
          ),
          BarItem(
            icon: Icons.qr_code_scanner_sharp,
            title: 'Scan',
          ),
        ],
      ),
    );
  }
}
