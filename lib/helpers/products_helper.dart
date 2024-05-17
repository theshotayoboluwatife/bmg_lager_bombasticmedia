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

  Future<void> uploadImageToFireStore(XFile? imageToUpload) async {
    if (imageToUpload != null) {
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      Reference storageReference = FirebaseStorage.instance.ref().child('images/$fileName');

      UploadTask uploadTask = storageReference.putFile(File(imageToUpload.path));
      TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
      String imageUrl = await taskSnapshot.ref.getDownloadURL();

      await FirebaseFirestore.instance
          .collection('images')
          .add({'url': imageUrl});

      print('Image uploaded successfully!');
    } else {
      print('No image picked!');
    }
  }


}