import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:movie_app/app/data/provider/character_listProvider.dart';
import 'package:movie_app/app/module/characters_list_screen/controller/character_list_controller.dart';

class CharacterListBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
     CharacterListProvider(),
    );
    Get.put(
      CharacterListController(),
    );
  }
}
