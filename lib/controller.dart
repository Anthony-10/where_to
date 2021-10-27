import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventController extends GetxController {
  final events = [
    'Conferences',
    'WorkShops',
    'Festivals',
    'Awards',
    'A Seminar',
  ];
  final location = [
    'Mombasa',
    'Kwale',
    'Kilifi',
    'Tana River',
    'Lamu',
    'Taita-Taveta',
    'Garisa',
    'Wajir',
    'Mandera',
    'Marsabit',
    'Isiolo',
    'Meru',
    'Tharaka-Nithi',
    'Embu',
    'Kitui',
    'Machakos',
    'Makueni',
    'Nyeri',
    'Kirinyaga',
    'Muranga',
    'Kiambu',
    'Samburu',
    'Nandi',
    'Baringo',
    'Nakuru',
    'Narok',
    'Kisumu',
    'Kisi',
    'Nairobi',
  ];
  DateTime? date;

  String getText() {
    if (date == null) {
      return 'Select Date';
    } else {
      return '${date!.day}/${date!.month}/${date!.year}';
    }
  }

  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item, child: Text(item));
}
