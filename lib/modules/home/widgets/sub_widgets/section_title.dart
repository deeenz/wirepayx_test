import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wirepayx/shared/assets/colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String actionText;

  const SectionTitle({
    super.key,
    required this.title,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          if (actionText.isNotEmpty)
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Feature not implemented, yet."),
                  ),
                );
              },
              child: Text(
                actionText,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: .8,
                      height: 1.2,
                      color: AppColors.blue,
                      decorationColor: AppColors.blue,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}
