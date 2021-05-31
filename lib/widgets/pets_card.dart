import 'package:flutter/material.dart';

class PetsCard extends StatelessWidget {
  final String petName;
  final String petStatus;

  PetsCard({required this.petName, required this.petStatus});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(petName),
        subtitle: Text(petStatus),
      ),
    );
  }
}
