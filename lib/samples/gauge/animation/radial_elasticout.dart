import 'package:flutter_examples/model/sample_view.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class RadialElasticOutAnimation extends SampleView {
  const RadialElasticOutAnimation(Key key) : super(key: key);
  
  @override
  _RadialElasticOutAnimationState createState() =>
      _RadialElasticOutAnimationState();
}

class _RadialElasticOutAnimationState extends SampleViewState {
  _RadialElasticOutAnimationState();
  
  @override
  Widget build(BuildContext context) {
    return getRadialElasticOutAnimation();
  }

SfRadialGauge getRadialElasticOutAnimation() {
  return SfRadialGauge(
    axes: <RadialAxis>[
      RadialAxis(
          startAngle: 180,
          endAngle: 360,
          showAxisLine: true,
          canScaleToFit: true,
          interval: 10,
          showLabels: false,
          radiusFactor: 0.9,
          majorTickStyle: MajorTickStyle(
              length: 0.1, lengthUnit: GaugeSizeUnit.factor, thickness: 1.5),
          minorTicksPerInterval: 4,
          pointers: <GaugePointer>[
            RangePointer(
                gradient: kIsWeb
                    ? null
                    : const SweepGradient(
                        colors: <Color>[Color(0xFFD481FF), Color(0xFF06F0E0)],
                        stops: <double>[0.25, 0.75]),
                value: 70,
                width: 5,
                animationDuration: 2000,
                enableAnimation: true,
                animationType: AnimationType.elasticOut,
                color: const Color(0xFF00A8B5)),
            NeedlePointer(
                value: 70,
                needleStartWidth: 0,
                needleColor: kIsWeb ? null : const Color(0xFFD481FF),
                lengthUnit: GaugeSizeUnit.factor,
                needleLength: 1,
                enableAnimation: true,
                animationDuration: 2000,
                animationType: AnimationType.elasticOut,
                needleEndWidth: 5,
                knobStyle:
                    KnobStyle(knobRadius: 0, sizeUnit: GaugeSizeUnit.factor))
          ],
          minorTickStyle: MinorTickStyle(
              length: 0.04, lengthUnit: GaugeSizeUnit.factor, thickness: 1.5),
          axisLineStyle: AxisLineStyle(color: Colors.transparent))
    ],
  );
}
}