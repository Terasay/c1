import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<String> images = [
    'assets/images/food1.png',
    'assets/images/food2.png',
    'assets/images/food3.png',
  ];

  int selectedNav = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ===== BODY =====
      body: SafeArea(
        child: Column(
          children: [

            // ===== СЛАЙДЕР =====
            SizedBox(
              height: 200,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() => currentIndex = index);
                },
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),

            // ===== ТОЧКИ =====
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(images.length, (index) {
                return Container(
                  margin: const EdgeInsets.all(4),
                  width: currentIndex == index ? 12 : 8,
                  height: currentIndex == index ? 12 : 8,
                  decoration: BoxDecoration(
                    color: currentIndex == index
                        ? Colors.orange
                        : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),

            const SizedBox(height: 20),

            // ===== КАТЕГОРИИ =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Main categories",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categoryItem("Main dishes", "assets/icons/main.png"),
                categoryItem("Pastries", "assets/icons/pastry.png"),
                categoryItem("Soups", "assets/icons/soup.png"),
              ],
            ),

            const SizedBox(height: 20),

            // ===== POPULAR FOOD =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  Text(
                    "Popular food",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  foodCard("Pizza", "Very вкусно", "4.8",
                      "assets/images/food1.png"),
                  foodCard("Soup", "Hot and tasty", "4.5",
                      "assets/images/food2.png"),
                ],
              ),
            ),
          ],
        ),
      ),

      // ===== BOTTOM NAV =====
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedNav,
        onTap: (index) {
          setState(() => selectedNav = index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/discover.png', width: 24),
            label: selectedNav == 0 ? "Discover" : "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home.png', width: 24),
            label: selectedNav == 1 ? "Home" : "",
          ),
        ],
      ),
    );
  }

  // ===== CATEGORY WIDGET =====
  Widget categoryItem(String title, String icon) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.orange.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Image.asset(icon, width: 30),
        ),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  // ===== FOOD CARD =====
  Widget foodCard(
      String title, String desc, String rating, String image) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 5,
              spreadRadius: 2)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(image, height: 90, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        const TextStyle(fontWeight: FontWeight.bold)),
                Text(desc,
                    style: const TextStyle(
                        fontSize: 12, color: Colors.grey)),
                Row(
                  children: [
                    Image.asset("assets/icons/star.png", width: 14),
                    const SizedBox(width: 4),
                    Text(rating),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
