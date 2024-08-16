import 'package:dog_info_app/Colors.dart';
import 'package:dog_info_app/Home.dart';
import 'package:flutter/material.dart';

void main (){
  runApp( Fruitinfo());
}

class Fruitinfo extends StatelessWidget {
  const Fruitinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          debugShowCheckedModeBanner: false,     
      home: Splashscreen());
  }
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    
    super.initState();

    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>  HomePage() ));
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appbarColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                        child: Image.asset("assets/images/fruits.jpg",
                        width: 100,height: 100,
                        fit: BoxFit.cover,)),
            )),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(color: AppColors.appbarText),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Fruit Info App",style: TextStyle(fontSize: 20,color: AppColors.appbarText),),
          ),

        ],
      ),
      
    );
  }
}