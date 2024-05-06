import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../utility/constants.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/rounded_corner_image.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        title: const AppText(
          text: 'Product details',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: AppText(
              text: 'Edit',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              textAlign: TextAlign.right,
              color: AppColor.blue,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  //height: size.height * 0.4,
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, bottom: 32.0, top: 32.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColor.containerGrey,
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundedCornerImage(
                        imageUrl: 'assets/images/bmg_trashcan.jpg',
                        imageSize: size.height * 0.22,
                      ),
                      const Gap(30.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.height * 0.08,
                            height: size.height * 0.08,
                            padding: const EdgeInsets.all(12.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                    color: AppColor.blue, width: 1.0)),
                            child: RoundedCornerImage(
                              imageUrl: 'assets/images/bmg_trashcan.jpg',
                              imageSize: size.height * 0.06,
                            ),
                          ),
                          Container(
                            width: size.height * 0.08,
                            height: size.height * 0.08,
                            padding: const EdgeInsets.all(12.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Image.asset(
                              'assets/images/bmg_tc1.png',
                              //  width: size.height * 0.06,
                              // height: size.height * 0.06,
                            ),
                          ),
                          Container(
                            width: size.height * 0.08,
                            height: size.height * 0.08,
                            padding: const EdgeInsets.all(12.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Image.asset(
                              'assets/images/bmg_tc2.png',
                              //  width: 50,
                              // height: 50,
                            ),
                          ),
                          Container(
                            width: size.height * 0.08,
                            height: size.height * 0.08,
                            padding: const EdgeInsets.all(12.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Image.asset(
                              'assets/images/bmg_tc1.png',
                              //width: 50,
                              //height: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(40.0),
                AppText(
                  text: 'Name',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey,
                ),
                const Gap(8.0),
                const AppText(
                  text: 'Trashcan1',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                const Gap(20.0),
                AppText(
                  text: 'Status',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey,
                ),
                const Gap(8.0),
                const AppText(
                  text: 'Grade 1',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                const Gap(20.0),
                AppText(
                  text: 'Code',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey,
                ),
                const Gap(8.0),
                const AppText(
                  text: '24242424',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                const Gap(20.0),
                AppText(
                  text: 'Location',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey,
                ),
                const Gap(8.0),
                const AppText(
                  text: 'NMK 316 Alexander street',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                const Gap(20.0),
                const AppText(
                  text: 'Longitude: 62°77’80.7”N    Latitude: 90°77’34”.96E',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                const Gap(20),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                  onPressed: () => context.goNamed('ViewMap'),
                  child: const Text('View On Map'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
