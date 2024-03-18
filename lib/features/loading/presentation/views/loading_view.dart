import 'package:flutter/material.dart';
import 'package:lezioni/core/functions/navigation.dart';
import 'package:lezioni/core/utils/app_assets.dart';
import 'package:lezioni/core/utils/app_colors.dart';

import 'package:lezioni/features/loading/presentation/widgets/slide_transition_widget.dart';
import 'package:lezioni/features/loading/presentation/widgets/text_container_widget.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slideAnimation;
  @override
  initState() {
    super.initState();
    controllerAnimationMethod();
    delayedMethod();
  }

  void controllerAnimationMethod() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    slideAnimation = Tween<Offset>(begin: Offset(0.0, 3), end: Offset(0.0, 0.0))
        .animate(controller);
    controller.forward();
    controller.addListener(() => setState(() {}));
  }

  void delayedMethod() {
    Future.delayed(Duration(seconds: 4), () {
      customPush(context, '/homeView');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Future.delayed(Duration(seconds: 3), () {
  //     customPush(context, '/');
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.darkPurple,
        body: Stack(fit: StackFit.expand, children: [
          Image.asset(fit: BoxFit.cover, Assets.imagesMaskGroup),
          SlideTransitionWidget(slideAnimation: slideAnimation),
          Center(
            child: TextContainerWidget(),
          )
        ]));
  }
}
