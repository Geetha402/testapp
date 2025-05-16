import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/features/model/task_form.dart';

class TaskBoardState {
  final String selectedStatus;
  final String searchText;
  final List<TaskModel> filteredTasks;

  TaskBoardState({
    required this.selectedStatus,
    required this.searchText,
    required this.filteredTasks,
  });

  TaskBoardState copyWith({
    String? selectedStatus,
    String? searchText,
    List<TaskModel>? filteredTasks,
  }) {
    return TaskBoardState(
      selectedStatus: selectedStatus ?? this.selectedStatus,
      searchText: searchText ?? this.searchText,
      filteredTasks: filteredTasks ?? this.filteredTasks,
    );
  }
}

class TaskBoardCubit extends Cubit<TaskBoardState> {
  final List<TaskModel> _allTasks = [
    TaskModel(
      title: 'Mobile[UI] - Product On Coupon View ALL Screen UI',
      id: '#35732',
      user: 'Johnson',
      date: 'Jun 2',
      tag: 'Parked',
      tagColor: const Color(0xFF405BA0),
    ),
    TaskModel(
      title: 'Flutter - Refactor Authentication Flow',
      id: '#35745',
      user: 'Emma',
      date: 'Jun 4',
      tag: 'New',
      tagColor: const Color(0xFF5CA177),
    ),
    TaskModel(
      title: 'Backend - Fix Payment Gateway Retry Logic',
      id: '#35750',
      user: 'David',
      date: 'Jun 6',
      tag: 'Resolved',
      tagColor: Colors.orange,
    ),
    TaskModel(
      title: 'UI - Improve Search Suggestions Performance',
      id: '#35760',
      user: 'Sophia',
      date: 'Jun 8',
      tag: 'Closed',
      tagColor: Colors.red,
    ),
  ];

  TaskBoardCubit()
      : super(TaskBoardState(
          selectedStatus: 'New',
          searchText: '',
          filteredTasks: [],
        )) {
    _filterTasks();
  }

  void setStatus(String status) {
    emit(state.copyWith(selectedStatus: status));
    _filterTasks();
  }

  void setSearchText(String search) {
    emit(state.copyWith(searchText: search));
    _filterTasks();
  }

  void _filterTasks() {
    final filtered = _allTasks.where((task) {
      final matchesStatus = task.tag == state.selectedStatus;
      final matchesSearch = task.title.toLowerCase().contains(state.searchText.toLowerCase());
      return matchesStatus && matchesSearch;
    }).toList();

    emit(state.copyWith(filteredTasks: filtered));
  }
}
