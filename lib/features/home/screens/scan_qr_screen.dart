import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utility/constants.dart';
import '../../../widgets/app_text.dart';

class ScanQRScreen extends StatelessWidget {
  const ScanQRScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.navigate_before,
            color: Colors.black,
            size: 32,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20.0),
        color: Colors.white,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppText(
                text: 'Scan a Trash Can',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              const Gap(10),
              AppText(
                text:
                    'Here, you can scan trash cans to see details about them!',
                color: AppColor.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
