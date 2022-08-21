import 'package:flutter/material.dart';

import 'myicons.dart';

class AddNewContact extends StatelessWidget {
  const AddNewContact({
    Key? key,
    required this.name,
    required this.number,
  }) : super(key: key);
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Expanded(
        flex: 1,
        child: MyIcons(
          icon: Icons.person_rounded,
          size: 60,
          color: Colors.grey.shade300,
        ),
      ),
      Expanded(flex: 2, child: MyContactDetails(name: name, number: number)),
      const Expanded(flex: 1, child: SizedBox()),
      const Expanded(
          flex: 1,
          child:
              MyIcons(icon: Icons.call_rounded, size: 40, color: Colors.green)),
    ]);
  }
}

class MyContactDetails extends StatelessWidget {
  const MyContactDetails({
    Key? key,
    required this.name,
    required this.number,
  }) : super(key: key);
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          number,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 85, 83, 83)),
        ),
      ],
    );
  }
}
