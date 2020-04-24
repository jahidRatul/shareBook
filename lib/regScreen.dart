import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegScreen extends StatefulWidget {
  static String id = 'reg';
  @override
  _RegScreenState createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/welcomeBook.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(30),
                  child: Text(
                    'Share book, Share Knowledge..',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.yellow),
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(left: 30, top: 30, right: 30),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                    cursorColor: Color(0xFF9b9b9b),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.cyanAccent,
                      ),
                      hintText: 'Enter Phone No',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(left: 30, top: 30, right: 30),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.words,
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                    cursorColor: Color(0xFF9b9b9b),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.cyanAccent,
                      ),
                      hintText: 'Enter UserName',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(left: 30, top: 30, right: 30),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                    cursorColor: Color(0xFF9b9b9b),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key, color: Colors.cyanAccent),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(left: 30, top: 30, right: 30),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                    cursorColor: Color(0xFF9b9b9b),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key, color: Colors.cyanAccent),
                      hintText: 'Verify Password',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
                  child: RaisedButton(
                    elevation: 10,
                    color: Colors.pinkAccent,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    onPressed: _isLoading ? null : _signUp,
                    child: Text(
                      _isLoading ? 'Logging...' : 'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    disabledColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _signUp() async {}
}
