import 'package:flutter/material.dart';

class WorkItemCard extends StatelessWidget {
  final String title;
  final String status;
  final Color statusColor;
  final String ticketNumber;
  final String assignee;
  final String? assigneeImagePath;
  final String? appName;
  final String updatedDate;

  const WorkItemCard({
    super.key,
    required this.title,
    required this.status,
    required this.statusColor,
    required this.ticketNumber,
    required this.assignee,
    this.appName,
    required this.updatedDate,
    this.assigneeImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFA9BCE5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.work),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  status,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              ticketNumber,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundImage: AssetImage(assigneeImagePath ?? ''),
                ),
                const SizedBox(width: 6),
                Text(
                  assignee,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(
                Icons.folder_copy_outlined,
                size: 16,
                color: Colors.grey,
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  appName ?? '',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                  children: [
                    const TextSpan(text: 'Updated on '),
                    TextSpan(
                      text: updatedDate,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
