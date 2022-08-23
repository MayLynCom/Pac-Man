import 'package:bonfire/bonfire.dart';
import 'package:pacman/dot/dot.dart';
import '../sprite_sheet/pacman.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  PacMan(Vector2 position, Vector2 size)
      : super(
          position: position,
          size: size,
          speed: 50,
          animation: SimpleDirectionAnimation(
            idleRight: PacmanSpriteSheet.pacmanIdleRight,
            runRight: PacmanSpriteSheet.pacmanRunRight,
            idleLeft: PacmanSpriteSheet.pacmanIdleLeft,
            runLeft: PacmanSpriteSheet.pacmanRunLeft,
            idleDown: PacmanSpriteSheet.pacmanIdleDown,
            runDown: PacmanSpriteSheet.pacmanRunDown,
            idleUp: PacmanSpriteSheet.pacmanIdleUp,
            runUp: PacmanSpriteSheet.pacmanRunUp,
          ),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(size: Vector2(9, 9),align: Vector2(1, 1))
        ],
      ),
    );
  }

  @override
  bool onCollision(GameComponent component, bool active) {
    if(component is Dot){
      simpleAttackMelee(
        damage: 100,
        size: Vector2(8, 8),
        withPush: false,
      );
    }
    return super.onCollision(component, active);
  }

  @override
  void die() {
    animation?.playOnce(PacmanSpriteSheet.pacmanDeath,
        runToTheEnd: true, onFinish: () => removeFromParent());
    super.die();
  }
  @override
  void joystickChangeDirectional(JoystickDirectionalEvent event) {
    if (life != 0) {
      super.joystickChangeDirectional(event);
    }else{}

  }
}

