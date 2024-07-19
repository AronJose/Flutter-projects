import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';
import 'space.dart';

///Example:
///-------------------------
/// class HomeScreen extends StatelessWidget {
///   const HomeScreen({super.key});
///   @override
///   Widget build(BuildContext context) {
///     return Scaffold(
///       appBar: AppBar(
///         title: const Text("Home Screen"),
///       ),
///       body: const Loading(
///         isLoading: true // your loding contidtion here
///         child: MyUI(), //code for your screen UI,
///       ),
///     );
///   }
/// }

class Loading extends StatelessWidget {
  const Loading({
    super.key,
    required this.child,
    required this.isLoading,
  });
  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            color: AppColors.blackColor.withOpacity(0.3),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height: 70,
                decoration: BoxDecoration(
                  color: theme.brightness == Brightness.dark
                      ? AppColors.blackColor
                      : AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Platform.isIOS
                        ? const CupertinoActivityIndicator(
                            radius: 15,
                          )
                        : const CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                    Space.x(15),
                    Text(
                      "Please Wait...",
                      style: theme.textTheme.labelLarge,
                    )
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}


