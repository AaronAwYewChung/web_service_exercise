import 'package:flutter/material.dart';
import 'package:web_service_exercise/widgets/pet_list.dart';
import 'package:web_service_exercise/screens/add_pet_screen.dart';

class PetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web Service'),
      ),
      body: PetList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: AddPetScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
