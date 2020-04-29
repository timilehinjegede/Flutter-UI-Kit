import 'package:flutter/material.dart';

double screenHeight(
    BuildContext context, {
      double percent = 1,
    }) =>
    ((MediaQuery.of(context).size.height) * percent);

double screenWidth(
    BuildContext context, {
      double percent = 1,
    }) =>
    ((MediaQuery.of(context).size.width) * percent);
