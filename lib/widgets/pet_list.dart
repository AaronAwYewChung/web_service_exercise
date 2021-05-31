import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_service_exercise/models/pets_data.dart';
import 'package:web_service_exercise/widgets/pets_card.dart';

class PetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PetsData>(
      builder: (context, petsData, child) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              final pet = petsData.pets[index];
              return PetsCard(
                petName: pet.name,
                petStatus: pet.status,
              );
            },
            itemCount: petsData.petsCount,
          ),
        );
      },
    );
  }
}
