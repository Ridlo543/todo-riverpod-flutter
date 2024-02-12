import 'package:flutter/material.dart';
import 'package:todo_riverpod/data/data.dart';
import 'package:todo_riverpod/utils/utils.dart';
import 'common_container.dart';

class DisplayListTask extends StatelessWidget {
  const DisplayListTask(
      {super.key, required this.tasks, this.isComletedTask = false});

  final List<Task> tasks;
  final bool isComletedTask;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height =
        isComletedTask ? deviceSize.height * 0.25 : deviceSize.height * 0.3;

    final emptyTaskMessage =
        isComletedTask ? 'No completed task yet' : 'No task yet';

    return CommonContainer(
      height: height,
      child: tasks.isEmpty
          ? Center(
              child: Text(
              emptyTaskMessage,
              style: context.textTheme.headlineSmall,
            ))
          : ListView.builder(
              shrinkWrap: true,
              itemCount: tasks.length,
              padding: EdgeInsets.zero,
              itemBuilder: (ctx, index) {
                return const Text('Home');
              }),
    );
  }
}
