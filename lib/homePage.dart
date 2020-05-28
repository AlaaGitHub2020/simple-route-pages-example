import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'Main Page',
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
                'This is The Main Page',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 40.0,
                  ),
                  RaisedButton(
                    color: Colors.green,
                    child: Text(
                      'Go to 1st Page',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/firstPage');
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, '/secondPage');
                    },
                    child: Text(
                      'Go to 2end Page',
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
                    'Go to Landing Page',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/landingPage');
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
