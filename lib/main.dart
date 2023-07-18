
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'dart:io';

import 'package:webadmin/views/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainScreen(),
      builder: EasyLoading.init(),
    );
  }
}
