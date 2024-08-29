import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/module/characters_list_screen/controller/character_list_controller.dart';

import '../../../core/values/app_colors.dart';
import '../../global_widget/build_character_items.dart';

class CharacterScreens extends GetView<CharacterListController> {
  const CharacterScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.loading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : controller.characterListModel?.results != null? SizedBox(
              child:  GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          childAspectRatio: 2 / 3,
        ),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: controller.characterListModel!.results!.length,
        itemBuilder: (BuildContext context, index) {
          return BuildCharacterItem(
             characterModelResult: controller.characterListModel!.results![index],
          );
        })
            ): SizedBox()) ,
    );
  }
}

// class CharacterScreens extends StatefulWidget {
//   const CharacterScreens({Key? key}) : super(key: key);
//   static String id = "CharacterScreens";
//
//   @override
//   State<CharacterScreens> createState() => _CharacterScreensState();
// }
//
// class _CharacterScreensState extends State<CharacterScreens> {
//   List<dynamic> characterList=[];
//   List <dynamic> characterModel=[];
//   // late CharacterModel characters;
//   bool isSearch=false;
//   TextEditingController searchController=TextEditingController();
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // print("${CharacterCubit.get(context).characterList.toString()}.........");
//   //  CharacterCubit.get(context).getAllCharacters();
//   }
//   Widget buildTextField(){
//     return TextField(
//       controller: searchController,
//       cursorColor: AppColors.grey,
//       decoration: InputDecoration(
//         hintText: "Search The Character",
//         border: InputBorder.none,
//         hintStyle: TextStyle(color: AppColors.grey,fontSize: 18),
//       ),
//       onChanged: (characterSearch){
//         addSearchItemToSearchedList(characterSearch);
//       },
//
//
//     );
//   }
//   ///
//   // Widget BuilCharacterBlocWidget() {
//   //   var cubit = CharacterCubit.get(context);
//   //   return BlocBuilder<CharacterCubit, CharacterState>(
//   //       builder: (context, state) {
//   //         if (state is CharacterSuccess) {
//   //           characterList = state!.character;
//   //           return buildListCharacterSuccess();
//   //         } else {
//   //           return Center(
//   //             child: CircularProgressIndicator(
//   //               color: AppColors.yellow,
//   //             ),
//   //           );
//   //         }
//   //       });
//   // }
//   void addSearchItemToSearchedList(String searchItem){
//     characterModel=characterList.where((character) =>
//         character.name.toLowerCase().startsWith(searchItem))
//         .toList();
//     setState(() {
//
//     });
//   }
//   List<Widget> buildAppBarAction(){
//     if(isSearch){
//       return [
//         IconButton(onPressed: (){
//           clearSearch();
//           Navigator.pop(context);
//           //todo handling
//         }, icon: Icon(Icons.close,color: AppColors.grey,))
//       ];
//     }else{
//       return [
//         IconButton(onPressed: (){
//           startSearch();
//         }, icon: Icon(Icons.search_rounded))
//       ];
//     }
//   }
//   void startSearch(){
//     ModalRoute.of(context)!.addLocalHistoryEntry(LocalHistoryEntry(
//         onRemove: stopSearch
//     ));
//     setState(() {
//       isSearch=true;
//     });
//   }
//   void stopSearch(){
//     clearSearch();
//     setState(() {
//       isSearch=false;
//     });
//   }
//   clearSearch(){
//     setState(() {
//       searchController.clear();
//     });
//   }
//   Widget buildAppBarItemTitle(){
//     return Text(
//       "Character",
//       style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.bold,fontSize: 20),
//     );
//   }
//   ///
//   Widget buildListCharacterSuccess() {
//     //var cubit = CharacterCubit.get(context);
//     return SingleChildScrollView(
//       child: Container(
//         color: AppColors.grey,
//         child: Column(
//           children: [buildCharacterItem()],
//         ),
//       ),
//     );
//   }
//
//   ///
//   Widget buildCharacterItem() {
//   //  var cubit = CharacterCubit.get(context);
//     return GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 1,
//           mainAxisSpacing: 1,
//           childAspectRatio: 2 / 3,
//         ),
//         padding: EdgeInsets.zero,
//         shrinkWrap: true,
//         physics: ClampingScrollPhysics(),
//         itemCount: isSearch?characterModel.length:characterList.length,
//         itemBuilder: (BuildContext context, index) {
//           return BuildCharacterItem(
//             characterModel: isSearch?characterModel[index]:characterList[index],
//           );
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.white,
//       appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: AppColors.yellow,
//           actions: buildAppBarAction(),
//           title: isSearch?buildTextField():buildAppBarItemTitle()),
//       body: buildCharacterItem(),
//     );
//   }
// }
