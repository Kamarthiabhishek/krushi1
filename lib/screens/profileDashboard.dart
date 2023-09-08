import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krushi/screens/Rentals.dart';
import 'package:krushi/screens/profileScreen.dart';
import 'package:krushi/screens/screens.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int current = 0;

  void _navigateToPage(int index) {
    setState(() {
      current = index;
    });
    // No need to navigate here; the content will change within the same page.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hey User! Welcome to your account",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: TabBarWidget(
                      currentIndex: current, onTap: _navigateToPage),
                ),
              ),
              Expanded(
                child: IndexedStack(
                  index: current,
                  children: [
                    ProfilePage(),
                    MyProductsPage(),
                    MyRentalsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  TabBarWidget({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    List<String> items = ["Profile", "My Products", "My Rentals"];
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Row(
          children: [
            GestureDetector(
              onTap: () {
                onTap(index);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.all(5),
                width: 100,
                height: 45,
                decoration: BoxDecoration(
                  color:
                      currentIndex == index ? Colors.white70 : Colors.white54,
                  borderRadius: currentIndex == index
                      ? BorderRadius.circular(15)
                      : BorderRadius.circular(10),
                  border: currentIndex == index
                      ? Border.all(color: Colors.amber, width: 2)
                      : null,
                ),
                child: Center(
                  child: Text(
                    items[index],
                    style: GoogleFonts.laila(
                      fontWeight: FontWeight.w500,
                      color: currentIndex == index ? Colors.black : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class MyProductsPage extends StatefulWidget {
  const MyProductsPage({super.key});

  @override
  State<MyProductsPage> createState() => _MyProductsPageState();
}

class _MyProductsPageState extends State<MyProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddRentals()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
