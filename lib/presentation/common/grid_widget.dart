import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({super.key});

  @override
  _GridWidgetState createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFf3e5f5),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFf3e5f5),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFf3e5f5),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFf3e5f5),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFf3e5f5),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFf3e5f5),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFf3e5f5),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFf3e5f5),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
