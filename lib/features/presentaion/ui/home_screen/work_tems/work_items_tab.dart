import 'package:flutter/material.dart';
import 'work_item_card.dart';

class WorkItemsTab extends StatelessWidget {
  const WorkItemsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: const [
        WorkItemCard(
          title: 'Mobile[UI] - Product On Coupon View ALL Screen UI',
          status: 'Parked',
          statusColor: Color(0xFF405BA0),
          ticketNumber: '#35732',
          assignee: 'Johnson',
          assigneeImagePath: 'assets/images/johnson.png',
          appName: 'Massy e-store app',
          updatedDate: 'Jun 2',
        ),
        SizedBox(height: 12),
        WorkItemCard(
          title: 'Mobile[UI] - Product On Coupon View ALL Screen UI',
          status: 'New',
          statusColor: Color(0xFF5CA177),
          ticketNumber: '#35732',
          assignee: 'Johnson',
          assigneeImagePath: 'assets/images/johnson.png',
          appName: 'Massy e-store app',
          updatedDate: 'Jun 2',
        ),
      ],
    );
  }
}
