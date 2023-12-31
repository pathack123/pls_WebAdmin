import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  static const String routeName = '\CategoriesScreen';

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
 
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  String? fileName;

  late String categoryName;

  _pickImage() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.image);

    if (result != null) {
      setState(() {

        fileName = result.files.first.name;
      });
    }
  }

  _uploadCategoriesBannerToStorage(dynamic image) async {
  
  }

  uploadCategory()  {
   
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
              ),
            ),
            Divider(
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
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.yellow.shade900),
                          onPressed: () {
                            _pickImage();
                          },
                          child: Text("Upload Image")),
                    ],
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    width: 200,
                    child: TextFormField(
                      onChanged: (value) {
                        categoryName = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Category Name Must not be empty';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter Category Name',
                        hintText: 'Enter Category Name',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow.shade900),
                    onPressed: () {
                      uploadCategory();
                    },
                    child: Text("Save")),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
