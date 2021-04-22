import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(
            color: AppColors.border
          )),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(AppImages.blocks)
            ),
            SizedBox(
              height: 8,
            ),
            Text("Gerenciamento de Estado", style: AppTextStyles.heading15),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("3/10", style: AppTextStyles.body11)
                ),
                Expanded(
                  flex: 3,
                  child: ProgressIndicatorWidget(
                    value: 0.3
                  ),
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}