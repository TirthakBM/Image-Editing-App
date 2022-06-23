import 'package:flutter/material.dart';
import 'package:image_editor/screens/edit_image_screen.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Image Editing App',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            Center(
              child: IconButton(
                icon: const Icon(
                  Icons.upload_file,
                ),
                onPressed: () async {
                  XFile? file = await ImagePicker().pickImage(
                    source: ImageSource.gallery,
                  );
                  if (file != null) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EditImageScreen(
                          selectedImage: file.path,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
