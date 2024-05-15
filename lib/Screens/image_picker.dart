import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadImagePicker extends StatefulWidget {
  const UploadImagePicker({super.key});

  @override
  State<UploadImagePicker> createState() => _UploadImagePickerState();
}

ImagePicker imagePicker = ImagePicker();

File? fileimage;

class _UploadImagePickerState extends State<UploadImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Image Picker',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                image: (fileimage != null)
                    ? DecorationImage(
                    image: FileImage(fileimage!), fit: BoxFit.cover)
                    : null,
                color: Colors.blue,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () async {
                    XFile? xFileimage =
                    await imagePicker.pickImage(source: ImageSource.camera);
                    setState(() {
                      fileimage = File(xFileimage!.path);
                    });
                  },
                  icon: const Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                    size: 70,
                  )),
              IconButton(
                  onPressed: () async {
                    XFile? xFileimage = await imagePicker.pickImage(
                        source: ImageSource.gallery);
                    setState(() {
                      fileimage = File(xFileimage!.path);
                    });
                  },
                  icon: const Icon(
                    Icons.image,
                    color: Colors.black,
                    size: 70,
                  ))
            ],
          ),
          Container(
            height: 60,
            width: 380,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: const Center(
              child: Text(
                'Upload Me',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }
}