import 'package:flutter/material.dart';
import 'pull_request_card.dart';

class PullRequestsTab extends StatefulWidget {
  const PullRequestsTab({super.key});

  @override
  State<PullRequestsTab> createState() => _PullRequestsTabState();
}

class _PullRequestsTabState extends State<PullRequestsTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final tabs = const [
    Tab(text: 'Active (2)'),
    Tab(text: 'Reviewed (3)'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(tabs.length, (index) {
              final isSelected = _tabController.index == index;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _tabController.index = index;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: isSelected ? 4 : 0,
                    backgroundColor:
                        isSelected ? Color(0xFFDCECF9) : null,
                    foregroundColor: isSelected ? Color(0xFF0064B8) : Color(0xFF6C757D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  ),
                  child: Text(
                    tabs[index].text!,
                    style: TextStyle(
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),

        const SizedBox(height: 12),

        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              // Active Tab
              ListView(
                padding: const EdgeInsets.all(12),
                children: const [
                  PullRequestCard(
                    creator: 'Julie',
                    title:
                        'Integrated app constants API and separated all strings',
                    description: 'Julie request 12330 into feature/enhancements',
                    assignee: 'Johnson',
                    assigneeImagePath: 'assets/images/johnson.png',
                    commentCount: 3,
                    updatedDate: '10 Aug',
                  ),
                  SizedBox(height: 12),
                  PullRequestCard(
                    creator: 'Julie',
                    title:
                        'Integrated app constants API and separated all strings',
                    description: 'Julie request 12330 into feature/enhancements',
                    assignee: 'Johnson',
                    assigneeImagePath: 'assets/images/johnson.png',
                    commentCount: 3,
                    updatedDate: '10 Aug',
                  ),
                ],
              ),

              // Reviewed Tab
              const Center(child: Text('No reviewed pull requests')),
            ],
          ),
        ),
      ],
    );
  }
}
