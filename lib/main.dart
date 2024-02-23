import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pop_quiz/model/services/navigation_service.dart';
import 'package:pop_quiz/utils/apptheme.dart';
import 'package:pop_quiz/utils/locator.dart';
import 'package:pop_quiz/utils/routes.dart';
import 'package:pop_quiz/view_ui/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:pop_quiz/view_model/providers/quiz_viewmodel.dart';


void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown,],
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<QuizModel>(create: (_) => QuizModel()),
      ],
      child: MaterialApp(
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: (settings) => generateRoute(settings),
        // title: 'Flutter Demo',
        theme: locator<AppTheme>().lightTheme,
        darkTheme: locator<AppTheme>().darkTheme,
        themeMode: locator<AppTheme>().themeMode,
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //   useMaterial3: true,
        // ),
        home: const SplashScreen(),
      ),
    );
  }
}
