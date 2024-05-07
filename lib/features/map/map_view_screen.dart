import 'package:BmgLager/utility/constants.dart';
import 'package:BmgLager/widgets/rounded_corner_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../widgets/app_text.dart';

class MapViewScreen extends StatelessWidget {
  const MapViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/maps.png'), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 30.0),
        child: SafeArea(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              width: double.infinity,
              height: 120.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RoundedCornerImage(
                      imageUrl: 'assets/images/bmg_trashcan.jpg', imageSize: 80),
                  const Gap(10.0),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Flexible(
                          child: AppText(
                            text: 'NMK 316 Alexander street',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Gap(8.0),
                         Flexible(
                           child: AppText(
                            text:
                                'Longitude: 62°77’80.7”N    Latitude: 90°77’34”.96E',
                            fontSize: 12,
                            color: AppColor.grey,
                            fontWeight: FontWeight.w400,
                                                 ),
                         ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
