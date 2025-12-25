import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks/model/task_model.dart';
import 'package:tasks/viewmodel/tasks_cubit.dart';

class CustomCheckBoxTile extends StatelessWidget {
  const CustomCheckBoxTile({
    super.key,
    required this.task,
  });

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.drag_indicator, color: Colors.black45,),
          visualDensity: VisualDensity.compact,
        ),
        Checkbox(
          side: BorderSide(color: Colors.black45),
          shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
          ),
          onChanged: (v){
            context.read<TasksCubit>().toggleTask(task: task);
          },
          value: task.isChecked,
        ),
        Expanded(
          child: TextField(
            maxLines: null,
            style: TextStyle(fontSize: 14),
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                border: InputBorder.none
            ),
            onChanged: (value){
              task.task = value;
            },
          ),
        ),
        IconButton(
          visualDensity: VisualDensity.compact,
          onPressed: (){
            context.read<TasksCubit>().removeTask(task: task);
          }, icon: Icon(CupertinoIcons.xmark)
        ),
      ],
    );;
  }
}
