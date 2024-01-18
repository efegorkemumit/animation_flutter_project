import 'package:flutter/material.dart';

class AnimatedLoginPage extends StatefulWidget {
  const AnimatedLoginPage({super.key});

  @override
  State<AnimatedLoginPage> createState() => _AnimatedLoginPageState();
}

class _AnimatedLoginPageState extends State<AnimatedLoginPage> {
  @override
  Widget build(BuildContext context) {
    return _LoginPage();
  }
}
class _LoginPage extends StatelessWidget {
  var _deviceHeight;
  var _deviceWidth;
  
  Color _primaryColor = Color.fromRGBO(255, 194, 60, 1.0);
  Color _secondColor = Color.fromRGBO(16, 7, 32, 1.0);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: _primaryColor,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: _deviceHeight* 0.60,
          width: _deviceWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _avatarWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _avatarWidget(){
    return 
  }
}
