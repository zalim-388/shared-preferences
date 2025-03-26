import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/second_page.dart';

class FirstPage extends StatefulWidget {
  final String Name;
  final String Address;
  final int phonenumber;
  const FirstPage(
      {super.key,
      required this.Name,
      required this.Address,
      required this.phonenumber});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  bool chekbox = false;
  @override
  void inistate() async {
    namecontroller.text = widget.Name;
    addresscontroller.text = widget.Address;
    phonecontroller.value = widget.phonenumber as TextEditingValue;
    super.initState();
  }

  void submit(
      TextEditingController namecontroller,
      TextEditingController addresscontroller,
      TextEditingController phonecontroller
    
      ) async {
  

        
      }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Add details",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 150),
        child: Column(
          children: [
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Colors.white,
                  filled: true),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: addresscontroller,
              decoration: InputDecoration(
                  labelText: "Address",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Colors.white,
                  filled: true),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: phonecontroller,
              decoration: InputDecoration(
                  labelText: "phone number",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Colors.white,
                  filled: true),
              keyboardType: TextInputType.number,
              maxLength: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Gender", style: TextStyle(color: Colors.black, fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
              child: Text(
                "submit",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
