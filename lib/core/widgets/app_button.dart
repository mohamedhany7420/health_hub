import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_hub/core/theming/colors.dart';
import 'package:health_hub/core/theming/styles.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final double? width;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 52.h,
      child: ElevatedButton(
        onPressed:
            isLoading
                ? null
                : () {
                  try {
                    onPressed();
                  } catch (e) {
                    // Handle any errors that might occur during the onPressed function
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('An error occurred: ${e.toString()}'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mainBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        child:
            isLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : Text(text, style: TextStyles.font16WhiteSemiBold),
      ),
    );
  }
}
