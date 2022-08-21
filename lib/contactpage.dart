import 'package:dial_phone_app/contactlist.dart';
import 'package:dial_phone_app/myicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'add_contact.dart';

class MyContactPage extends StatelessWidget {
  const MyContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 10,
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: 160,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            MyIcons(icon: Icons.person, size: 26, color: Colors.grey.shade500),
            MyIcons(icon: Icons.settings, size: 26, color: Colors.grey.shade500)
          ]),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: MyIcons(
                      icon: Icons.arrow_back_ios,
                      size: 26,
                      color: Colors.black),
                )),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 6,
                    child: Text(
                      'Contacts',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyIcons(
                        icon: Icons.grid_view_outlined,
                        size: 30,
                        color: Colors.grey.shade500),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyIcons(
                        icon: Icons.menu_outlined,
                        size: 30,
                        color: Colors.grey.shade500),
                  )
                ],
              ),
            ),
            Column(
              children: [
                for (var e in contacts)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: AddNewContact(
                        name: 'Default Name ${contacts.indexOf(e) + 1}',
                        number: e),
                  )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
