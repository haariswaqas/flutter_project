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
            Align(
              alignment: Alignment.center,
              child: Container(
                width: double.infinity,
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
            ),
            const SizedBox(height: 24),
            Text(
              'Here, you can access various features and information related to your student profile.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                            DataCell(Text('SENG 110')),
                            DataCell(Text('Engineering Mathematics')),
                            DataCell(Text('3')),
                            DataCell(Text('C+')),
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Exam Timetable',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Card(
                        child: ListTile(
                          title: const Text('Linear Circuits'),
                          subtitle: const Text('Date: 25th June, 2023'),
                          trailing: const Text('9:00 AM - 11:00 AM'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text('Data Structures & Algorithms'),
                          subtitle: const Text('Date: 28th June, 2023'),
                          trailing: const Text('1:00 PM - 3:00 PM'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text('Software Engineering'),
                          subtitle: const Text('Date: 30th June, 2023'),
                          trailing: const Text('9:00 AM - 12:00 PM'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text('Differential Equations'),
                          subtitle: const Text('Date: 3rd July, 2023'),
                          trailing: const Text('2:00 PM - 4:00 PM'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text('Digital System Design'),
                          subtitle: const Text('Date: 5th July, 2023'),
                          trailing: const Text('9:00 AM - 11:00 AM'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
