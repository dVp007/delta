// ignore_for_file: camel_case_types, must_be_immutable

import 'package:delta/intensions.dart';
import 'package:delta/property-address.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Issues extends StatefulWidget {
  Issues({Key? key}) : super(key: key);

  String selectedParty = 'Con';

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _issuesState();
}

class _issuesState extends State<Issues> {
  String selectedShortName = 'Con';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PropertyAddress()))),
          title: const Text("Issues"),
        ),
        body: Container(
            margin: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          color: Colors.yellow,
                          child: Center(child: Text(selectedShortName)),
                          margin:
                              const EdgeInsets.only(right: 20.0, bottom: 20.0)),
                      const Text(
                        'Dharmil Parekh',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: const <Widget>[
                          SizedBox(
                              width: 370,
                              height: 275,
                              child: Card(
                                  shadowColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  color: Colors.white,
                                  child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: TextField(
                                        maxLines: 8,
                                        decoration: InputDecoration.collapsed(
                                            hintText: "Enter your Issues",
                                            fillColor: Colors.grey,
                                            hintStyle: TextStyle(fontSize: 18)),
                                      )))),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, "intensions");
                          },
                          child: const Text("Intensions"),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, "campaigns");
                          },
                          child: const Text("Campaigns"),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, "campaigns");
                          },
                          child: const Text("submit"),
                        ),
                      )
                    ],
                  )
                ]))));
  }
}
