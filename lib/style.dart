import 'package:flutter/material.dart';

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    elevation: 5,
    padding: const EdgeInsets.all(15),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(4),
      ),
    ),
  );
}

InputDecoration AppInputDecoration(label) {
  return InputDecoration(
    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    labelText: label,
    labelStyle: const TextStyle(color: Colors.green),
    hintText: "Typing Item",
    hintStyle: const TextStyle(color: Colors.black12),
    fillColor: Colors.white,
    filled: true,
    border: const OutlineInputBorder(),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.green,
        width: 3,
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.green,
        width: 3.0,
      ),
    ),
  );
}

SizedBox SizedBox50(child) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      child: child,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
    ),
  );
}
