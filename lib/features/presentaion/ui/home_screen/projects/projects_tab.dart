import 'package:flutter/material.dart';
import 'package:testapp/features/presentaion/ui/home_screen/projects/summary/project_summary_widget.dart';
import 'project_card.dart';

class ProjectsTab extends StatelessWidget {
  const ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProjectSummaryScreen()),
              );
            },
            child: ProjectCard(
              initials: 'MA',
              title: 'Massy e-Store App',
              description:
                  'Massy Stores across the region is desirous of implementing a mobile grocery shopping app. This app should be available for IOS and Android. The CDSgroups already has an eCommerce platform based on WordPress and Woocommerce.',
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          const ProjectCard(
            initials: 'DE',
            title: 'Dell',
            description:
                'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut al...',
            color: Color(0XFFAA001F),
          ),
          const SizedBox(height: 10),
          const ProjectCard(
            initials: 'ST',
            title: 'Starbucks',
            description:
                'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed qu...',
            color: Color(0XFF008BAA),
          ),
        ],
      ),
    );
  }
}
