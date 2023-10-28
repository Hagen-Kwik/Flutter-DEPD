// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Mission2Page extends StatefulWidget {
  const Mission2Page({super.key});

  @override
  State<Mission2Page> createState() => _Mission2Page();
}

class _Mission2Page extends State<Mission2Page> {
  void _increment() {
    setState(() {});
  }

  final _bookingKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlName = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Booking Form"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height,
            padding: EdgeInsets.all(16),
            child: Form(
              key: _bookingKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: ctrlName,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Full Name",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person)),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: ctrlEmail,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email)),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return !EmailValidator.validate(value.toString())
                          ? "Email tidak Valid!"
                          : null;
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: ctrlPhone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone_android),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      final phoneRegex = RegExp(r'^\d{9,10}$');
                      if (!phoneRegex.hasMatch(value.toString())) {
                        return "Please enter a valid 9 or 10-digit phone number";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: ctrlCity,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "City",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.location_city)),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      final emailIsValid =
                          EmailValidator.validate(ctrlEmail.text);
                      final phoneIsValid =
                          RegExp(r'^\d{9,10}$').hasMatch(ctrlPhone.text);
                      final allFieldsNotNull = ctrlName.text.isNotEmpty &&
                          emailIsValid &&
                          phoneIsValid &&
                          ctrlCity.text.isNotEmpty;

                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          if (allFieldsNotNull) {
                            return AlertDialog(
                              title: Text("Booking Confirmation"),
                              content: SizedBox(
                                height: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Name: ${ctrlName.text}"),
                                    Text("Email: ${ctrlEmail.text}"),
                                    Text("Phone: ${ctrlPhone.text}"),
                                    Text("City: ${ctrlCity.text}"),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          } else {
                            return AlertDialog(
                              title: Text("Booking Failed"),
                              content: Text("Please fill all form fields!"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          }
                        },
                      );
                    },
                    icon: Icon(Icons.save),
                    label: Text("Submit"),
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                        backgroundColor: Colors.blue[700],
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
