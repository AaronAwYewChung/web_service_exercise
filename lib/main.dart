import 'package:flutter/material.dart';
import 'package:web_service_exercise/screens/pet_screen.dart';
import 'package:provider/provider.dart';
import 'package:web_service_exercise/models/pets_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetsData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Web Service',
        home: PetScreen(),
      ),
    );
  }
}
