import 'package:flutter/material.dart';

class CustomBottomContainer extends StatefulWidget {
  final String bottomtext, bottomboldtext;
  const CustomBottomContainer({
    Key? key,
    required this.bottomtext,
    required this.bottomboldtext,
  }) : super(key: key);

  @override
  State<CustomBottomContainer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomBottomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
            text: widget.bottomtext,
            children: [
              TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19.0,
                ),
                text: widget.bottomboldtext,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
