import "package:flutter/material.dart";

class CustomMainButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool isLoading;
  final VoidCallback onPressed;
  const CustomMainButton({Key? key, required this.child, required this.color, required this.isLoading, required this.onPressed}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ElevatedButton(onPressed: onPressed, 
      child: isLoading ? 
      Padding(padding: EdgeInsets.symmetric(vertical: 5),
          child: AspectRatio(aspectRatio: 1/1, child: CircularProgressIndicator(color: Colors.white))) : child,
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      fixedSize: Size(screenSize.width * 0.5, 40 )
    ),);
  }
}

