import 'package:f2_food_delivery_app_exploration_designe/components/custom_button.dart';
import 'package:f2_food_delivery_app_exploration_designe/utils/app_colors.dart';
import 'package:f2_food_delivery_app_exploration_designe/utils/app_strings.dart';
import 'package:f2_food_delivery_app_exploration_designe/utils/imageType.dart';
import 'package:f2_food_delivery_app_exploration_designe/utils/image_name_strings.dart';
import 'package:f2_food_delivery_app_exploration_designe/utils/image_widget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pink300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisSize: MainAxisSize.max,
          children: [
            ImageWidget(
                imageName: ImageNameStrings.logo_full,
                imageClassName: ImageClassNameStrings.banner,
                type: ImageType().png),
            const SizedBox(height: 70),
            ImageWidget(
                imageName: ImageNameStrings.hero_img,
                imageClassName: ImageClassNameStrings.banner,
                type: ImageType().png),
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const Text(
                    AppStrings.txt_welcome_descriction,
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.normal, color: AppColors.green500),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: CustomButton(
                        title: AppStrings.btn_start_using,
                        onTap: () {
                          print("start using on click!");
                        },
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
