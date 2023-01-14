import 'package:flutter/material.dart';
import 'package:mandel_art_planner/presentation/common/primary_button.dart';
import 'package:mandel_art_planner/presentation/home/widgets/project_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(5),
                itemCount: 3,
                physics: const ClampingScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return const ProjectTile(
                    projectName: 'project',
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
