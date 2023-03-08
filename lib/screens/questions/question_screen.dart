import 'package:flutter/material.dart';

import '../../widgets/commom/background_decoration.dart';

class QuestionScreen extends StatelessWidget {
  static const routeName = '/questionScreen';
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundDecoration(
        child: Text('hey bro how you doing '),
      ),
    );
  }
}
