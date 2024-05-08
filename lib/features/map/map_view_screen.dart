import 'package:BmgLager/utility/constants.dart';
import 'package:BmgLager/widgets/rounded_corner_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gap/gap.dart';
import 'package:latlong2/latlong.dart';
import '../../widgets/app_text.dart';

class MapViewScreen extends StatelessWidget {
  const MapViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(51.509364, -0.128928),
              initialZoom: 3.2,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right:0,
            child: Padding(
              padding: const EdgeInsets.only(bottom:20.0, left: 20.0, right:20.0),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                width: double.infinity,
                height: 120.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RoundedCornerImage(
                        imageUrl: 'assets/images/bmg_trashcan.jpg',
                        imageSize: 80),
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
        ],
      ),
    );
  }
}
