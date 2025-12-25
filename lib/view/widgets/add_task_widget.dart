import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks/viewmodel/tasks_cubit.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TasksCubit>().addTask(task: '');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            SizedBox(width: 31),
            Icon(Icons.add, size: 24),
            SizedBox(width: 10),
            Text("Add new", style: TextStyle( fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
