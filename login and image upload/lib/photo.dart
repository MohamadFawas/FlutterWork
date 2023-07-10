import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class LearnFlutterPage extends StatefulWidget {
  LearnFlutterPage({super.key});
  State<LearnFlutterPage> createState() => _LearnFlutterPage();
}

class _LearnFlutterPage extends State<LearnFlutterPage> {
  File? _imageFile;

  Future<void> _captureImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _imageFile = File(image.path);
      });
    }
  }

  Future<void> _selectImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _imageFile = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _captureImage,
              child: Text('Capture Image'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _selectImage,
              child: Text('Select from Gallery'),
            ),
            SizedBox(height: 16.0),
            if (_imageFile != null) Image.file(_imageFile!),
          ],
        ),
      ),
    );
  }
}
