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
                urlTemplate:
                    'https://api.mapbox.com/styles/v1/shotayobolu/clvyv31400a6201nu72e7bnxl/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2hvdGF5b2JvbHUiLCJhIjoiY2x2eXV3a2w4MnJnMTJxcXoyd2Jsc3Z1NyJ9.kJa0trn8DAhCG0vHP9QILw',
                additionalOptions: const {
                  'accessToken':
                      'pk.eyJ1Ijoic2hvdGF5b2JvbHUiLCJhIjoiY2x2eXV3a2w4MnJnMTJxcXoyd2Jsc3Z1NyJ9.kJa0trn8DAhCG0vHP9QILw',
                  'id': 'mapbox.mapbox-streets-v8'
                },
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: const LatLng(51.5, -0.09),
                    child: Image.asset(
                        'assets/images/brand_identity/bmglager_app_icon.png'),
                  )
                ],
              )
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
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
