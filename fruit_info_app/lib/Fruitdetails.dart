import 'package:dog_info_app/Colors.dart';
import 'package:flutter/material.dart';

class FruitdetailsScreen extends StatelessWidget {
  final String? name;
  final String? info;

  const FruitdetailsScreen({super.key, this.name, this.info});

  String getImagePath() {
    switch (name.toString()) {
      case 'Apple':
        return "assets/images/apple.jfif";
      case 'Orange':
        return "assets/images/orange.jfif";

      case 'Pineapple':
        return "assets/images/pineapple.jpg";

      case 'Watermelon':
        return "assets/images/watermelon.jpg";
      default:
        return "assets/images/nofruit.jfif";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name.toString()),
        backgroundColor: AppColors.appbarColor,
        foregroundColor: AppColors.appbarText,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                "NAME: ${name.toString().toUpperCase()}",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text),
              ),
              ClipOval(
                child: Image.asset(
                  getImagePath(),
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Expanded(
                  child: Text(
                    " ${info.toString()}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
