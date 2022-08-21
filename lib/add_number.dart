// ignore_for_file: non_constant_identifier_names

import 'package:dial_phone_app/myicons.dart';
import 'package:flutter/material.dart';
import 'myicons.dart';

class AddNumber extends StatelessWidget {
  const AddNumber({
    Key? key,
    required this.phone_number,
  }) : super(key: key);
  final String phone_number;
  @override
  Widget build(BuildContext context) {
    return Text(
      phone_number,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

class AddToContact extends StatelessWidget {
  const AddToContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MyIcons(icon: Icons.add, size: 22, color: Colors.green),
        Text(
          ' add to contacts',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ],
    );
  }
}
