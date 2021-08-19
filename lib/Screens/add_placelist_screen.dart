import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Widgets/image_input.dart';

class AddPlace extends StatefulWidget {
  static const RouteName = '/add-route';
  const AddPlace({Key? key}) : super(key: key);

  @override
  _AddPlaceState createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  final _textfieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Place'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: _textfieldController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImageInput(),
                    TextField(),
                  ],
                ),
              ),
            ),
          ),
          RaisedButton.icon(
              color: Theme.of(context).accentColor,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              elevation: 0,
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('add place'))
        ],
      ),
    );
  }
}
