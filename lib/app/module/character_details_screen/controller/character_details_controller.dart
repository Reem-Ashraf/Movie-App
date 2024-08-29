import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:movie_app/app/data/models/character_model.dart';
import 'package:movie_app/app/data/provider/character_details_provider.dart';
import 'package:movie_app/app/data/provider/character_listProvider.dart';
import 'package:get/get.dart';

import '../../../data/models/character_list_model.dart';

class CharacterDetailsController extends GetxController {
  late CharacterDetailsProvider characterDetailsProvider;

  CharacterModel? characterModel;
  RxBool loading = false.obs;

  final Results results = Get.arguments["result"];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    characterDetailsProvider = Get.find<CharacterDetailsProvider>();
    getCharacter();
  }

  Future<void> getCharacter() async {
    try {
      loading.value = true;
      characterModel = await characterDetailsProvider.getCharacterList();
      if (characterModel!= null) {
        loading.value = false;
      }
    } catch (e) {
      loading.value = false;
      print("errro ${e.toString()}");
    }
  }
}
