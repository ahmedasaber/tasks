import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tasks/model/task_model.dart';

part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(TasksInitial(tasks: <TaskModel>[]));

  List<TaskModel> tasks = [];
  void addTask({required String task}){
    tasks.add(TaskModel(task: task));
    emit(TasksAdded(tasks: List.from(tasks)));
  }

  void removeTask({required TaskModel task}){
    tasks.remove(task);
    emit(TasksAdded(tasks: List.from(tasks)));
  }

  void toggleTask({required TaskModel task}){
    task.isChecked  = !task.isChecked;
    emit(TasksToggled(tasks: List.from(tasks)));
  }
}
