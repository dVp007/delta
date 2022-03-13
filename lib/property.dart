import 'package:delta/main.dart';
import 'package:flutter/material.dart';
//import 'package:dropdown_search/dropdown_search.dart';
import './data/question.dart';

class Property extends StatefulWidget {
  Property({Key? key}) : super(key: key);

  String selectedParty = 'Con';

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _propertyState();
}

class _propertyState extends State<Property> {
  final List<DropdownMenuItem> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp()))),
      title: const Text("Issues"),
    ));
  }
}
