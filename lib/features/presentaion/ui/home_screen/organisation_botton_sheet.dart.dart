import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/app_colors.dart';

class ChooseOrganizationBottomSheet extends StatelessWidget {
  const ChooseOrganizationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: AppColors.lightgrey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Text(
            "Choose Organization",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 16),

          _organizationTile('T', 'CDSgroups-vso', AppColors.appbar, selected: true),
          _organizationTile('I', 'Internal-FullStack-Dev',AppColors.purple),

          const SizedBox(height: 8),

          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add New Organisation'),
            onTap: () {
              Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            tileColor: Colors.grey.shade100,
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget _organizationTile(String initial, String name,  Color? color,{bool selected = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: selected ? AppColors.buleshade : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      initial,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
        title: Text(name),
        onTap: () {
        },
      ),
    );
  }
}
