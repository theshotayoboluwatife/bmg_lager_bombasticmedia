import 'package:BmgLager/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../utility/constants.dart';
import '../../../widgets/rounded_corner_image.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl, productName, location;
  final int productId, status;

  const ProductItem(
      {super.key,
      required this.imageUrl,
      required this.productName,
      required this.location,
      required this.productId,
      required this.status});

  Color getColor(int status) {
    switch (status) {
      case 1:
        return CanStatus.gradeOne.color;
      case 2:
        return CanStatus.gradeTwo.color;
      case 3:
        return CanStatus.gradeThree.color;
      default:
        return AppColor.grey;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedCornerImage(
                  imageUrl: imageUrl,
                  imageSize: 80.0,
                ),
                const Gap(14.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: productName,
                      fontWeight: FontWeight.w500,
                    ),
                    const Gap(2.0),
                    AppText(
                      text: 'Location: $location',
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                    const Gap(2.0),
                    AppText(
                      text: '$productId',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColor.grey,
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              const AppText(
                text: 'status',
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              CircleAvatar(
                backgroundColor: getColor(status),
                maxRadius: 10.0,
                child: AppText(
                  text: '$status',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}
