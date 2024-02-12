import 'package:flutter/material.dart';
import 'package:todo_riverpod/utils/utils.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({super.key, this.child, this.height});
  final Widget? child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Container(
      width: deviceSize.width,
      height: height ?? deviceSize.height * 0.3,
      decoration: BoxDecoration(
        color: colors.primaryContainer,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: child,
    );
  }
}
