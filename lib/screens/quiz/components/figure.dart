import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageThumbnail extends StatelessWidget {
  final String? assetPath;
  final String? figureName;

  ImageThumbnail({required this.assetPath, required this.figureName});

  @override
  Widget build(BuildContext context) {
    if (this.assetPath == 'null' || this.figureName == 'null') {
      return Container();
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FullScreenImage(
                  assetPath: 'assets/figures/${this.assetPath!}',
                  figureName: this.figureName!),
            ),
          );
        },
        child: Image.asset(
          'assets/figures/${this.assetPath!}',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final String assetPath;
  final String figureName;

  FullScreenImage({required this.assetPath, required this.figureName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.figureName),
      ),
      body: Container(
        child: PhotoView(
          enablePanAlways: true,
          imageProvider: AssetImage(assetPath),
          backgroundDecoration: BoxDecoration(color: Colors.black),
        ),
      ),
    );
  }
}
