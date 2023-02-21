import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class BiometricsPage extends StatelessWidget {
  const BiometricsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          faceIDLottie,
          width: 250,
          height: 250,
          frameRate: FrameRate(60),
          repeat: false,
        ),
      ),
    );
  }
}