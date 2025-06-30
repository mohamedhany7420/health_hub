import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_hub/core/helpers/assets.dart';
import 'package:health_hub/core/theming/styles.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Assets.logo),
        SizedBox(width: 8.w),
        Text(
          'HealthHub',
          style: TextStyles.font32BlackBold,
        ),
      ],
    );
  }
}
