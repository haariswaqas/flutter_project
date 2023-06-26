import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Student Dashboard',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profile_picture.jpg'),
                  ),
                  Text(
                    'Name',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Haaris Ali Waqas',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Student ID',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '10947015',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Department',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Computer Engineering (CPEN)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'haarisali9@gmail.com',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const SizedBox(height: 16),
            Text(
              'Here, you can access various features and information related to your student profile.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Text(
              'Upcoming Assignments',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                title: const Text('Linear Circuits Homework 2'),
                subtitle: const Text('Due: 12th June, 2023'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Linear Circuits Lab 1 Report'),
                subtitle: const Text('Due: TBD'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Data Structures & Algorithms Lab 3'),
                subtitle: const Text('Due: 17th June, 2023'),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Upcoming Projects',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                title: const Text('Linear Circuits Final Project'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Data Communications Final Project'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Software Engineering Project 1'),
                subtitle: const Text('Due: 10th June, 2023'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Software Engineering Project 2'),
                subtitle: const Text('Due: TBD'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Software Engineering Project 3'),
                subtitle: const Text('Due: TBD'),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Courses Offered / Grades',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            DataTable(
              columns: const [
                DataColumn(label: Text('COURSE CODE')),
                DataColumn(label: Text('COURSE TITLE')),
                DataColumn(label: Text('CREDIT')),
                DataColumn(label: Text('GRADE')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('SENG 101')),
                  DataCell(Text('Calculus 1: Single Variable')),
                  DataCell(Text('4')),
                  DataCell(Text('C+')),
                ]),
                DataRow(cells: [
                  DataCell(Text('SENG 103')),
                  DataCell(Text('Mechanics 1: Statics')),
                  DataCell(Text('3')),
                  DataCell(Text('D')),
                ]),
                DataRow(cells: [
                  DataCell(Text('SENG 105')),
                  DataCell(Text('Engineering Graphics (CAD)')),
                  DataCell(Text('3')),
                  DataCell(Text('B+')),
                ]),
                DataRow(cells: [
                  DataCell(Text('SENG 107')),
                  DataCell(Text('Intro to Engineering.')),
                  DataCell(Text('2')),
                  DataCell(Text('D+')),
                ]),
                DataRow(cells: [
                  DataCell(Text('CPEN 103')),
                  DataCell(Text('Computer Engineering Innovations')),
                  DataCell(Text('3')),
                  DataCell(Text('A')),
                ]),
                DataRow(cells: [
                  DataCell(Text('UGRC 110')),
                  DataCell(Text('Academic Writing 1')),
                  DataCell(Text('3')),
                  DataCell(Text('B')),
                ]),
                DataRow(cells: [
                  DataCell(Text('SENG 111')),
                  DataCell(Text('General Physics')),
                  DataCell(Text('3')),
                  DataCell(Text('F')),
                ]),
                DataRow(cells: [
                  DataCell(Text('SENG 108')),
                  DataCell(Text('Basic Electronics')),
                  DataCell(Text('3')),
                  DataCell(Text('C')),
                ]),
                DataRow(cells: [
                  DataCell(Text('SENG 106')),
                  DataCell(Text('Applied Electricity')),
                  DataCell(Text('3')),
                  DataCell(Text('D')),
                ]),
                DataRow(cells: [
                  DataCell(Text('SENG 104')),
                  DataCell(Text('Mechanics 2: Dynamics')),
                  DataCell(Text('3')),
                  DataCell(Text('F')),
                ]),
                DataRow(cells: [
                  DataCell(Text('UGRC 150')),
                  DataCell(Text('Critical Thinking & Practical Reasoning')),
                  DataCell(Text('3')),
                  DataCell(Text('B-')),
                ]),
                DataRow(cells: [
                  DataCell(Text('CPEN 104')),
                  DataCell(Text('Engineering Design')),
                  DataCell(Text('3')),
                  DataCell(Text('C+')),
                ]),
                DataRow(cells: [
                  DataCell(Text('SENG 102')),
                  DataCell(Text('Calculus 2: Multivariable')),
                  DataCell(Text('4')),
                  DataCell(Text('A')),
                ]),
                DataRow(cells: [
                  DataCell(Text('SENG 112')),
                  DataCell(Text('Engineering Computational Tools')),
                  DataCell(Text('3')),
                  DataCell(Text('D+')),
                ]),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
