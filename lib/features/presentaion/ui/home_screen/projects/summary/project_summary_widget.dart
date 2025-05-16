import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/app_spacer.dart';
import 'package:testapp/common_widgets/custom_appbar.dart';
import 'package:testapp/features/presentaion/ui/home_screen/projects/summary/project_app_drwaer.dart';

class ProjectSummaryScreen extends StatelessWidget {
  const ProjectSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Summary',
      ),
      drawer: ProjectDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              'About',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'Massy Stores across the region is desirous of implementing a mobile grocery shopping app. This app should be available for IOS and Android. The CDSgroups already has an eCommerce platform based on WordPress and Woocommerce.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              'Statistics',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            _statCard(
              icon: Icons.dashboard,
              title: 'Boards',
              lines: ['   Work Items Created', '   Work Items Completed'],
            ),
            const SizedBox(height: 12),
            _statCard(
              icon: Icons.storage,
              title: 'Repos',
              lines: ['   Pull Requests Opened', '   Commits by 0 Authors'],
            ),
            const SizedBox(height: 12),
            _statCard(
              icon: Icons.build,
              title: 'Pipelines',
              lines: ['   Builds Succeeded'],
            ),
            const SizedBox(height: 20),
            const Text(
              'Members (19)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/johnson.png'),
                      radius: 18,
                    ),
                  ),
                const Spacer(),
                TextButton(onPressed: () {}, child: const Text('View All')),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _statCard({
    required IconData icon,
    required String title,
    required List<String> lines,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 6),
                if (title != 'Pipelines') ...[
                  ...lines.map(
                    (line) => RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                        ),
                        children: [
                          const TextSpan(
                            text: '0',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),

                          TextSpan(text: line),
                        ],
                      ),
                    ),
                  ),
                ] else ...[
                  ...lines.map(
                    (line) => Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CircularProgressIndicator(
                                  value: 0.0,
                                  strokeWidth: 1,
                                  backgroundColor: Color(0xFF6C757D),
                                ),
                                const Text(
                                  '0%',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AppSpacer.p4(),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 14,
                            ),
                            children: [
                              const TextSpan(
                                text: '0',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),

                              TextSpan(text: line),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
