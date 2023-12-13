import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic sum(List<double> num1) {
  // calculate sum of multiple numbers
// We can use the reduce method to sum up all the numbers in the list
  double total = num1.reduce((value, element) => value + element);

// Return the total sum
  return total;
}

double convertstringtointerger(String strConv) {
  // Convert string to double
// Use the double.parse method to convert the string to a double
  double result = double.parse(strConv);

// Return the converted double
  return result;
}

double sumCopy(
  List<double> num1,
  double divide,
) {
  // calculate sum of multiple numbers / by total count *100
// calculate sum of multiple numbers
  double total = num1.reduce((value, element) => value + element);

  // calculate total count
  int count = num1.length;

  // calculate average
  double average = total / count;

  // calculate percentage
  double percentage = average * 100;

  // Return the percentage
  return percentage;
}

String calculateAndReturnAge(String idnumber) {
  // Calculate and return Age from id number
// Extract birth year from id number
  int birthYear = int.parse(idnumber.substring(0, 2));

  // Extract birth month from id number
  int birthMonth = int.parse(idnumber.substring(2, 4));

  // Extract birth day from id number
  int birthDay = int.parse(idnumber.substring(4, 6));

  // Determine the current year
  int currentYear = DateTime.now().year;

  // Determine the current month
  int currentMonth = DateTime.now().month;

  // Determine the current day
  int currentDay = DateTime.now().day;

  // Calculate the age
  int age = currentYear - (1900 + birthYear);

  // Adjust age if birth month and day are after current month and day
  if (birthMonth > currentMonth ||
      (birthMonth == currentMonth && birthDay > currentDay)) {
    age--;
  }

  // Return the age
  return age.toString();
}

int newCustomFunction(String id) {
  // calculate and return age from id
  DateTime now = DateTime.now();
  int currentYear = now.year;
  int birthYear = int.parse(id.substring(0, 2));
  int birthMonth = int.parse(id.substring(2, 4));
  int birthDay = int.parse(id.substring(4, 6));

  if (birthYear > currentYear - 2000) {
    birthYear += 1900;
  } else {
    birthYear += 2000;
  }

  DateTime birthDate = DateTime(birthYear, birthMonth, birthDay);
  Duration difference = now.difference(birthDate);
  int age = (difference.inDays / 365).floor();
  return age;
}
