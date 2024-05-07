import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utility/constants.dart';
import 'app_text.dart';

class DottedImageCard extends StatefulWidget {
  const DottedImageCard({
    Key? key,
  }) : super(key: key);

  @override
  _DottedImageCardState createState() => _DottedImageCardState();
}

class _DottedImageCardState extends State<DottedImageCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            child: DottedBorder(
              color: AppColor.blue,
              strokeWidth: 1,
              dashPattern: const [4, 6],
              borderType: BorderType.RRect,
              radius: const Radius.circular(10),
              child: Container(
                  width: 80,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const BlankImage()),
            ),
          ),
         /* Positioned(
            right: -10,
            top: -10,
            child: IconButton(
              iconSize: 10,
              icon: CircleAvatar(
                minRadius: 12,
                backgroundColor: Colors.black,
                child: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),*/
        ],
      ),
    );
  }
}

class BlankImage extends StatelessWidget {
  const BlankImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          color: AppColor.containerGrey,
          borderRadius: BorderRadius.circular(10)),
      child: const Center(
        child: AppText(
          text: "Choose Photo",
        ),
      ),
    );
  }
}
