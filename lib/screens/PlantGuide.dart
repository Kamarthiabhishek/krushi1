import 'package:flutter/material.dart';

class Guide extends StatefulWidget {
  const Guide({super.key});

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1.5,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0),
                    itemCount: 21,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.greenAccent,
                        ),
                      );
                    },
                  )),
              Expanded(
                  child: Container(
                height: MediaQuery.of(context).size.height,
                child:
                    const Center(child: Text("Result will be displayed here")),
              ))
            ],
          )),
    );
  }
}
