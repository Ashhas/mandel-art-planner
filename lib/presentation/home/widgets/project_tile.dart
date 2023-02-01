import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  final String projectName;

  const ProjectTile({
    required this.projectName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(
        child: Text(projectName),
      ),
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Goal Name',
          ),
        ],
      ),
      tileColor: const Color(0xFFf3e5f5),
      trailing: const Icon(
        Icons.close,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
