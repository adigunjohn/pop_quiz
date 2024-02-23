import 'package:get_it/get_it.dart';
import 'package:pop_quiz/model/services/navigation_service.dart';
import 'package:pop_quiz/utils/apptheme.dart';

GetIt locator = GetIt.instance;
void setupLocator(){
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => AppTheme());

}
