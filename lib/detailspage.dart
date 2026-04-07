import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        leading: IconButton(
          icon: Image.asset("assets/icons/back.png", width: 24),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // IMAGE
            Image.asset("assets/images/food1.png"),

            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Pizza",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Recommended!"),
            ),

            const SizedBox(height: 10),

            // INFO ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Prep: 10 min"),
                Text("Total: 30 min"),
                Text("Servings: 2"),
              ],
            ),

            const SizedBox(height: 10),

            // RATING
            Row(
              children: [
                const SizedBox(width: 10),
                Image.asset("assets/icons/star.png", width: 16),
                const SizedBox(width: 5),
                const Text("4.8"),
              ],
            ),

            const SizedBox(height: 20),

            // DESCRIPTION
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Description",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Very tasty pizza with cheese and tomato. Simple description for demo.",
              ),
            ),

            const SizedBox(height: 20),

            // STEPS
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Steps",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            stepItem("1", "Prepare ingredients"),
            stepItem("2", "Cook pizza"),
            stepItem("3", "Serve and enjoy"),
          ],
        ),
      ),
    );
  }

  Widget stepItem(String number, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Text("$number. "),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
