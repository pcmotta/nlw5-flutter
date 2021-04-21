import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget(): super(
    preferredSize: Size.fromHeight(250), 
    child: Container(
      child: Stack(
        children: [
          Container(
            height: 170,
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              gradient: AppGradients.linear
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(text: "Olá, ", style: AppTextStyles.title, children: [
                  TextSpan(text: "PC Motta", style: AppTextStyles.titleBold)
                ])),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr6WIJp25ZhlhpYnCiu0qe9SwtOrmN6SLzjw&usqp=CAU"))
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0, 0.8),
            child: ScoreCardWidget()
          )
        ],
      ),
    )
  );
}