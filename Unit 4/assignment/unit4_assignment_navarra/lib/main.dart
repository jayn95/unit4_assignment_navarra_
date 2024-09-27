import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Profile App',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 60.0),
          child: Text(
            'Jill Valente Navarra',
            style: TextStyle(
              fontSize: 19,
              fontFamily: 'Vonique',
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 221, 131, 153),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Profile Container with Background Image and adjusted size
          Container(
            height: 180, // Adjust height as needed
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/wall.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Align(
              alignment: Alignment.centerLeft, // Aligns the content to the left
              child: Row(
                children: [
                  SizedBox(width: 70),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                        'assets/images/jay.png'), // Ensure this path is correct
                  ),
                  SizedBox(width: 16),
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jill Navarra',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'BS in Computer Science - WVSU',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Container for Information and Biography sections
          Expanded(
            child: Row(
              children: [
                // Information Section
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(60.0),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 241, 185,
                          191), // Set a light blue background for the information section
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Information',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: ListView(
                            children: [
                              _buildInfoRow(Icons.cake, 'Age           ', '21'),
                              _buildInfoRow(Icons.email, 'Email        ',
                                  'jill.navarra@wvsu.edu.ph'),
                              _buildInfoRow(
                                  Icons.phone, 'Phone      ', '+123 456 7890'),
                              _buildInfoRow(Icons.location_city, 'Address   ',
                                  'Pototan, Iloilo'),
                              _buildInfoRow(Icons.school, 'Education',
                                  'BS in Computer Science'),
                              _buildInfoRow(
                                  Icons.favorite, 'Fav Artist ', 'T.S.'),
                              _buildInfoRow(Icons.brush, 'Hobbies   ',
                                  'Art, Food Trip, Journal'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Biography Section
                Container(
                  width: 1000, // Adjust width as needed
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 252,
                        243), // Background color for the biography section
                  ),
                  child: Center(
                    // Center the entire inner container
                    child: Container(
                      width: 890,
                      height: 450, // Set a new width
                      padding: const EdgeInsets.all(
                          50), // Padding for the inner container
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Background color for the inner container
                        borderRadius: BorderRadius.circular(
                            3), // Optional: rounded corners
                        border: Border.all(
                          // Add border outline
                          color: Colors.grey, // Border color
                          width: 0.5, // Border width
                        ),
                      ),
                      child: const Column(
                        // Use Column to stack title and text
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'This is My Story',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Hello! I am Jill Navarra a third year student from BS in Computer Science. '
                            'I have a passion for trying out new things and learning new skills. Fun fact about me is that'
                            'I am an introvert witha black Golden Retriever personality. I like express myself through Art'
                            'but at the same time I have a deep interest in Science and Mathematics. I aim for growth and improvement in my life.'
                            ' Someday, I want to inspire others to dream big and never give up. Even if we failed so many times, just try again. '
                            'Even if we lost something important in our life, something even better will come. Even if we made a mistake, there are'
                            ' more chances for change. Even if life is imperfect, it is still beautiful. Even if we stumble again and again and again, we must go on.'
                            'And I believe that the personal values we earned from the battles we fought and the hardships we endured are what makes us a better person.'
                            ' And by becoming a better person, the world starts to become better also. And lastly, all this things are possible with trust and faith in God.'
                            ' So this is me, the real me!',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Row(
            children: [
              Icon(icon, size: 24),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(width: 16), // Add space between label and data
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                data,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
