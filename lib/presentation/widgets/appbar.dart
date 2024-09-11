import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color color;

  final String? iconPath;
  CustomAppBar({
    super.key,
    required this.color,
    this.iconPath,

  });



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color:Colors.blue,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25), // Darker shadow color
              offset: const Offset(0, 1), // Shadow below the container
              blurRadius: 1.0, // More spread out shadow
              spreadRadius: 1.0, // Slightly more intense shadow
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/splashimage.png"),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   
                    const Icon(
                      size: 28,
                      Icons.help_outline_rounded,
                      color: Colors.red
                    )
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}
