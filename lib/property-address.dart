// ignore_for_file: must_be_immutable

import 'package:delta/main.dart';
import 'package:delta/property.dart';
import 'package:flutter/material.dart';

class PropertyAddress extends StatefulWidget {
  PropertyAddress({Key? key}) : super(key: key);

  String selectedParty = 'Con';

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _propertyAddressState();
}

// ignore: camel_case_types
class _propertyAddressState extends State<PropertyAddress> {
  final List<DropdownMenuItem> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Property()))),
          title: const Text("Find Address"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () =>
                    {Navigator.pushReplacementNamed(context, "issues")},
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 40,
                              height: 40,
                              color: Colors.yellow,
                              child: Center(child: Text('Ch')),
                              margin: const EdgeInsets.all(15)),
                          const Text(
                            'Dharmil Parekh',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 40,
                            child: Center(
                                child: Text('203, strone road, london E78ET')),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: const Center(child: Text('Voted: 9/9')),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
