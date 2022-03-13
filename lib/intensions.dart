// ignore_for_file: camel_case_types, avoid_print

import 'package:delta/campaigns.dart';
import 'package:flutter/material.dart';

import 'main.dart';

// ignore: must_be_immutable
class Intensions extends StatefulWidget {
  Intensions({Key? key}) : super(key: key);

  String selectedParty = 'Con';

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _intensionState();
}

enum radioEnums { willNotVote, anti, callBack, wontSay, noneOfTheAbove }

class _intensionState extends State<Intensions> {
  List items = [
    {'label': ('Conservative'), 'colour': ('yellow'), 'shortName': ('Con')},
    {'label': ('Labour'), 'colour': ('yellow'), 'shortName': ('lab')},
    {'label': ('Liberal Democrat'), 'colour': ('yellow'), 'shortName': ('lib')},
    {
      'label': ('Scottish national'),
      'colour': ('yellow'),
      'shortName': ('Sco')
    },
    {'label': ('Plaid Cymru'), 'colour': ('yellow'), 'shortName': ('pla')}
  ];
  String dropdownValue = 'Conservative';
  String selectedShortName = 'Con';
  double currentSliderValue = 3;
  radioEnums? _selectedRadio = radioEnums.noneOfTheAbove;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Campaigns())),
          ),
          title: const Text("Intenstion"),
        ),
        body: Container(
            margin: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 40,
                            height: 40,
                            color: Colors.yellow,
                            child: Center(child: Text(selectedShortName)),
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
                              'Voting Intentions',
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
                        Expanded(
                            flex: 6,
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              width: 48 * 5.5,
                              height: (48),
                              child: DropdownButton(
                                value: dropdownValue,
                                elevation: 16,
                                isExpanded: true,
                                items: items.map<DropdownMenuItem<String>>(
                                    (dynamic value) {
                                  return DropdownMenuItem<String>(
                                    value: value['label'],
                                    child: Text(value['label']),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                    final index = items.indexWhere((element) =>
                                        element['label'] == newValue);
                                    selectedShortName =
                                        items[index]['shortName'];
                                  });
                                },
                              ),
                            )),
                      ],
                    ), // ROW DROP DOWN
                    Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            margin: const EdgeInsets.all(30),
                            width: 48 * 5.5,
                            height: (48),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular((48 * .3)),
                              ),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF00c6ff),
                                    Color(0xFF0072ff),
                                  ],
                                  begin: FractionalOffset(0.0, 0.0),
                                  end: FractionalOffset(1.0, 1.00),
                                  stops: [0.0, 1.0],
                                  tileMode: TileMode.clamp),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  48 * .2, 2, 48 * .2, 2),
                              child: Row(
                                children: <Widget>[
                                  const Text(
                                    '0',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 48 * .3,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 48 * .1,
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor:
                                              Colors.white.withOpacity(1),
                                          inactiveTrackColor:
                                              Colors.white.withOpacity(.5),

                                          trackHeight: 4.0,
                                          thumbShape:
                                              const CustomSliderThumbCircle(
                                                  thumbRadius: 48 * .4,
                                                  min: 0,
                                                  max: 5),
                                          overlayColor:
                                              Colors.white.withOpacity(.4),
                                          //valueIndicatorColor: Colors.white,
                                          activeTickMarkColor: Colors.white,
                                          inactiveTickMarkColor:
                                              Colors.red.withOpacity(.7),
                                        ),
                                        child: Slider(
                                            min: 0,
                                            max: 5,
                                            value: currentSliderValue,
                                            onChanged: (value) {
                                              setState(() {
                                                currentSliderValue = value;
                                              });
                                            }),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 48 * .1,
                                  ),
                                  const Text(
                                    '5',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 48 * .3,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ), // ROW - SLIDER
                    Row(
                      children: [
                        Expanded(
                            flex: 8,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: const Text('Will Not Vote'),
                                  leading: Radio<radioEnums>(
                                    value: radioEnums.willNotVote,
                                    groupValue: _selectedRadio,
                                    onChanged: (radioEnums? value) {
                                      setState(() {
                                        _selectedRadio = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text('Anti'),
                                  leading: Radio<radioEnums>(
                                    value: radioEnums.anti,
                                    groupValue: _selectedRadio,
                                    onChanged: (radioEnums? value) {
                                      setState(() {
                                        _selectedRadio = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text('Call Back'),
                                  leading: Radio<radioEnums>(
                                    value: radioEnums.callBack,
                                    groupValue: _selectedRadio,
                                    onChanged: (radioEnums? value) {
                                      setState(() {
                                        _selectedRadio = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text("Won't Say"),
                                  leading: Radio<radioEnums>(
                                    value: radioEnums.wontSay,
                                    groupValue: _selectedRadio,
                                    onChanged: (radioEnums? value) {
                                      setState(() {
                                        _selectedRadio = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text("None of the above"),
                                  leading: Radio<radioEnums>(
                                    value: radioEnums.noneOfTheAbove,
                                    groupValue: _selectedRadio,
                                    onChanged: (radioEnums? value) {
                                      setState(() {
                                        _selectedRadio = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                                  context, "campaigns");
                            },
                            child: const Text("Campaigns"),
                          ),
                        ),
                        Container(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, "findProperty");
                            },
                            child: const Text("submit"),
                          ),
                        )
                      ],
                    )
                  ],
                ))));
  }
}

class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final int min;
  final int max;

  const CustomSliderThumbCircle({
    required this.thumbRadius,
    this.min = 0,
    this.max = 5,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    SliderThemeData? sliderTheme,
    TextDirection? textDirection,
    double? value,
    double? textScaleFactor,
    Size? sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color = Colors.white //Thumb Background Color
      ..style = PaintingStyle.fill;

    TextSpan span = TextSpan(
      style: TextStyle(
        fontSize: thumbRadius * .8,
        fontWeight: FontWeight.w700,
        color: sliderTheme?.thumbColor, //Text Color of Value on Thumb
      ),
      text: getValue(value!),
    );

    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    Offset textCenter =
        Offset(center.dx - (tp.width / 2), center.dy - (tp.height / 2));

    canvas.drawCircle(center, thumbRadius * .9, paint);
    tp.paint(canvas, textCenter);
  }

  String getValue(double value) {
    return (min + (max - min) * value).round().toString();
  }
}
