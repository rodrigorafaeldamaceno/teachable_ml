import 'package:flutter/foundation.dart';
import 'package:teachable_ml/helpers/types.dart';

class Examples {
  final String description;
  final String location;
  final Types type;

  Examples(
      {@required this.description,
      @required this.location,
      @required this.type});
}

final listOfExamples = [
  Examples(
    description: 'Cats and Dogs',
    location: 'cats_and_dogs',
    type: Types.CATS_AND_DOGS,
  ),
  Examples(
    description: 'Strawberries',
    location: 'strawberries',
    type: Types.STRAWBERRIES,
  ),
  Examples(
    description: 'EasyAI',
    location: 'easyai',
    type: Types.EASY_AI,
  )
];
