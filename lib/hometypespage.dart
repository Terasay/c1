import 'package:flutter/material.dart';

class HomeTypesPage extends StatelessWidget {
  const HomeTypesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final foods = [
      {"name": "Pizza", "img": "assets/images/food1.png"},
      {"name": "Soup", "img": "assets/images/food2.png"},
      {"name": "Cake", "img": "assets/images/food3.png"},
      {"name": "Salad", "img": "assets/images/food1.png"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Main dishes"),
        leading: IconButton(
          icon: Image.asset("assets/icons/back.png", width: 24),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: foods.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final item = foods[index];

            return Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      item["img"]!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(item["name"]!),
              ],
            );
          },
        ),
      ),
    );
  }
}
