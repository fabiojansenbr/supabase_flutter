import 'package:flutter/material.dart';

const preloader = Center(
  child: CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
  ),
);
