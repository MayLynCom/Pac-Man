import 'package:bonfire/bonfire.dart';

class GhostSpriteSheet {
  static Future<SpriteAnimation> get ghostIdleLeft => SpriteAnimation.load(
    'GhostLightBlue.png',
    SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(16, 0)),
  );

  static Future<SpriteAnimation> get  ghostIdleRight => SpriteAnimation.load(
    'GhostLightBlue.png',
    SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(0, 0)),
  );

  static Future<SpriteAnimation> get  ghostRunRight => SpriteAnimation.load(
    'GhostLightBlue.png',
    SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(0, 0)),
  );

  static Future<SpriteAnimation> get  ghostRunLeft => SpriteAnimation.load(
    'GhostLightBlue.png',
    SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(16, 0)),
  );

  static Future<SpriteAnimation> get  ghostIdleDown => SpriteAnimation.load(
    'GhostLightBlue.png',
    SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(48, 0)),
  );

  static Future<SpriteAnimation> get  ghostRunDown => SpriteAnimation.load(
    'GhostLightBlue.png',
    SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(48, 0)),
  );

  static Future<SpriteAnimation> get  ghostIdleUp => SpriteAnimation.load(
    'GhostLightBlue.png',
    SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(32, 0)),
  );

  static Future<SpriteAnimation> get  ghostRunUp => SpriteAnimation.load(
    'GhostLightBlue.png',
    SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(32, 0)),
  );
}
