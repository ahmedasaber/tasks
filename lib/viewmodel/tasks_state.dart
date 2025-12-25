part of 'tasks_cubit.dart';

@immutable
sealed class TasksState {
  final List<TaskModel> tasks;

  const TasksState({required this.tasks});
}

final class TasksInitial extends TasksState {
  const TasksInitial({required super.tasks});
}
final class TasksAdded extends TasksState {
  const TasksAdded({required super.tasks});
}
final class TasksRemoved extends TasksState {
  const TasksRemoved({required super.tasks});
}
final class TasksToggled extends TasksState {
  const TasksToggled({required super.tasks});
}