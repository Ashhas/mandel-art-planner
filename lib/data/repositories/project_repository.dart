import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProjectRepository {
  ProjectRepository();

  String get projectName {
    return 'first project';
  }

  List<String> get mandelProjects {
    return [
      'asd',
      'asdqw',
      'qpopoe',
    ];
  }
}