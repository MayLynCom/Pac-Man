import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/dot/dot.dart';
import 'package:pacman/ghosts/ghost_green.dart';
import 'package:pacman/ghosts/ghost_light_blue.dart';
import 'package:pacman/ghosts/ghost_red.dart';
import 'package:pacman/ghosts/ghost_pink.dart';
import 'package:pacman/pacman/pacman.dart';
import 'interface/player_interface.dart';

const double tileSize = 16;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pacman Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: BonfireTiledWidget(
        joystick: Joystick(
            directional: JoystickDirectional(
                color: Colors.yellow,
                margin: const EdgeInsets.only(left: 275, bottom: 100))),
        map: TiledWorldMap('map/map_pacman.json', objectsBuilder: {
          'ghostRed': (properties) =>
              GhostRed(properties.position, properties.size),
          'ghostGreen': (properties) =>
              GhostGreen(properties.position, properties.size),
          'ghostPink': (properties) =>
              GhostPink(properties.position, properties.size),
          'ghostLightBlue': (properties) =>
              GhostLightBlue(properties.position, properties.size),
          'dot': (properties) => Dot(properties.position, properties.size),
        }),
        player: PacMan(
          Vector2(16, 16),
          Vector2(12, 12),
        ),
        overlayBuilderMap: {
          PlayerInterface.overlayKey: (context, game) =>
              PlayerInterface(game: game)
        },
        initialActiveOverlays: const [PlayerInterface.overlayKey],
        cameraConfig: CameraConfig(
          moveOnlyMapArea: true,
          smoothCameraEnabled: true,
          zoom: 1.5,
        ),
        showCollisionArea: true,
      ),
    );
  }
}
