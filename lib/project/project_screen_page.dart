import 'package:flutter/material.dart';

class ProjectScreenPage extends StatelessWidget {
  const ProjectScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'lib/images/photo2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            leading: Padding(
              padding: EdgeInsets.all(40),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.home, color: Colors.black, size: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
