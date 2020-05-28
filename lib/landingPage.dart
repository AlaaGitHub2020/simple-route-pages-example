import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Landing Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
              ),
              Text(
                'This is The Landing Page',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 50.0,
                  ),
                  Icon(
                    Icons.home,
                    color: Colors.red,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  RaisedButton(
                    color: Colors.red,
                    child: Text(
                      'Go to Main Page',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
