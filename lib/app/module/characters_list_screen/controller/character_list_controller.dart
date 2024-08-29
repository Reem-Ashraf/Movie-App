import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:movie_app/app/data/provider/character_listProvider.dart';
import 'package:get/get.dart';

import '../../../data/models/character_list_model.dart';

class CharacterListController extends GetxController {
  late CharacterListProvider characterListProvider;

  CharacterListModel? characterListModel;
  RxBool loading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    characterListProvider = Get.find<CharacterListProvider>();
    getCharacterList();
  }

  Future<void> getCharacterList() async {
    try {
      loading.value = true;
      characterListModel = await characterListProvider.getCharacterList();
      if (characterListModel?.results != null) {
        loading.value = false;
      }
    } catch (e) {
      loading.value = false;
      print("errro ${e.toString()}");
    }
  }
}
