import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lezioni/core/utils/app_assets.dart';

class SlideTransitionWidget extends StatelessWidget {
  const SlideTransitionWidget({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: slideAnimation, child: SvgPicture.asset(Assets.imagesRose));
  }
}
