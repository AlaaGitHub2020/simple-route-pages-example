import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'First Page',
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
                'This is The First Page',
                style: TextStyle(
                  color: Colors.deepPurple,
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
                    color: Colors.deepPurple,
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
                    color: Colors.deepPurple,
                    onPressed: () {
                      Navigator.pushNamed(context, '/secondPage');
                    },
                    child: Text(
                      'Go to 2end Page (Next)',
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
                    width: 40.0,
                  ),
                  Text(
                    'Go to Main Page',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.deepPurple,
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
