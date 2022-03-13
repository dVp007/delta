import '../model/option.dart';
import '../model/question.dart';

final questions = [
  Question(
    text: 'Keeping Council Tax Low',
    options: [
      const Option(code: 'Yes', text: 'Yes', isCorrect: false),
      const Option(code: 'No', text: 'No', isCorrect: true),
    ],
    solution: 'Yes',
    selectedOption: const Option(
      code: 'Yes',
      text: 'Yes',
    ),
  ),
  Question(
      text: 'Recycling and rubbish collection',
      options: [
        const Option(code: 'Yes', text: 'Yes', isCorrect: false),
        const Option(code: 'No', text: 'No', isCorrect: true),
      ],
      solution: 'Yes',
      selectedOption: const Option(
        code: 'Yes',
        text: 'Yes',
      )),
  Question(
    text: 'tackling Crime and anti social behavior',
    options: [
      const Option(code: 'Yes', text: 'Yes', isCorrect: false),
      const Option(code: 'No', text: 'No', isCorrect: true),
    ],
    solution: 'Yes',
    selectedOption: const Option(
      code: 'Yes',
      text: 'Yes',
    ),
  )
];
