import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app_ui/bottom_navbar/primary_bottom_nav_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setStatusBarColor();
  setVerticalOrientation();
  runApp(const MyApp());
}

setStatusBarColor() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
}

setVerticalOrientation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          platform: TargetPlatform.iOS,
          scaffoldBackgroundColor: Colors.white),
      home: const BottomNavBarScreen(),
    );
  }
}
