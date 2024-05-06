import 'package:flutter/material.dart';

import '../../../utility/constants.dart';
import '../../../widgets/app_text.dart';

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
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height*0.4,
                  decoration: BoxDecoration(
                    
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
