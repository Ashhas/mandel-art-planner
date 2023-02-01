import 'package:flutter/material.dart';
import 'package:mandel_art_planner/presentation/common/grid_widget.dart';

class ProjectScreen extends StatefulWidget {
  final String projectName;

  const ProjectScreen({
    required this.projectName,
    super.key,
  });

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          widget.projectName,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [
          Center(
            child: Text(
              'View full plan',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: const Center(
        child: GridWidget(),
      ),
    );
  }
}
