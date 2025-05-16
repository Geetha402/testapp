import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/app_spacer.dart';

class PullRequestCard extends StatelessWidget {
  final String creator;
  final String title;
  final String description;
  final String assignee;
  final String assigneeImagePath;
  final int commentCount;
  final String updatedDate;

  const PullRequestCard({
    super.key,
    required this.creator,
    required this.title,
    required this.description,
    required this.assignee,
    required this.assigneeImagePath,
    required this.commentCount,
    required this.updatedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFA9BCE5)),
        // color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.shade100,
        //     blurRadius: 8,
        //     offset: const Offset(0, 4),
        //   ),
        // ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage('assets/images/julie.png'),
              ),
              const SizedBox(width: 6),
              Text(
                creator,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          /// Title
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 4),

          Text(
            description,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
          ),
          const SizedBox(height: 8),

          Row(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage(assigneeImagePath),
              ),
              const SizedBox(width: 6),
              Text(assignee),
              const Spacer(),
            ],
          ),
          AppSpacer.p8(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.comment_outlined, size: 14,color: Color(0xFF6C757D),),
                    const SizedBox(width: 14,),
                Text('$commentCount',style: TextStyle(fontSize: 14,color: Color(0xFF6C757D)),),
            
                  ],
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
          ),
        ],
      ),
    );
  }
}
