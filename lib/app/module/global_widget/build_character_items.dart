import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/app/app_routes/app_routes.dart';
import 'package:movie_app/app/data/models/character_list_model.dart';

import '../../core/values/app_colors.dart';

class BuildCharacterItem extends StatelessWidget {
  BuildCharacterItem({Key? key,required this.characterModelResult}) : super(key: key);
  final Results characterModelResult;

  //late final Results character;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(color: AppColors.white,borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: (){
          // //Navigator.push(context, characterDetails,arguments: characterModel);
          // Get.to(CharacterDetails(characterModelDetails: characterModelResult,));\
          //Get.toNamed(Routes.CHARACTERDETAILS,arguments: {"result": characterModelResult});
        },
        child: GridTile(footer: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          color: Colors.black54,
          child: Text("${characterModelResult.name}",style: const TextStyle(
            height: 1.5,overflow: TextOverflow.ellipsis,
            fontSize: 16,fontWeight: FontWeight.bold,

          ),textAlign: TextAlign.center,),
        ),child: Hero(
          tag: characterModelResult.id!,
          child: Container(
            color: AppColors.grey,
            child: characterModelResult.image!.isNotEmpty?FadeInImage.assetNetwork(
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                placeholder: "assets/images/Animation - 1711166548301.gif", image:characterModelResult.image!):
            Lottie.asset('assets/images/Animation - 1711166548301.json'),
          ),
        ),),
      ),
    );
  }
}
