import 'package:flutter/material.dart';
import 'package:mvvm_test/screens/home_screen.dart';
import 'package:mvvm_test/viewmodel/view_model.dart';
import 'package:provider/provider.dart';

void main() {

   runApp(
    ChangeNotifierProvider<KeisanViewModel>(
        create: (context) => KeisanViewModel(),
        child: const MyApp())
     );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MVVM Test",
      home: HomeScreen(),
    );
  }
}
