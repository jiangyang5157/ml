import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:ml/core/error/failures.dart';
import 'package:ml/core/injection.dart';
import 'package:ml/core/nav.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> _init() async {
    final failure = await _setup();
    if (failure == null) {
      print('#### _SplashPageState - _init - success and continue');
      locator<Nav>().router.navigateTo(context, 'TestPage',
          clearStack: true, transition: TransitionType.fadeIn);
    } else {
      print('#### _SplashPageState - _init - failed and exit');
      locator<Nav>().exit();
    }
  }

  Future<Failure> _setup() async {
    // processing...
    return null;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // processing widget if needed
  }
}
