import 'package:flutter/material.dart';

class BackgroundImage extends StatefulWidget {
  final Widget? Child;

  const BackgroundImage({Key? key, required this.Child}) : super(key: key);

  @override
  State<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      //constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'assets/assets/images/background_image.png',
        ),
        fit: BoxFit.fill,
      )),
      child: widget.Child,
    );
  }
}
