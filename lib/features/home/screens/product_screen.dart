import 'package:BmgLager/features/home/widgets/grades_dropdown_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:BmgLager/widgets/app_text.dart';
import '../../../utility/constants.dart';
import '../widgets/search_container.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchTextController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: 'Products',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: AppText(
              text: 'Select',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              textAlign: TextAlign.right,
              color: AppColor.blue,
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          bottom: 20.0,
        ),
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(20),
                Row(
                  children: [
                    Flexible(
                        child: SearchContainer(
                            searchTextController: searchTextController)),
                    const Gap(4.0),
                    const GradesDropDownContainer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
