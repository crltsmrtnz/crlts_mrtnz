import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:crlts_mrtnz/pages/porfolio/game/2048/types/directions.dart';

class SwipeDetector extends StatelessWidget {
  const SwipeDetector({super.key, required this.child, this.sensitivity = 10});

  final Widget child;
  final int sensitivity;

  detectDirection({required Velocity velocity}) {
    final dx = velocity.pixelsPerSecond.dx;
    final dy = velocity.pixelsPerSecond.dy;
    final dxAbs = dx.abs();
    final dyAbs = dy.abs();
    if (dxAbs <= sensitivity && dyAbs <= sensitivity) return null;
    if (dxAbs > dyAbs) {
      return detectHorizontalDirection(dx);
    }
    return detectVerticalDirection(dy);
  }

  detectVerticalDirection(double? velocity) =>
      velocity != null && velocity < 0 ? Directions.down : Directions.up;
  detectHorizontalDirection(double? velocity) =>
      velocity != null && velocity > 0 ? Directions.left : Directions.right;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onVerticalDragEnd: (details) {
        if (kDebugMode) {
          print(detectVerticalDirection(details.primaryVelocity));
        }
      },
      onHorizontalDragEnd: (details) {
        if (kDebugMode) {
          print(detectHorizontalDirection(details.primaryVelocity));
        }
      },
      // onPanEnd: (details) {
      //   var direction = detectDirection(velocity: details.velocity);
      //   print("pan finished: $direction ${details.velocity}");
      // },
      child: child,
    ));
  }
}
