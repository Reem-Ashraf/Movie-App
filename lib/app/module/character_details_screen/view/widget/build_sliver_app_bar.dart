import 'package:flutter/material.dart';

import '../../../../core/values/app_colors.dart';
import '../../../../data/models/character_list_model.dart';
late Results _characterModelDetails;
Widget buildSliverAppBar(){
  return SliverAppBar(
    backgroundColor: AppColors.grey,
    expandedHeight: 600,
    pinned: true,
    stretch: true,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      titlePadding: EdgeInsets.symmetric(vertical: 20),
      title: Text(_characterModelDetails.name!,style: TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18
      ),),
      background: Hero(
          tag: _characterModelDetails.id!.toInt(),
          child: Image.network(_characterModelDetails.image!,fit: BoxFit.cover,)),
    ),

  );

}