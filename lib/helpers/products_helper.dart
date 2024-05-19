import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class ProductHelper {

  static List<XFile?>? imagesToUpload = [];


  static Future<XFile?> pickImage() async {
    final ImagePicker picker = ImagePicker();
    XFile? pickedImage = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 10,
    );
    return pickedImage;
  }

  static Future<void> uploadImagesToFireStore() async {
    try {
      for (var image in imagesToUpload!) {
        if (image != null) {
          String fileName = DateTime.now().millisecondsSinceEpoch.toString();
          Reference storageReference =
              FirebaseStorage.instance.ref().child('images/$fileName');
          UploadTask uploadTask = storageReference.putFile(File(image.path));
          TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
          String imageUrl = await taskSnapshot.ref.getDownloadURL();

           /*FirebaseFirestore.instance
              .collection('images')
              .add({'url': imageUrl});*/
          print('!!!!!!!!!!!!!!!!!!!!!!!!!---------------------------!');
          print('!!!!!!!!!!!!!!!!!!!!!!!!!---------------------------!');
          print('!!!!!!!!!!!!!!!!!!!!!!!!!---------------------------!');
          print('!!!!!!!!!!!!!!!!!!!!!!!!!---------------------------!');
          print('!!!!!!!!!!!!!!!!!!!!!!!!!---------------------------!');
          print('!!!!!!!!!!!!!!!!!!!!!!!!!---------------------------!');
          print('!!!!!!!!!!!!!!!!!!!!!!!!!---------------------------!');
          print('!!!!!!!!!!!!!!!!!!!!!!!!!---------------------------!');
          print('!!!!!!!!!!!!!!!!!!!!!!!!!---------------------------!');
          print('!!!!!!!!!!!!!!!!!!!!!!!!!---------------------------!');
          print(imagesToUpload);
          print('Image $image uploaded successfully!');
        } else {
          print('No image picked!');
        }
      }
    } catch (e) {
      print('Error uploading image: $e');
    }
  }
}
