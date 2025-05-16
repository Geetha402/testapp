import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/app_colors.dart';
import 'package:testapp/features/presentaion/ui/home_screen/projects/summary/boars_screen/boards_screen.dart';
import 'package:testapp/features/presentaion/ui/home_screen/organisation_botton_sheet.dart.dart';
import 'package:testapp/features/presentaion/ui/home_screen/projects/summary/project_bottomsheet_widget.dart';
import 'package:testapp/features/presentaion/ui/home_screen/leading_icon_widget.dart';

class ProjectDrawerWidget extends StatelessWidget {
  const ProjectDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.blue),
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
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ListTile(
                        leading: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'C',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0064b8),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        title: const Text(
                          'CDSgroups-vso',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                        onTap:
                            () => showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              backgroundColor: Colors.white,
                              builder:
                                  (_) => const ChooseOrganizationBottomSheet(),
                            ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: AppColors.appbar,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'MA',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  title: const Text('Massy e-Store App'),
                  trailing: const Icon(Icons.keyboard_arrow_down),
                  onTap:
                      () => showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        backgroundColor: AppColors.white,
                        builder: (_) => const ChooseProjectBottomSheet(),
                      ),
                ),
                ExpansionTile(
                  title: const Text('Overview'),
                  leading: const Icon(Icons.analytics),
                  children: [
                    ListTile(
                      leading: const Icon(Icons.info),
                      title: const Text('Summary'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.dashboard),
                      title: const Text('Dashboards'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.book),
                      title: const Text('Wiki'),
                      onTap: () {},
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: const Icon(Icons.view_kanban),
                  title: const Text('Boards'),
                  children: [
                    ListTile(
                      leading: const Icon(Icons.work_outline),
                      title: const Text('Work Items'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.view_week),
                      title: const Text('Boards'),
                      onTap:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BoardsScreen(),
                            ),
                          ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.safety_check),
                      title: const Text('Sprints'),
                      onTap: () {},
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: const Icon(Icons.build),
                  title: const Text('Pipelines'),
                  children: [
                    ListTile(
                      title: const Text('Builds'),
                      onTap: () {},
                      leading: const Icon(Icons.work_outline),
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: const Icon(Icons.archive),
                  title: const Text('Artifacts'),
                ),
                ExpansionTile(
                  leading: const Icon(Icons.storage),
                  title: const Text('Repos'),
                ),
                ExpansionTile(
                  leading: const Icon(Icons.assignment),
                  title: const Text('Test Plans'),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: ListTile(
              leading: Icon(Icons.settings, color:AppColors.black, size: 24),
              title: Text(
                'Project Settings',
                style: TextStyle(color:AppColors.black, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
