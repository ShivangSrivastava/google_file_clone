import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      fixedColor: Vx.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: 2,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.cleaning_services),
          label: "Clean",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: "Important",
        ),
        BottomNavigationBarItem(
          activeIcon: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: context.theme.focusColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.file_copy,
            ),
          ),
          icon: const Icon(Icons.file_copy),
          label: "Browse",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.share),
          label: "Nearby Share",
        ),
      ],
    );
  }
}
