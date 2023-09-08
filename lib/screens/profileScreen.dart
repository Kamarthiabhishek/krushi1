import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krushi/main.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

enum Gender { male, female }

class _ProfilePageState extends State<ProfilePage> {
  Gender? _selectGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          "KRUSHI SEVAKA",
                          style: GoogleFonts.laila(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          minRadius: 80,
                          backgroundColor: Colors.grey.shade400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.photo_camera,
                                    color: Colors.black,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.image,
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "FarmerID : FAM26610",
                          style: GoogleFonts.laila(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Text("Name : Abhishek K", style: GoogleFonts.laila()),
                        Text("City : Ballari", style: GoogleFonts.laila()),
                        const SizedBox(
                          height: 140,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.logout_outlined),
                            TextButton(
                                onPressed: () {
                                  // Navigator.pushAndRemoveUntil(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => AuthPage()),
                                  //     (route) => false);
                                },
                                child: Text(
                                  "Logout",
                                  style: GoogleFonts.laila(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                flex: 3,
                child: Container(
                    color: Colors.amber,
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
                                        hintText: "Name"),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
                                        hintText: "Farmer ID"),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          hintText: "Date of Birth"),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          hintText: "Email"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          hintText: "Contact Number"),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          hintText: "State"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))),
          ],
        ),
      ),
    ));
  }
}
