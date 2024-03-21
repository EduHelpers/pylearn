import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/quiz': (context) => QuizScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PyLearn', style: TextStyle(
          color: Colors.white,
          fontFamily: 'Cygre',
          fontSize: 25
        )),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 70, height: 80,),
                Container(
                  width: 40,
                  height: 40,
                  child: Image.asset('Assets/free-python-3629591-3032289.png'),
                ),
                SizedBox(width: 20),
                Text('Learn Python', style: TextStyle(
                fontSize: 30,
                fontFamily: 'Cygre',
                  ),
                ),
              ]
            ),
            Row(
              children: [
                SizedBox(width: 30, height: 40,),
                ElevatedButton(
                  onPressed: () {
                    // TODO
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(160, 160)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('Assets/free-python-3629591-3032289.png'),
                      ),
                      Text('Basics', style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Cygre',
                        color: Colors.black
                      ),),
                    ],
                  ),
                ),
                SizedBox(width: 30, height: 40,),
                ElevatedButton(
                  onPressed: () {
                    // TODO
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(160, 160)), // Set width and height
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('Assets/free-python-3629591-3032289.png'),
                      ),
                      Text('Control', style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Cygre',
                          color: Colors.black
                      ),),
                      Text('Structure', style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Cygre',
                          color: Colors.black
                      ),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(width: 30, height: 40,),
            Row(
              children: [
                SizedBox(width: 30, height: 40,),
                ElevatedButton(
                  onPressed: () {
                    // TODO
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(160, 160)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('Assets/free-python-3629591-3032289.png'),
                      ),
                      Text('Data and', style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Cygre',
                          color: Colors.black
                      ),),
                      Text('operations', style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Cygre',
                          color: Colors.black
                      ),),
                    ],
                  ),
                ),
                SizedBox(width: 30, height: 40,),
                ElevatedButton(
                  onPressed: () {
                    // TODO
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(160, 160)), // Set width and height
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('Assets/free-python-3629591-3032289.png'),
                      ),
                      Text('Functions', style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Cygre',
                          color: Colors.black
                      ),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(width: 30, height: 40,),
            Row(
              children: [
                SizedBox(width: 30, height: 40,),
                ElevatedButton(
                  onPressed: () {
                    // TODO
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(160, 160)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('Assets/free-python-3629591-3032289.png'),
                      ),
                      Text('OOP', style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Cygre',
                          color: Colors.black
                      ),),
                    ],
                  ),
                ),
                SizedBox(width: 30, height: 40,),
                ElevatedButton(
                  onPressed: () {
                    // TODO
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(160, 160)), // Set width and height
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('Assets/free-python-3629591-3032289.png'),
                      ),
                      Text('Advanced', style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Cygre',
                          color: Colors.black
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quiz',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/profile');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/quiz');
          }
        },
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quiz',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/profile');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/quiz');
          }
        },
      ),
    );
  }
}

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // TODO
          },
          child: Text('Start Quiz'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quiz',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/profile');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/quiz');
          }
        },
      ),
    );
  }
}