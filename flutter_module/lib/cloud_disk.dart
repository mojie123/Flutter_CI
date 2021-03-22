
import 'package:flutter/material.dart';

class CloudDisk extends StatefulWidget {
  @override
  _CloudDiskState createState() => _CloudDiskState();
}

class _CloudDiskState extends State<CloudDisk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('云盘'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(child: Text('哈哈'),),
      ),
    );
  }
}
