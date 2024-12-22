import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../components/login/custom_login_button.dart';
import '../components/login/custom_text_field.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/imageType.dart';
import '../utils/image_name_strings.dart';
import '../utils/image_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Center(
                  child: ImageWidget(
                      imageName: ImageNameStrings.log_in_hero_img,
                      imageClassName: ImageClassNameStrings.banner,
                      type: ImageType().png),
                ),
              ),
              const Expanded(flex: 4, child: _TextAndTextFieldAndButtonWidget()),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      CustomLoginButton(
                          title: AppStrings.btn_google, iconName: ImageNameStrings.lg_google, onTap: () {}),
                      CustomLoginButton(
                          title: AppStrings.btn_google, iconName: ImageNameStrings.lg_apple, onTap: () {}),
                      CustomLoginButton(
                          title: AppStrings.btn_google, iconName: ImageNameStrings.lg_facebook, onTap: () {}),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextAndTextFieldAndButtonWidget extends StatelessWidget {
  const _TextAndTextFieldAndButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          AppStrings.txt_login_phone,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.green500),
        ),
        const SizedBox(height: 20),
        const TextFieldPhoneWidget(),
        const SizedBox(height: 20),
        SizedBox(height: 62, width: double.infinity, child: CustomButton(title: AppStrings.btn_log_in, onTap: () {})),
        const SizedBox(height: 20),
        const Text(
          AppStrings.txt_or,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.black400),
        ),
      ],
    );
  }
}
