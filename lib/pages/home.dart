import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_file_clone/widgets/cards.dart';
import 'package:google_file_clone/widgets/navbar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      bottomNavigationBar: const MyNavBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Recent".text.make(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const ImageCard(
                    image: "assets/image.jpg",
                    title: "Screenshots",
                    subtitle: "Images",
                  ),
                  16.widthBox,
                  const ImageCard(
                    image: "assets/image.jpg",
                    title: "WhatsApp Images",
                    subtitle: "Images",
                  ),
                  16.widthBox,
                  const ImageCard(
                    image: "assets/image.jpg",
                    title: "Camera",
                    subtitle: "Images",
                  ),
                  16.widthBox,
                  const ImageCard(
                    image: "assets/image.jpg",
                    title: "Downloads",
                    subtitle: "Images",
                  ),
                ],
              ).pSymmetric(v: 16),
            ),
            "Cateories".text.make(),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                const TextCard(
                  icon: Icon(Icons.download),
                  title: "Downloads",
                  subtitle: "401 MB",
                ).wPCT(context: context, widthPCT: 45),
                const TextCard(
                  icon: Icon(Icons.image),
                  title: "Images",
                  subtitle: "157 MB",
                ).wPCT(context: context, widthPCT: 45),
                const TextCard(
                  icon: Icon(CupertinoIcons.film),
                  title: "Videos",
                  subtitle: "29 MB",
                ).wPCT(context: context, widthPCT: 45),
                const TextCard(
                  icon: Icon(CupertinoIcons.music_note),
                  title: "Audio",
                  subtitle: "0 B",
                ).wPCT(context: context, widthPCT: 45),
                const TextCard(
                  icon: Icon(CupertinoIcons.doc),
                  title: "Documents & o...",
                  subtitle: "578 MB",
                ).wPCT(context: context, widthPCT: 45),
                const TextCard(
                  icon: Icon(Icons.android),
                  title: "Apps",
                  subtitle: "8.1 GB",
                ).wPCT(context: context, widthPCT: 45),
              ],
            ).pSymmetric(v: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Collections".text.make(),
                const Icon(
                  Icons.more_vert,
                  color: Vx.white,
                ).pOnly(right: 10),
              ],
            ),
            const TextCard(icon: Icon(Icons.star), title: "Favourite").py16(),
            "Storage devices".text.make(),
            const TextCard(
              icon: Icon(CupertinoIcons.device_phone_portrait),
              title: "Internal storage",
              subtitle: "39 GB free",
            ).py16(),
          ],
        ).p16(),
      ),
    );
  }
}
