import 'package:DevQuiz/home/widgets/scorecard/score_card_widget.dart';

import '../../../core/app_text_styles.dart';
import '../../../core/app_gradients.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child : Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 161,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.maxFinite,
            decoration : BoxDecoration(gradient: AppGradients.linear),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(
                  text: "Olá, ",
                  style :  AppTextStyles.title,
                  children: [
                    TextSpan(
                      text: "Caio",
                      style :  AppTextStyles.titleBold
                    )
                  ]
                )),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image : DecorationImage(
                      image : NetworkImage(
                      "https://avatars.githubusercontent.com/u/33337587?v=4"
                      )
                    )
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0,1.3),
            child: ScoreCardWidget())
        ],
      ),
    )
  );
 }

