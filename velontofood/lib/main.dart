import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velontofood/screens/home_page.dart';
import 'package:velontofood/screens/task_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
        child:MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            HomePage.id :  (context) => const HomePage(),
            TaskInfoPage.id :  (context) => const TaskInfoPage(),
          },
          initialRoute: HomePage.id,
        ) );
  }
}

