import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text(
          'Second Page',
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
                'This is The Second Page',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 20.0,
                  ),
                  RaisedButton(
                    color: Colors.pink,
                    child: Text(
                      'Go to Landing Page',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/landingPage');
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  FlatButton(
                    color: Colors.pink,
                    onPressed: () {
                      Navigator.pushNamed(context, '/firstPage');
                    },
                    child: Text(
                      'Go to First Page(back)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 50.0,
                  ),
                  Text(
                    'Go to Main Page',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.pink,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
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
