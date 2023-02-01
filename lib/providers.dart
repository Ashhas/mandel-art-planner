import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandel_art_planner/data/repositories/project_repository.dart';

final projectRepositoryProvider = Provider<ProjectRepository>(
  (ref) => ProjectRepository(),
);
