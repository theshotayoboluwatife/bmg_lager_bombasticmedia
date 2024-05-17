import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../helpers/products_helper.dart';
import '../utility/constants.dart';
import 'app_text.dart';

class DottedImageCard extends StatefulWidget {
  final List<XFile> imagesList;

  const DottedImageCard({
    Key? key,
    required this.imagesList,
  }) : super(key: key);

  @override
  _DottedImageCardState createState() => _DottedImageCardState();
}

class _DottedImageCardState extends State<DottedImageCard> {
  XFile? _pickedFile;

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
              child: InkWell(
                onTap: () async {
                  try {
                    var pickedFileHolder = await ProductHelper.pickImage();
                    print(_pickedFile);
                    setState(() {
                      _pickedFile = pickedFileHolder;
                      widget.imagesList.add(_pickedFile!);
                    });
                    print(_pickedFile);

                    print(widget.imagesList);
                  } catch (e) {
                    print(e);
                    rethrow;
                  }
                },
                child: Container(
                    padding: const EdgeInsets.all(2.0),
                    width: 80,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: _pickedFile == null
                        ? const BlankImage()
                        : FittedBox(
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Image.file(
                                File(_pickedFile!.path),
                                fit: BoxFit.cover,
                                height: 75,
                                width: 80,
                              ),
                            ))),
              ),
            ),
          ),
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
