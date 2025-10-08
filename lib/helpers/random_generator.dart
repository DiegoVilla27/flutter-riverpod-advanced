import 'package:random_name_generator/random_name_generator.dart';

/// [RandomGenerator] provides a utility method to generate random names.
/// 
/// - Uses the [random_name_generator] package.
/// - The [getRandomName] method returns a random full name from the specified zone (Spain).
/// 
/// Usage:
/// Call [RandomGenerator.getRandomName()] to obtain a random name.
class RandomGenerator {
  static String getRandomName() {
    final randomNames = RandomNames(Zone.spain);
    return randomNames.fullName();
  }
}
