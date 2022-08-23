import 'package:bonfire/bonfire.dart';

class Dot extends GameDecoration with Sensor {
  static int deathScore = 0;

  Dot(Vector2 position, Vector2 size)
      : super.withSprite(
    sprite: Sprite.load('dot.png'),
    position: position,
    size: size,
  )
  {
    // call this method to configure sensor area.
    setupSensorArea(
        areaSensor: [
          CollisionArea.circle(radius: 4, align: Vector2(4, 4))
        ]
    );
  }

  @override
  void onContact(GameComponent component) {
    if(component is Player){
      removeFromParent();
      deathScore = deathScore + 10 ;
    }
  }

}
