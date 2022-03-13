import 'package:delta/main.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
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
          title: const Text("Find Property"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: 360,
              margin: const EdgeInsets.only(bottom: 10),
              child: DropdownSearch<String>(
                  mode: Mode.DIALOG,
                  items: ["Brazil", "Tunisia", 'Canada'],
                  onChanged: print,
                  showSearchBox: true,
                  selectedItem: "Brazil"),
            ),
            Container(
              width: 360,
              margin: const EdgeInsets.only(bottom: 10),
              child: DropdownSearch<String>(
                  mode: Mode.DIALOG,
                  items: ["Brazil", "Tunisia", 'Canada'],
                  onChanged: print,
                  showSearchBox: true,
                  selectedItem: "Brazil"),
            ),
            Container(
              width: 360,
              margin: const EdgeInsets.only(bottom: 10),
              child: DropdownSearch<String>(
                  mode: Mode.DIALOG,
                  items: ["Brazil", "Tunisia", 'Canada'],
                  onChanged: print,
                  showSearchBox: true,
                  selectedItem: "Brazil"),
            ),
            Container(
              width: 360,
              margin: const EdgeInsets.only(bottom: 10),
              child: DropdownSearch<String>(
                  mode: Mode.DIALOG,
                  items: ["Brazil", "Tunisia", 'Canada'],
                  onChanged: print,
                  showSearchBox: true,
                  selectedItem: "Brazil"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () => {
                          Navigator.pushReplacementNamed(
                              context, "propertyAddress")
                        },
                    child: const Text('Submit'))
              ],
            )
          ]),
        ));
  }
}
