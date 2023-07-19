import 'package:flutter/material.dart';
import 'package:gpa_planner/screens/gpa_creater.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/112798990?v=4'),
              ),
              accountName: Text('iNee'),
              accountEmail: Text('heyhjs@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.local_fire_department_rounded),
              title: const Text('Create GPA'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GpaCreater(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'You are the best.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
