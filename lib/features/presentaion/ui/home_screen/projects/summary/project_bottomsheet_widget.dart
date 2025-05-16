import 'package:flutter/material.dart';

class ChooseProjectBottomSheet extends StatelessWidget {
  const ChooseProjectBottomSheet({super.key});

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
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Text(
            "Choose Project",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 16),

          _organizationTile('MA', 'Massy e-Strore App', selected: true),
          _organizationTile('DE', 'Dell'),

          const SizedBox(height: 8),

          // ListTile(
          //   leading: const Icon(Icons.add),
          //   title: const Text('Add New Organisation'),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   tileColor: Colors.grey.shade100,
          // ),
          // const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget _organizationTile(String initial, String name, {bool selected = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: selected ? Colors.blue.shade50 : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: selected ? Colors.blue : Colors.deepPurple,
          child: Text(initial, style: const TextStyle(color: Colors.white)),
        ),
        title: Text(name),
        onTap: () {
        },
      ),
    );
  }
}
