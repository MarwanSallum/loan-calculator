import 'package:flutter/cupertino.dart';

class PageTransitionAnimation extends PageRouteBuilder{
  final Widget child;
   PageTransitionAnimation({
    required this.child,
}) : super(
     transitionDuration: Duration(milliseconds: 250),
     reverseTransitionDuration: Duration(milliseconds: 250),
     pageBuilder: (context, animation, secondaryAnimation) => child,
   );

   @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
       SlideTransition(
           position: Tween<Offset>(
             begin: Offset(-1, 0),
             end: Offset.zero,
           ).animate(animation),
         child: child,
       );
}