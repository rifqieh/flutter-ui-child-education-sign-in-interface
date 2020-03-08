import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffffbf08),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset('img1.png'),
            Positioned(
              bottom: 150,
              child: Material(
                color: Color(0xffff5f30),
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xffffbf08),
              height: 50,
            ),
            Image.asset('img2.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  hintText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey[400],
                  ),
                  hintText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              color: Color(0xffff5f30),
              borderRadius: BorderRadius.circular(30),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width - 60,
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Forgot password?',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Sign in with',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue[900],
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.twitter,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.googlePlus,
                    size: 30,
                    color: Color(0xffdd4b39),
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
