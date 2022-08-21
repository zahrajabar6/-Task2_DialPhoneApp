import 'package:flutter/material.dart';
import 'add_number.dart';
import 'contactlist.dart';
import 'contactpage.dart';
import 'myicons.dart';

class MyNumbers extends StatefulWidget {
  const MyNumbers({
    Key? key,
  }) : super(key: key);

  @override
  State<MyNumbers> createState() => _MyNumbersState();
}

class _MyNumbersState extends State<MyNumbers> {
  static String data = '';
  //static List<String> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AddNumber(phone_number: _MyNumbersState.data),
          TextButton(
              onPressed: () {
                contacts.add(data);
                data = '';
                setState(() {});
              },
              child: const AddToContact()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  data = data + '1';
                  setState(() {});
                },
                child: const MyNumber(
                  text_one: '1',
                  text_two: ' ',
                ),
              ),
              TextButton(
                onPressed: () {
                  data = data + '2';
                  setState(() {});
                },
                child: const MyNumber(
                  text_one: '2',
                  text_two: 'A B C',
                ),
              ),
              TextButton(
                onPressed: () {
                  data = data + '3';
                  setState(() {});
                },
                child: const MyNumber(
                  text_one: '3',
                  text_two: 'D E F',
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  data = data + '4';
                  setState(() {});
                },
                child: const MyNumber(
                  text_one: '4',
                  text_two: 'G H I',
                ),
              ),
              TextButton(
                onPressed: () {
                  data = data + '5';
                  setState(() {});
                },
                child: const MyNumber(
                  text_one: '5',
                  text_two: 'J K L',
                ),
              ),
              TextButton(
                onPressed: () {
                  data = data + '6';
                  setState(() {});
                },
                child: const MyNumber(
                  text_one: '6',
                  text_two: 'M N O',
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  data = data + '7';
                  setState(() {});
                },
                child: const MyNumber(
                  text_one: '7',
                  text_two: 'P Q R S',
                ),
              ),
              TextButton(
                onPressed: () {
                  data = data + '8';
                  setState(() {});
                },
                child: const MyNumber(
                  text_one: '8',
                  text_two: 'T U V',
                ),
              ),
              TextButton(
                onPressed: () {
                  data = data + '2';
                  setState(() {});
                },
                child: const MyNumber(
                  text_one: '9',
                  text_two: 'W X Y Z',
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    data = data + '*';
                    setState(() {});
                  },
                  child: const MySymobl(text_one: '*')),
              TextButton(
                onPressed: () {
                  data = data + '0';
                  setState(() {});
                },
                child: const MyNumber(
                  text_one: '0',
                  text_two: '+',
                ),
              ),
              TextButton(
                onPressed: () {
                  data = data + '#';
                  setState(() {});
                },
                child: const MySymobl(text_one: '#'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyContactPage()));
                },
                child: MyIcons(
                  icon: Icons.person,
                  size: 40,
                  color: Colors.grey.shade400,
                ),
              ),
              Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: const MyIcons(
                      icon: Icons.call_rounded, size: 50, color: Colors.white)),
              TextButton(
                onPressed: () {
                  data = data.substring(0, data.length - 1);
                  setState(() {});
                },
                child: MyIcons(
                  icon: Icons.backspace_outlined,
                  size: 36,
                  color: Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyNumber extends StatelessWidget {
  const MyNumber({Key? key, required this.text_one, required this.text_two})
      : super(key: key);

  final String text_one;
  final String text_two;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration:
          BoxDecoration(color: Colors.grey.shade300, shape: BoxShape.circle),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text_one,
            style: const TextStyle(
                fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(text_two,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}

class MySymobl extends StatelessWidget {
  const MySymobl({Key? key, required this.text_one}) : super(key: key);

  final String text_one;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration:
          BoxDecoration(color: Colors.grey.shade300, shape: BoxShape.circle),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text_one,
          style: const TextStyle(
              fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
