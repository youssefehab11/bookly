import 'package:flutter/material.dart';

class SlideRightTransition extends PageRouteBuilder{
  final Widget page;
  
  SlideRightTransition({required this.page}) : super(
    pageBuilder: (context, animation, secondryAnimation) => page,
    transitionsBuilder: (context, animation, secondryAnimation, child){
      final CurvedAnimation curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.ease); 
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      return SlideTransition(
        position: Tween<Offset>(begin: begin, end: end).animate(curvedAnimation),
        child: child,
        );
    }
  );
  
}