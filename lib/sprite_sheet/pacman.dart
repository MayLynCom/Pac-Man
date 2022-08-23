import 'package:bonfire/bonfire.dart';

class PacmanSpriteSheet {
  static Future<SpriteAnimation> get pacmanIdleLeft => SpriteAnimation.load(
        'heroSpriteLeft.png',
        SpriteAnimationData.sequenced(
            amount: 3,
            stepTime: 0.15,
            textureSize: Vector2(
              16,
              16,
            ),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get pacmanIdleRight => SpriteAnimation.load(
        'heroSpriteRight.png',
        SpriteAnimationData.sequenced(
            amount: 3,
            stepTime: 0.15,
            textureSize: Vector2(
              16,
              16,
            ),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get pacmanRunRight => SpriteAnimation.load(
        'heroSpriteRight.png',
        SpriteAnimationData.sequenced(
            amount: 3,
            stepTime: 0.15,
            textureSize: Vector2(
              16,
              16,
            ),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get pacmanRunLeft => SpriteAnimation.load(
        'heroSpriteLeft.png',
        SpriteAnimationData.sequenced(
            amount: 3,
            stepTime: 0.15,
            textureSize: Vector2(
              16,
              16,
            ),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get pacmanIdleDown => SpriteAnimation.load(
    'heroSpriteDown.png',
    SpriteAnimationData.sequenced(
        amount: 3,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(0, 0)),
  );

  static Future<SpriteAnimation> get pacmanRunDown => SpriteAnimation.load(
    'heroSpriteDown.png',
    SpriteAnimationData.sequenced(
        amount: 3,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(0, 0)),
  );

  static Future<SpriteAnimation> get pacmanIdleUp => SpriteAnimation.load(
    'heroSpriteUp.png',
    SpriteAnimationData.sequenced(
        amount: 3,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(0, 0)),
  );

  static Future<SpriteAnimation> get pacmanRunUp => SpriteAnimation.load(
    'heroSpriteUp.png',
    SpriteAnimationData.sequenced(
        amount: 3,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(0, 0)),
  );

  static Future<SpriteAnimation> get pacmanDeath => SpriteAnimation.load(
    'heroDeath.png',
    SpriteAnimationData.sequenced(
        amount: 12,
        stepTime: 0.15,
        textureSize: Vector2(
          16,
          16,
        ),
        texturePosition: Vector2(0, 0)),
  );

}
