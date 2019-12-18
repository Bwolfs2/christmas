import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Wave extends StatelessWidget {
  final bool opacity;

  const Wave({Key key, this.opacity = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
        gradients: [
          [
            Colors.white,
            opacity ? Colors.white : Colors.white70,
          ],
          [
            Colors.white,
            Colors.white70,
          ],
          [
            Colors.white70,
            opacity ? Colors.white : Colors.white70,
          ]
        ],
        durations: [
          15000,
          24000,
          10000,
        ],
        heightPercentages: [
          0,
          0,
          0,
        ],
        blur: MaskFilter.blur(
          BlurStyle.solid,
          20,
        ),
        gradientBegin: Alignment.bottomCenter,
        gradientEnd: Alignment.topCenter,
      ),
      waveAmplitude: 20,
      size: Size(
        double.infinity,
        double.infinity,
      ),
    );
  }
}
