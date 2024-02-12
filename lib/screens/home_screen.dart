import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_riverpod/utils/extensions.dart';
import 'package:todo_riverpod/widgets/display_list_task.dart';
import 'package:todo_riverpod/widgets/white_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Container(
              height: deviceSize.height * 0.3,
              width: deviceSize.width,
              color: colors.primary,
              child: const Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WhiteText(
                    text: '12 Februari 2024',
                    size: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  Gap(30),
                  WhiteText(
                    text: 'My Todo List',
                    size: 40,
                  ),
                ],
              )),
            )
          ],
        ),
        Positioned(
          top: 170,
          left: 0,
          right: 0,
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const DisplayListTask(
                    tasks: [],
                  ),
                  // CommonContainer(
                  //   height: deviceSize.height * 0.3,
                  //   child: ListView.builder(
                  //       shrinkWrap: true,
                  //       itemCount: 8,
                  //       padding: EdgeInsets.zero,
                  //       itemBuilder: (ctx, index) {
                  //         return const Text('Home');
                  //       }),
                  // ),
                  const Gap(10),
                  Text(
                    'Completed',
                    style: context.textTheme.headlineMedium,
                  ),
                  const Gap(10),
                  const DisplayListTask(
                    tasks: [],
                    isComletedTask: true,
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: WhiteText(
                        text: 'Add Todo',
                        size: 16,
                      ),
                    ),
                  ),
                  const Gap(30),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
