import 'package:bonfire/bonfire.dart';

class DotSpriteSheet {
  static Future<SpriteAnimation> get dotIdleRight => SpriteAnimation.load(
    'dot.png',
    SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(0, 0)),
  );

  static Future<SpriteAnimation> get  dotRunRight => SpriteAnimation.load(
    'dot.png',
    SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(0, 0)),
  );
}