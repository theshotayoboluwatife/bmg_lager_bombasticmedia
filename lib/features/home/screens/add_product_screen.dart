import 'package:BmgLager/widgets/app_button.dart';
import 'package:go_router/go_router.dart';
import 'package:BmgLager/widgets/general_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../utility/constants.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/dotted_image_card.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController productNameController = TextEditingController();
    final TextEditingController longitudeController = TextEditingController();
    final TextEditingController codeController = TextEditingController();
    final TextEditingController locationController = TextEditingController();
    final TextEditingController latitudeController = TextEditingController();

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
          text: 'Add Product',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.only(left:20.0, right: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppText(
                  text: 'Add photos',
                  fontWeight: FontWeight.w500,
                ),
                const Gap(4.0),

                ///IMAGE PICKER PACKAGE
                const Row(
                  children: [
                    DottedImageCard(),
                    DottedImageCard(),
                    DottedImageCard(),
                  ],
                ),
                const Gap(30),
                const AppText(
                  text: 'Name',
                  fontWeight: FontWeight.w500,
                ),
                const Gap(10.0),
                GeneralTextField(textController: productNameController),
                const Gap(20.0),
                const AppText(
                  text: 'Status',
                  fontWeight: FontWeight.w500,
                ),
                const Gap(10.0),

                ///STATUS GRADE CONTAINER
                Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.grey,
                ),
                const Gap(30),
                const AppText(
                  text: 'Code',
                  fontWeight: FontWeight.w500,
                ),
                const Gap(10.0),
                Row(
                  children: [
                    Flexible(
                        child:
                            GeneralTextField(textController: codeController)),
                    const Gap(8.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: AppColor.grey, width: 1),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        'assets/images/scan_qr_icon.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
                const Gap(20.0),
                const AppText(
                  text: 'Location',
                  fontWeight: FontWeight.w500,
                ),
                const Gap(10.0),
                GeneralTextField(textController: locationController),
                const Gap(20.0),
                Row(
                  children: [
                    Flexible(
                        child: GeneralTextField(
                      textController: longitudeController,
                      hintText: 'Longitude',
                    )),
                    const Gap(4.0),
                    Flexible(
                      child: GeneralTextField(
                        textController: latitudeController,
                        hintText: 'Latitude',
                      ),
                    ),
                    const Gap(4.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: AppColor.grey, width: 1),
                      ),
                      alignment: Alignment.center,
                      child: IconButton(padding: EdgeInsets.zero, iconSize: 1,
                        onPressed: (){},
                        icon: const Icon(Icons.location_searching, size: 24, color: Colors.black54),

                      ),
                    ),
                  ],
                ),
                const Gap(60.0),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: OutlinedButton(
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
                          onPressed: () {},
                          child: const Text('Cancel'),
                        ),
                      ),
                    ),
                    const Gap(6.0),
                    Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: AppButton(onPressed: () {  }, text: 'Add Product',
                      
                          ),
                      ),
                    ),
                    
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
