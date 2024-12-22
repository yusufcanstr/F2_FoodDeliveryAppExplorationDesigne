import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/imageType.dart';
import '../../utils/image_name_strings.dart';
import '../../utils/image_widget.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key, required this.title, required this.iconName, this.onTap});
  final String title;
  final String iconName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        height: 60,
        child: TextButton(
            onPressed: onTap,
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return AppColors.black300;
                }
                return AppColors.black200;
              }),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageWidget(
                    imageName: iconName,
                    imageClassName: ImageClassNameStrings.logos,
                    type: ImageType().png),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: AppColors.black400),
                ),
              ],
            )),
      ),
    );
  }
}
