import 'package:flutter/material.dart';

Decoration veiwExpanted() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        blurRadius: 10,
        offset: Offset(0, 2),
      ),
    ],
  );
}
