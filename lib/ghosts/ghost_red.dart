import 'package:bonfire/bonfire.dart';
import 'package:pacman/main.dart';
import '../sprite_sheet/ghost_red.dart';

class GhostRed extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {
  GhostRed(Vector2 position, Vector2 size)
      : super(
            position: position,
            size: size,
            speed: 30,
            life: 1000,
            animation: SimpleDirectionAnimation(
              idleRight: GhostSpriteSheet.ghostIdleRight,
              runRight: GhostSpriteSheet.ghostRunRight,
              idleLeft: GhostSpriteSheet.ghostIdleLeft,
              runLeft: GhostSpriteSheet.ghostRunLeft,
              idleDown: GhostSpriteSheet.ghostIdleDown,
              runDown: GhostSpriteSheet.ghostRunDown,
              idleUp: GhostSpriteSheet.ghostIdleUp,
              runUp: GhostSpriteSheet.ghostRunUp,
            )) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(size: Vector2(8, 8), align: Vector2(1, 1)),
        ],
      ),
    );
  }

  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {},
      radiusVision: tileSize * 2,
      margin: 0,
    );
    runRandomMovement(dt, timeKeepStopped: 20, speed: 30, maxDistance: 500);
    super.update(dt);
  }

  @override
  bool onCollision(GameComponent component, bool active) {
    if(component is Player){
      simpleAttackMelee(
        damage: 100,
        size: Vector2(16, 16),
      );
    }
    return super.onCollision(component, active);
  }

}
