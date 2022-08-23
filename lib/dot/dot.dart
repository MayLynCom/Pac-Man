import 'package:bonfire/bonfire.dart';
import 'package:pacman/sprite_sheet/dot.dart';

class Dot extends SimpleEnemy with ObjectCollision {

  static int deathScore = 0;

  Dot(Vector2 position, Vector2 size)
      : super(
          position: position,
          size: size,
          animation: SimpleDirectionAnimation(
            idleRight: DotSpriteSheet.dotIdleRight,
            runRight: DotSpriteSheet.dotRunRight,
          ),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(size: Vector2(4, 4), align:Vector2(6, 6))
        ],
      ),
    );
  }

  @override
  bool onCollision(GameComponent component, bool active) {
    if(component is Enemy){
      return false;
    }

    return super.onCollision(component, active);
  }

  @override
  void die() {
    removeFromParent();
    deathScore = deathScore + 10;
    super.die();
  }

}
