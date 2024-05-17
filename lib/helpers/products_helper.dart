import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class ProductHelper{

  static Future<XFile?> pickImage() async {
    final ImagePicker picker = ImagePicker();
    XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery, imageQuality: 10,);
    return pickedImage;
  }

 static Future<void> uploadImagesToFireStore(List<XFile?> imagesToUpload) async {
    var imagesToAdd = imagesToUpload;
    for (var image in imagesToAdd) {
      try {
        if (image != null) {
          String fileName = DateTime.now().millisecondsSinceEpoch.toString();
          Reference storageReference = FirebaseStorage.instance.ref().child('images/$fileName');
          UploadTask uploadTask = storageReference.putFile(File(image.path));
          TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
          String imageUrl = await taskSnapshot.ref.getDownloadURL();

          await FirebaseFirestore.instance
              .collection('images')
              .add({'url': imageUrl});

          print('Image uploaded successfully!');
        } else {
          print('No image picked!');
        }
      } catch (e) {
        print('Error uploading image: $e');
      }
    }

  }


}