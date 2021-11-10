import 'package:flutter/material.dart';
import 'package:test1/utility/my_constant.dart';

class smarthome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
        backgroundColor: Myconstat.orange1,
        // titleTextStyle: Myconstat().h1Style(),
        title: Text('Smart Home'),
        bottom: TabBar(
          indicatorColor: Myconstat.black,
          tabs: <Widget>[
            Tab(
              text: 'Switch',
            ),
            Tab(
              text: 'Electrical appliance',
            ),
            Tab(
              text: 'Utilities',
            ),
          ],
        ),
      )),
    );
  }
}
