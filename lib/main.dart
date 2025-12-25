import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks/view/tasks_view.dart';
import 'package:tasks/viewmodel/tasks_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => TasksCubit(),
          child: TasksView(),
        )
    );
  }
}

