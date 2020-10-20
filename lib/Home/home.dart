import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/background.dart';
import 'components/header.dart';
import 'components/listpelajaran.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Center(child: Text('M-Learning Islam Dev  🕋'))),
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Positioned.fill(child: Background()),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Header(),
                ),
                Container(
                  height: 270,
                ),
                ListPelajaran(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: Center(child: Text("©mLearning Islam Indonesia")),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
