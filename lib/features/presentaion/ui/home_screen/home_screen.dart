import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/app_colors.dart';
import 'package:testapp/features/presentaion/ui/home_screen/organisation_botton_sheet.dart.dart';
import 'package:testapp/features/presentaion/ui/home_screen/leading_icon_widget.dart';
import 'package:testapp/features/presentaion/ui/home_screen/projects/projects_tab.dart';
import 'package:testapp/features/presentaion/ui/home_screen/pull_requests/pull_requests_tab.dart';
import 'package:testapp/features/presentaion/ui/home_screen/work_tems/work_items_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor:AppColors.appbar,
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
          title: GestureDetector(
            onTap:
                () => showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  backgroundColor: Colors.white,
                  builder: (_) => const ChooseOrganizationBottomSheet(),
                ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'CDSgroups',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.keyboard_arrow_down, color: Colors.white),
              ],
            ),
          ),
          actions: const [LeadingIconWidget(initials: 'GC')],
          bottom: const TabBar(
            dividerColor: AppColors.appbar,
            labelColor: Colors.white,
            unselectedLabelColor: AppColors.lightblueshade,
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            tabs: [
              Tab(text: 'Projects'),
              Tab(text: 'Work Items'),
              Tab(text: 'Pull Requests'),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: const BoxDecoration(color:AppColors.appbar),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ListTile(
                                  leading: LeadingIconWidget(initials: 'GC'),
                                  title: const Text(
                                    'Geetha Chikati',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  subtitle: const Text(
                                    'geetha@gmail.com',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  trailing: const Icon(
                                    Icons.settings,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Expanded(
                            child: ListTile(
                              leading: Icon(Icons.sync, color: Colors.white),
                              title: Text(
                                'Switch Directory',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: ListTile(
                              leading: Icon(
                                Icons.home_rounded,
                                color: Colors.white,
                              ),
                              title: Text(
                                'Home',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Color(0xFF293042),
                    size: 24,
                  ),
                  title: Text(
                    'Organization Settings',
                    style: TextStyle(color: Color(0xFF293042), fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),

        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: const TabBarView(
            children: [ProjectsTab(), WorkItemsTab(), PullRequestsTab()],
          ),
        ),
      ),
      );
  }
}
