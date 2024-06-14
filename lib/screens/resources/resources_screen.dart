import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Resource {
  final String title;
  final String url;

  Resource(this.title, this.url);
}

class ResourcesScreen extends StatelessWidget {
  final List<Resource> resources = [
    Resource('FAA Website', 'https://www.faa.gov/uas'),
    Resource('Register Your Drone', 'https://faadronezone-access.faa.gov'),
    // Add more resources here
  ];

  ResourcesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAA Part 107 Remote Pilot Resources'),
      ),
      body: ListView.builder(
        itemCount: resources.length,
        itemBuilder: (context, index) {
          final resource = resources[index];
          return ListTile(
            title: Text(resource.title),
            onTap: () async {
              if (await canLaunch(resource.url)) {
                await launch(resource.url);
              } else {
                throw 'Could not launch ${resource.url}';
              }
            },
          );
        },
      ),
    );
  }
}
