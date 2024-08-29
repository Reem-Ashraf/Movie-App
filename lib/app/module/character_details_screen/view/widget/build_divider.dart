import 'package:flutter/material.dart';

import '../../../../core/values/app_colors.dart';

Widget buildDivider(double endIndent) {
  return Divider(
    height: 30,
    endIndent: endIndent,
    color: AppColors.yellow,
    thickness: 2,
  );
}