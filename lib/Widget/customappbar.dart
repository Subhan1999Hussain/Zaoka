// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool isLeading;
  CustomeAppBar({Key? key, this.title, this.isLeading = true})
      : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        title ?? "",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      leading: isLeading
          ? Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(
                'assets/assets/icons/ic_back.png',
              ),
            )
          : SizedBox(),
    );
  }
}
// class CustomAppBar extends StatefulWidget {
//   PreferredSizeWidget? appBar;
//    CustomAppBar({Key? key,this.appBar}) : super(key: key);

//   @override
//   State<CustomAppBar> createState() => _CustomAppBarState();
// }

// class _CustomAppBarState extends State<CustomAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0.0,
//       title: const Text(
//         "LOGIN",
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 30.0,
//         ),
//       ),
//       centerTitle: true,
//       leading: Padding(
//         padding: const EdgeInsets.all(6.0),
//         child: Image.asset(
//           'assets/assets/icons/ic_back.png',
//         ),
//       ),
//     );
//   }
// }
