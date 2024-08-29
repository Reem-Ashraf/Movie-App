import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:movie_app/app/data/models/character_list_model.dart';
import 'package:movie_app/app/module/character_details_screen/controller/character_details_controller.dart';
import 'package:movie_app/app/module/character_details_screen/view/widget/build_divider.dart';
import 'package:movie_app/app/module/character_details_screen/view/widget/build_sliver_app_bar.dart';
import 'package:movie_app/app/module/character_details_screen/view/widget/text_span_widget.dart';

import '../../../core/values/app_colors.dart';
import '../../../data/models/character_model.dart';

class CharacterDetails extends GetView<CharacterDetailsController>  {
  CharacterDetails({Key? key,required this.characterModelDetails}) : super(key: key);
  Results characterModelDetails;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(),
          SliverList(delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  characterInfo('Gender : ', characterModelDetails.gender!),
                  buildDivider(200),
                  characterInfo(
                      'Status : ', characterModelDetails.status!),
                  buildDivider(210),
                  characterInfo('species : ',
                      characterModelDetails.species!),
                  buildDivider(220),

                ],),
            ),
            SizedBox(height: 500,)
          ]))
        ],
      ),
    );
  }
}
