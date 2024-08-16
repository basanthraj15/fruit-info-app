import 'package:dog_info_app/Colors.dart';
import 'package:dog_info_app/Fruitdetails.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Fruit Info",
            style: TextStyle(color: AppColors.appbarText),
          )),
          backgroundColor: AppColors.appbarColor,
        ),
        body: FruitList(),
      ),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.appbarColor)),
    );
  }
}

class FruitList extends StatelessWidget {
  FruitList({super.key});

  final List<String> FruitName = [
    "Apple",
    "Orange",
    "Pineapple",
    "Watermelon",
    "Mango"
  ];

  final Map<String, String> Fruitinfo = {
    'Apple':
        'Apples are known for their crisp texture and sweet-tart flavor, making them versatile in various dishes. Rich in fiber and vitamin C, they offer health benefits like improved heart health.Apples are one of the most popular and widely cultivated fruits in the world, with over 7,500 varieties globally. Originating in Central Asia, particularly in the region of present-day Kazakhstan, apples are now grown in many parts of the world. They belong to the Rosaceae family, which also includes other fruits like pears, peaches, and plums. Nutritionally, apples are a great source of dietary fiber, vitamin C, and antioxidants, making them a healthy snack option. A medium-sized apple typically contains about 95 calories. When stored in a cool, dry place, apples can remain fresh for several weeks, partly due to the ethylene gas they naturally produce.',
    'Orange':
        'Oranges are citrus fruits with a juicy, sweet-tangy flavor, enjoyed fresh or as juice. High in vitamin C, they boost the immune system and support overall health.',
    'Pineapple':
        'Pineapples have vibrant yellow flesh and a sweet-tangy taste, often used in desserts and savory dishes. They are rich in vitamins and enzymes, supporting digestion and reducing inflammation.',
    'Watermelon':
        'Watermelons are refreshing fruits with a green rind and sweet red flesh, perfect for summer. High in water and low in calories, they provide hydration and essential vitamins.'
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: FruitName.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            FruitName[index],
            style: TextStyle(color: AppColors.text, fontSize: 24),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FruitdetailsScreen(
                          name: FruitName[index],
                          info: Fruitinfo[FruitName[index]] ??
                              "No information available",
                        )));
          },
        );
      },
    );
  }
}
