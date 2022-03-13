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
              margin: const EdgeInsets.only(bottom: 15),
              child: DropdownSearch<String>(
                  mode: Mode.DIALOG,
                  label: 'Wards',
                  items: ["Premrose Hill", "Bloomsbury", 'Belsize'],
                  onChanged: print,
                  showSearchBox: true,
                  selectedItem: "Premrose Hill"),
            ),
            Container(
              width: 360,
              margin: const EdgeInsets.only(bottom: 15),
              child: DropdownSearch<String>(
                  mode: Mode.DIALOG,
                  label: 'District Codes',
                  items: ["TA", "TB", 'TC', 'QA', 'QB', 'QC'],
                  onChanged: print,
                  showSearchBox: true,
                  selectedItem: "TA"),
            ),
            Container(
              width: 360,
              margin: const EdgeInsets.only(bottom: 15),
              child: DropdownSearch<String>(
                  mode: Mode.DIALOG,
                  label: 'Streets',
                  items: const [
                    "Adelaide Road",
                    "Briary Close",
                    'Brocas Close',
                    'Elliot Square',
                    'Elsworthy Rise'
                  ],
                  onChanged: print,
                  showSearchBox: true,
                  selectedItem: "Elliot Square"),
            ),
            Container(
              width: 360,
              margin: const EdgeInsets.only(bottom: 15),
              child: DropdownSearch<String>(
                  label: 'Properties',
                  mode: Mode.DIALOG,
                  items: const [
                    "1 Elliot Square, London NW 3SU",
                    "3 Elliot Square, London NW 3SU",
                    '5 Elliot Square, London NW 3SU',
                    '6 Elliot Square, London NW 3SU',
                    '7 Elliot Square, London NW 3SU'
                  ],
                  onChanged: print,
                  showSearchBox: true,
                  selectedItem: "3 Elliot Square, London NW 3SU"),
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
