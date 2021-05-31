import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_service_exercise/models/pets_data.dart';

class AddPetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newPetName = '';
    String newPetStatus = '';

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Pets',
            style: TextStyle(
              fontSize: 30,
              color: Colors.lightBlueAccent,
            ),
            textAlign: TextAlign.center,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              hintText: 'Pet Name',
            ),
            onChanged: (newName) {
              newPetName = newName;
            },
          ),
          TextField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              hintText: 'Pet Status',
            ),
            onChanged: (newStatus) {
              newPetStatus = newStatus;
            },
          ),
          TextButton(
            onPressed: () {
              Provider.of<PetsData>(context, listen: false)
                  .addPet(newPetName, newPetStatus);
              Navigator.pop(context);
            },
            child: Text(
              'Add Pets',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlueAccent),
            ),
          ),
        ],
      ),
    );
  }
}
