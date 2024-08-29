import 'package:flutter/cupertino.dart';

import '../../../../core/values/app_colors.dart';

Widget characterInfo(String title, String value) {
  return RichText(
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    text: TextSpan(
      children: [
        TextSpan(
          text: title,
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            //fontSize: 18,
          ),
        ),
        TextSpan(
          text: value,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}