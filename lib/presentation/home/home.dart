import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandel_art_planner/presentation/common/primary_button.dart';
import 'package:mandel_art_planner/presentation/home/widgets/project_tile.dart';
import 'package:mandel_art_planner/presentation/project/project_screen.dart';
import 'package:mandel_art_planner/providers.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    final projectRepo = ref.watch(projectRepositoryProvider);

    final projects = projectRepo.mandelProjects;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    PrimaryButton(
                      title: 'Tutorial',
                    ),
                    PrimaryButton(
                      title: 'Mandal Example',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(5),
                itemCount: projects.length,
                physics: const ClampingScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: ProjectTile(
                      projectName: projects[index],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProjectScreen(
                            projectName: projects[index],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
