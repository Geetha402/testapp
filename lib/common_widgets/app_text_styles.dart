import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle featureLabelStyle(BuildContext context) => titleLarge(context).copyWith(
        fontSize: 16,
        color: AppColors.black,
      );

  static TextStyle textEntryStyle(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.black,
            fontSize: 15,
          );

  static TextStyle titleLarge(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          );

  static TextStyle labelLarge(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          );

  static TextStyle titleMedium(BuildContext context, Color color) =>
      Theme.of(context).textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          );

  static TextStyle titleMediumBlack(BuildContext context) =>
      titleMedium(context, AppColors.black);

  static TextStyle titleMediumWhite(BuildContext context) =>
      titleMedium(context, AppColors.white);

  static TextStyle errorStyle(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.red,
          );

  static TextStyle btnLabelStyle(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          );
}
