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
