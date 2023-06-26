import 'package:flutter/material.dart';
import 'login_page.dart';
import 'registration_page.dart';
import 'dashboard.dart';
import 'profile.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Welcome to the School of Engineering Sciences!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'We are committed to providing quality education to our students, equipping them with the skills and knowledge they need to succeed in their careers.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'Our faculty is made up of experienced professionals who are passionate about teaching and research, and who work hard to ensure that our curriculum is up-to-date and relevant to the needs of the industry.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'At the School of Engineering Sciences, we offer a range of programs in various engineering fields, including civil, mechanical, electrical, and computer engineering. Our programs are designed to provide students with a strong foundation in the fundamentals of engineering, as well as hands-on experience through lab work and projects.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'Whether you are a current student, a prospective student, or just interested in learning more about the field of engineering, we invite you to explore our website and learn more about what we have to offer.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Register',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Student Dashboard',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, LoginPage.routeName);
          } else if (index == 1) {
            Navigator.pushNamed(context, RegistrationPage.routeName);
          } else if (index == 2) {
            Navigator.pushNamed(context, Dashboard.routeName);
          }
        },
      ),
    );
  }
}
