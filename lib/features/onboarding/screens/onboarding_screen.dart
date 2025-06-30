import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_hub/core/helpers/extensions/navigation.dart';
import 'package:health_hub/core/routing/routes.dart';
import 'package:health_hub/core/theming/styles.dart';
import 'package:health_hub/core/widgets/app_button.dart';
import 'package:health_hub/features/onboarding/screens/widgets/doctor_image_and_text.dart';
import 'package:health_hub/features/onboarding/screens/widgets/logo_and_name.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 29.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30.h),
                const LogoAndName(),
                SizedBox(height: 40.h),
                const DoctorImageAndText(),
                Text(
                  'Manage and schedule all of your medical appointments easily\n with HealthHub to get a new experience.',
                  style: TextStyles.font10GrayRegular,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40.h),
                AppButton(
                  text: 'Get Started',
                  onPressed: () {
                    try {
                      context.pushNamed(Routes.loginScreen);
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Navigation error: ${e.toString()}'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
