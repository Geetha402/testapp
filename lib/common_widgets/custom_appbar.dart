import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onTitleTap;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onTitleTap,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appbar,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.white),
      title: GestureDetector(
        onTap: onTitleTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
      automaticallyImplyLeading: true,
      actions: actions ??
          [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_horiz_outlined, color: Colors.white),
            ),
          ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
