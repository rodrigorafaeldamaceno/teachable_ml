import 'dart:io';

import 'package:image_picker/image_picker.dart';

class CameraHelper {
  static final _picker = ImagePicker();

  static Future<File> pickImage(
      {ImageSource source: ImageSource.camera}) async {
    var pickedFile = await _picker.getImage(source: source);
    return File(pickedFile.path);
  }
}
