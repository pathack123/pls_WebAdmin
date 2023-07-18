import 'dart:io';


import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:webadmin/views/screens/side_bar_screens/widgets/banner_widgets.dart';

class UploadBannerScreen extends StatefulWidget {
  static const String routeName = '\UploadBannerScreen';

  const UploadBannerScreen({super.key});

  @override
  State<UploadBannerScreen> createState() => _UploadBannerScreenState();
}

class _UploadBannerScreenState extends State<UploadBannerScreen> {
  dynamic _image;
  String? fileName;

  pickImage() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.image);

    if (result != null) {
      setState(() {
        _image = result.files.first.bytes;

        fileName = result.files.first.name;
      });
    }
  }

  _uploadBannerToStorage(dynamic image) async {
    
  }

  uploadToFireStore() async {}

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Banner",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        border: Border.all(color: Colors.grey.shade800),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      
                            ),
                  
                  
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.yellow.shade900),
                        onPressed: () {
                          pickImage();
                        },
                        child: const Text("Upload Image"))
                  ],
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(primary: Colors.yellow.shade900),
                  onPressed: () {
                    uploadToFireStore();
                  },
                  child: const Text("Save")),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "Banners",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        
        ],
      ),
    );
  }
}
