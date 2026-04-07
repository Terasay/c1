import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List<bool> fav = [false, false, false];
  int selectedNav = 0;

  @override
  Widget build(BuildContext context) {
    final chefs = [
      {"name": "Chef John", "img": "assets/images/chef1.png"},
      {"name": "Chef Anna", "img": "assets/images/chef2.png"},
      {"name": "Chef Mike", "img": "assets/images/chef3.png"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Chef")),

      body: ListView.builder(
        itemCount: chefs.length,
        itemBuilder: (context, index) {
          final chef = chefs[index];

          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
            ),

            child: Row(
              children: [

                // IMAGE
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(chef["img"]!),
                ),

                const SizedBox(width: 10),

                // INFO
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(chef["name"]!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold)),

                      Row(
                        children: [
                          Image.asset("assets/icons/star.png", width: 14),
                          const SizedBox(width: 5),
                          const Text("4.7"),
                        ],
                      ),

                      const Text(
                        "Professional chef",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),

                // HEART
                GestureDetector(
                  onTap: () {
                    setState(() {
                      fav[index] = !fav[index];
                    });
                  },
                  child: Image.asset(
                    fav[index]
                        ? "assets/icons/heart_filled.png"
                        : "assets/icons/heart.png",
                    width: 24,
                  ),
                ),
              ],
            ),
          );
        },
      ),

      // NAVBAR
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedNav,
        onTap: (i) => setState(() => selectedNav = i),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/discover.png", width: 24),
            label: selectedNav == 0 ? "Discover" : "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/home.png", width: 24),
            label: selectedNav == 1 ? "Home" : "",
          ),
        ],
      ),
    );
  }
}
