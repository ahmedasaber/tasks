import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks/model/task_model.dart';
import 'package:tasks/view/widgets/add_task_widget.dart';
import 'package:tasks/view/widgets/custom_check_box_tile.dart';
import 'package:tasks/viewmodel/tasks_cubit.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: BlocBuilder<TasksCubit, TasksState>(
        builder: (context, state){
          List<TaskModel> tasks = state.tasks;
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: tasks.length,
                    itemBuilder: (context, i){
                      return CustomCheckBoxTile(task: tasks[i]);
                    },
                  ),
                  AddTaskWidget(),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
