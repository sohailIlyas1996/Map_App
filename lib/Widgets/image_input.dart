import 'dart:io';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  var a = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 100,
          decoration:
              BoxDecoration(border: Border.all(width: 1), color: Colors.grey),
          child: a != null ? Text('$a No Image Taken') : Text('No Image Taken'),
          alignment: Alignment.center,
        ),
        Expanded(
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.camera),
                label: Text('Take Picture')))
      ],
    );
  }
}
