import 'package:flython/flython.dart';

class OpenCV extends Flython {
  static const cmdToGray = 1;

  Future<dynamic> toGray(
    String inputFile,
    String outputFile,
  ) async {
    var command = {
      "cmd": cmdToGray,
      "input": inputFile,
      "output": outputFile,
    };
    return await runCommand(command);
  }
}
