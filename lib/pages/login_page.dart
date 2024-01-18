import 'package:animation_flutter_project_udemy/animaton/login_animation.dart';
import 'package:flutter/material.dart';

class AnimatedLoginPage extends StatefulWidget {
  const AnimatedLoginPage({super.key});

  @override
  State<AnimatedLoginPage> createState() => _AnimatedLoginPageState();
}

class _AnimatedLoginPageState extends State<AnimatedLoginPage>  with SingleTickerProviderStateMixin{

  late AnimationController _controller;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this,
    duration: Duration(seconds: 1),
      reverseDuration: Duration(milliseconds: 500),
    );
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _LoginPage(_controller);
  }
}
class _LoginPage extends StatelessWidget {
  var _deviceHeight;
  var _deviceWidth;
  
  Color _primaryColor = Color.fromRGBO(255, 194, 60, 1.0);
  Color _secondColor = Color.fromRGBO(16, 7, 32, 1.0);

  late AnimationController _controller;
  late EnterAnimation _animation;

  _LoginPage(this._controller){
    _animation = EnterAnimation(_controller);
    _controller.forward();
  }

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
    double _circleD = _deviceHeight * 0.25;
    return  AnimatedBuilder(
        animation: _animation.controller,
        builder: (BuildContext _context, Widget? _widget){
          return Transform(
            alignment: Alignment.center,
              transform: Matrix4.diagonal3Values(
                  _animation.circleSize.value,
                  _animation.circleSize.value,
                  1,
              ),
            child: Container(
              height: _circleD,
              width: _circleD,
              decoration: BoxDecoration(
                color: _secondColor,
                borderRadius: BorderRadius.circular(600),
                image: DecorationImage(
                  image: AssetImage('assets/image/main-profile.png')
                ),
              ),
            ),
          );

        }
    );
  }
}
