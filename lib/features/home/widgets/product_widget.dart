import 'package:BmgLager/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              children: [
                ClipRect(
                    child: Image.asset(
                  imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                )),
                const Gap(6.0),
                Column(
                  children: [
                    AppText(text: productName),
                    const Gap(2.0),
                    AppText(text: 'Location: $location'),
                    const Gap(2.0),
                    AppText(text: '$productId'),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              AppText(text: 'status'),
              CircleAvatar(
                child: AppText(
                  text: '$status',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
