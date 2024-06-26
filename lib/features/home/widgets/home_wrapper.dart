import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'Products',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/scan_qr_icon.png',
              color: (selectedIndex == 2)
                  ? AppColor.blue
                  : const Color(0xff6d6e76),
              width: 30,
              height: 30,
            ),
            label: 'Scan QR',
          ),
        ],
        backgroundColor: const Color(0xfff7f7f7),
        iconSize: 30,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: const Color(0xff6d6e76),
        selectedItemColor: AppColor.blue,
        selectedLabelStyle: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.blue),
        unselectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Color(0xff6d6e76)),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
          _goBranch(selectedIndex);
        },
      ),
    );
  }
}
