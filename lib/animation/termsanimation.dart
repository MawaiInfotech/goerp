import 'package:animated_widgets/widgets/opacity_animated.dart';
import 'package:animated_widgets/widgets/translation_animated.dart';
import 'package:flutter/material.dart';
import 'package:goerp/utils/screen_size_config.dart';

class TermsAnimation extends StatelessWidget {
  const TermsAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TranslationAnimatedWidget.tween(
        translationDisabled: const Offset(0,200),
       // delay: Duration(milliseconds: 1000),
        duration: const Duration(milliseconds: 1100),
        translationEnabled: const Offset(0,0),
        //enabled: _dispaly,
        child: OpacityAnimatedWidget.tween(
            opacityDisabled: 0,
            opacityEnabled: 1,
            duration: const Duration(milliseconds: 500),
            child: Image.asset("assets/images/goerp.ai.png",scale: 4.dw,)));
  }
}
