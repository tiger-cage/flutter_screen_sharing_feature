import 'package:flutter/material.dart';

import 'Constants.dart';

class ScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: true,
        backgroundColor: kBackgroundColor,
        title: Text(
          'Screen',
          style: TextStyle(
            color: kSolidColor,
            fontSize: 28.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: <Widget>[
          IconButton(
            iconSize: 28.0,
            icon: Icon(
              Icons.notifications,
              color: kSolidColor,
            ),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.link),
                      hintText: 'RTMP Destination Link',
                      labelText: 'RTMP Destination',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    initialValue: 'rtmp://159.65.11.87:1935/live/screen',
                  ),
                  RaisedButton(
                    color: Colors.blueAccent,
                    child: Text("Screen Share via RTMP"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Divider(
            color: Colors.grey,
            height: 1,
            thickness: 1,
            indent: 30,
            endIndent: 30,
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.link),
                      hintText: 'RTSP IP & Port',
                      labelText: 'RTSP IP & Port',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    initialValue: 'http://127.0.0.1:1554',
                  ),
                  RaisedButton(
                    color: Colors.greenAccent,
                    child: Text("Screen Share via RTSP"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Center(
            child: RaisedButton(
              color: Colors.redAccent,
              child: Text(
                "Stop Streaming",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
