import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final dateFormatter = DateFormat('dd MMM yy', 'en_US');
final amountFormatter = NumberFormat.currency(locale: 'id_ID');

const uuid = Uuid();

enum Category { Food, Travel, Leisure, Work }

const categoryIcons = {
  Category.Food: Icons.lunch_dining_outlined,
  Category.Travel: Icons.flight_takeoff,
  Category.Leisure: Icons.beach_access_outlined,
  Category.Work: Icons.work_outline,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return dateFormatter.format(date);
  }

  String get amountFormatted {
    String amountFormatted = amountFormatter.format(amount);

    if (amountFormatted.endsWith(',00')) {
      amountFormatted =
          amountFormatted.substring(3, amountFormatted.length - 3);
    }
    return amountFormatted;
  }
}
