import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:finalproject/first.dart';
import 'package:finalproject/second.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<Dashboard> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(
        title: Text('TASK HERO')
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            const Text(
              'ADD NEW TASK',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.purple),
            ),
            SizedBox(height: 16),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty ) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'TITLE',
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'DESCRIPTION',
              ),
            ),
            SizedBox(height: 16),
            InputDatePickerFormField(
              firstDate: DateTime.now(),
              lastDate:DateTime(2025) ,
              initialDate: DateTime.now(),
              fieldHintText: 'enter a date',
              errorInvalidText: 'please enter valid date',
              errorFormatText: 'please enter text in right format',
            ),
            SizedBox(height: 16),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ADD MEMBERS',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple[200], // background
                onPrimary: Colors.black,
              ),
              onPressed: _getImage,
              // tooltip: 'Take Photo',
              child: const Text("CHOOSE IMAGE"),
            ),
            SizedBox(height: 16),
            // Add more TextFormFields here
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple[200], // background
                onPrimary: Colors.black,
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Successfully Created the Account')),
                  );
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/dashboard');
                }
              },

              child: const Text('Submit'),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
  File? _image;
  List<XFile>? _imageFileList;
  void _getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedImage = await _picker.pickImage(
        source: ImageSource.camera);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        if (kDebugMode) {
          print("No image picked");
        }
      }
    });
  }
}
