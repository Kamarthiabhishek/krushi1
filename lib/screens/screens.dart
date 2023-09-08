import 'package:flutter/material.dart';
import 'package:krushi/screens/Rentals.dart';

class MyRentalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddRentals()));
          },
          child: Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2,
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0),
            itemCount: 21,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width / 3.5,
                height: MediaQuery.of(context).size.height / 3,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.amber,
                              child: const Center(child: Text("Image")),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Product name"),
                                  const Text("Product Quantity"),
                                  const Text("Product Price"),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 60),
                                    child: ElevatedButton(
                                        onPressed: () {}, child: Text("Edit")),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
