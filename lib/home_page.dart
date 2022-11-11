import 'dart:developer';
import 'dart:io';

// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class HomePage extends StatefulWidget {
  List<SharedMediaFile> files;
  HomePage({super.key, required this.files});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // ListView.builder(
          //   itemCount: widget.files.length,
          //   itemBuilder: ((context, index) => Text(widget.files[index].path)),
          // ),
          FloatingActionButton(onPressed: () async {
            if (Platform.isAndroid) {
              await Permission.storage.request();
            } else {
              await Permission.photos.request();
            }
            // FilePickerResult? result =
            //     await FilePicker.platform.pickFiles(allowMultiple: true);

            // if (result != null) {
            //   // File file = File(result.files.single.path);
            //   log("Picked File :${result.files.single.path}");
            // } else {
            //   // User canceled the picker
            // }
          })
        ],
      ),
    );
  }
}
