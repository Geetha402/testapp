import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/features/presentaion/bloc/boards_cubit.dart';
import 'package:testapp/features/presentaion/ui/home_screen/work_tems/work_item_card.dart';

class TaskBoardTab extends StatelessWidget {
  const TaskBoardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TaskBoardCubit(),
      child: const TaskBoardView(),
    );
  }
}

class TaskBoardView extends StatelessWidget {
  const TaskBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBoardCubit, TaskBoardState>(
      builder: (context, state) {
        final cubit = context.read<TaskBoardCubit>();
        final tasks = state.filteredTasks;

        return Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Wrap(
                spacing: 8,
                children:
                    ['New', 'Parked', 'Resolved', 'Closed'].map((status) {
                      return FilterChip(
                        label: Text(status),
                        selected: state.selectedStatus == status,
                        onSelected: (_) => cubit.setStatus(status),
                      );
                    }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                onChanged: cubit.setSearchText,
                decoration: InputDecoration(
                  fillColor: Color(0xFFE9E9EA),
                  hintText: 'Filter with keyword',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.filter_alt_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  return WorkItemCard(
                    title: task.title,
                    assignee: task.user,
                    ticketNumber: task.id,
                    status: task.tag,
                    statusColor: task.tagColor,
                    updatedDate: task.date,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
