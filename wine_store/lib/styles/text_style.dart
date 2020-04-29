import 'package:flutter/material.dart';

TextStyle textStyle({double size, int weight, Color color}) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: weight == 1
          ? FontWeight.w100
          : weight == 2
              ? FontWeight.w200
              : weight == 3
                  ? FontWeight.w300
                  : weight == 4
                      ? FontWeight.w400
                      : weight == 5
                          ? FontWeight.w500
                          : weight == 6
                              ? FontWeight.w600
                              : weight == 7
                                  ? FontWeight.w700
                                  : weight == 8
                                      ? FontWeight.w800
                                      : weight == 9 ? FontWeight.w900 : null,
    );
