import 'package:flutter/material.dart';
import 'package:weather/res/images/image_assets.dart';
import 'package:weather/view_model/services/splash_services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashServices.getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              ImageAssets.heavyRain,
              height: 200,
              width: 200,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Weather App",
            style: TextStyle(
              height: 0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          )
        ],
      ),
    );
  }
}
