import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:movie_app/app/data/models/character_list_model.dart';
import 'package:movie_app/app/module/character_details_screen/binding/character_details_binding.dart';
import 'package:movie_app/app/module/character_details_screen/view/charcter_details_screen.dart';
part 'page_routes.dart';
late Results characterDetails;
class AppRoutes{
  AppRoutes._();
//  late Results _characterDetails;
  static final routes = [
  GetPage(
  name: _Paths.CHARACTERDETAILS,
  page: () => CharacterDetails(characterModelDetails:characterDetails ,),
  binding: CharacterDetailsBinding(),

  ),];
}