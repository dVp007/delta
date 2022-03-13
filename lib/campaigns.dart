import 'package:delta/intensions.dart';
import 'package:delta/issues.dart';
import 'package:flutter/material.dart';
import './data/question.dart';
import 'model/question.dart';
import './options-widget.dart';

// ignore: must_be_immutable
class Campaigns extends StatefulWidget {
  Campaigns({Key? key}) : super(key: key);

  String selectedParty = 'Con';

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _campaignState();
}

// ignore: camel_case_types
class _campaignState extends State<Campaigns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Issues())),
          ),
          title: const Text("Campaigns"),
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
                          child: const Center(child: Text('Con')),
                          margin: const EdgeInsets.only(
                            right: 20.0,
                          )),
                      const Text(
                        'Dharmil Parekh',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                        width: 48 * 5.5,
                        height: (48),
                        child: const Center(
                          child: Text(
                            'Campaigns',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 300,
                        height: 400,
                        child: PageView.builder(
                            itemCount: questions.length,
                            itemBuilder: (context, index) {
                              Question question = questions[index];
                              return buildQuestion(question: question);
                            }),
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
                            Navigator.pushReplacementNamed(context, "issues");
                          },
                          child: const Text("Issues"),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, "intensions");
                          },
                          child: const Text("submit"),
                        ),
                      )
                    ],
                  )
                ]))));
  }
}

Widget buildQuestion({required Question question}) => Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Text(
            question.text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 5),
          const Text(
            'Choose your answer from below',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: OptionsWidget(
              question: question,
              onClickedOption: (value) {
                print('clicked');
              },
            ),
          ),
        ],
      ),
    );
