import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/view_model/controllers/home_controller.dart';
import '../../../res/images/image_assets.dart';
import '../../../utils/utils.dart';

class Location extends StatelessWidget {
  Location({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.getAddress(),
              style: const TextStyle(
                height: 0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              Utils.formateDate(DateTime.now()),
              style: TextStyle(
                color: Colors.grey.withOpacity(.7),
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const Spacer(),
        SizedBox(
          height: 100,
          width: 100,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                ImageAssets.map,
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
