import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/app_colors.dart';

class LeadingIconWidget extends StatelessWidget {
  final String initials;

  const LeadingIconWidget({
    super.key,
    required this.initials,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.white,
            width: 1,
          ),
          color: Colors.transparent,
        ),
        alignment: Alignment.center,
        child: Text(
          initials,
          style: const TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
