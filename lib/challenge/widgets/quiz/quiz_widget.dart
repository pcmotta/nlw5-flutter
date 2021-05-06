import 'package:devquiz/challenge/widgets/answer/answer_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final VoidCallback onChange;

  const QuizWidget({Key? key, required this.question, required this.onChange}): super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(widget.question.title, style: AppTextStyles.heading),
          SizedBox(
            height: 24,
          ),

          ...widget.question.answers.asMap().map((index, answer) => MapEntry(
            index,
            AnswerWidget(
              answer: answer, 
              disabled: indexSelected != -1,
              onTap: () {
                indexSelected = index;

                setState(() {});
                Future.delayed(Duration(seconds: 2))
                  .then((value) => widget.onChange());
              },
              isSelected: indexSelected == index)
          )).values.toList()
        ],
      ),
    );
  }
}