import 'package:flutter/foundation.dart';
import 'pets.dart';
import 'dart:collection';

class PetsData extends ChangeNotifier {
  List<Pets> _pets = [
    Pets(name: 'Dog', status: 'Available'),
    Pets(name: 'Bird', status: 'Available'),
    Pets(name: 'Cat', status: 'Available'),
  ];

  UnmodifiableListView<Pets> get pets {
    return UnmodifiableListView(_pets);
  }

  int get petsCount {
    return _pets.length;
  }

  void addPet(String newPetName, String newPetStatus) {
    final pet = Pets(name: newPetName, status: newPetStatus);
    _pets.add(pet);
    notifyListeners();
  }
}
