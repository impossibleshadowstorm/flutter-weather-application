import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/view/home/components/container_list.dart';
import 'package:weather/view/home/components/hours_list.dart';
import 'package:weather/view/home/components/info_card.dart';
import 'package:weather/view/home/components/location.dart';
import 'package:weather/view_model/controllers/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Hero(
                tag: 'TAG',
                child: Material(
                  color: Colors.transparent,
                  child: InfoCard(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Location(),
              const SizedBox(
                height: 20,
              ),
              ContainerList(),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              HoursList(),
            ],
          ),
        ),
      ),
    );
  }
}
