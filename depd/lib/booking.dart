// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  void _increment() {
    setState(() {});
  }

  final _bookingKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlPass = TextEditingController();

  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Page"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: Form(
          key: _bookingKey,
          child: Column(
            children: [
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
                controller: ctrlPass,
                obscureText: isHide,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isHide = !isHide;
                        });
                      },
                      child: Icon(
                          isHide ? Icons.visibility_off : Icons.visibility),
                    )),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg:
                          'Email:${ctrlEmail.text} & Password: ${ctrlPass.text}',
                      backgroundColor: Colors.green);
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
    );
  }
}
