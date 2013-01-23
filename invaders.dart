library invaders;

import 'dart:html';
import 'dart:async';
import 'dart:math';

part 'board.dart';
part 'spaceship.dart';
part 'laser.dart';
part 'cloud.dart';
part 'creatures.dart';

main() {
  new Board(document.query('#canvas'));
}