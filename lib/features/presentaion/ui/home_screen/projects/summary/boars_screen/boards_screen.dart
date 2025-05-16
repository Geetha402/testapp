import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/app_colors.dart';
import 'package:testapp/common_widgets/custom_appbar.dart';
import 'package:testapp/features/presentaion/ui/home_screen/projects/summary/project_app_drwaer.dart';
import 'package:testapp/features/presentaion/ui/home_screen/projects/summary/boars_screen/task_board_tab.dart';

class BoardsScreen extends StatelessWidget {
  const BoardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(title: 'Boards'),
        drawer: ProjectDrawerWidget(),
        body: Column(
          children: [
            Container(
              color: Colors.grey[200],
              child: TabBar(
                dividerColor: AppColors.white,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: AppColors.appbar,
                tabs: const [
                  Tab(text: 'Taskboard'),
                  Tab(text: 'Backlogs'),
                  Tab(text: 'Analytics'),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  TaskBoardTab(),
                  Center(child: Text("Backlogs")),
                  Center(child: Text("Analytics")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
