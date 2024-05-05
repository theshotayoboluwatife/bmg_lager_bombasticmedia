import 'package:BmgLager/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GradesDropDownContainer extends StatelessWidget {
  const GradesDropDownContainer({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffe9eaeb), width: 1.1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppText(text: 'All Grades'),
          Gap(4.0),
          Icon(applyTextScaling: true,
              Icons.keyboard_arrow_down_sharp,
              size: 24,
              color: Colors.grey,
            ),
        ],
      ),
    );
  }
}
