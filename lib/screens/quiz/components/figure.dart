import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageThumbnail extends StatelessWidget {
  final String assetPath;
  final String figureName;

  ImageThumbnail({required this.assetPath, required this.figureName});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FullScreenImage(
                  assetPath: assetPath, figureName: this.figureName),
            ),
          );
        },
        child: Image.asset(
          assetPath,
          width: 100,
          height: 80,
          fit: BoxFit.cover,
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
