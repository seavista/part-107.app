import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Resource {
  final String title;
  final String url;
  final String imageUrl;

  Resource(this.title, this.url, this.imageUrl);
}

class ResourcesScreen extends StatelessWidget {
  // final List<Resource> resources = [
  //   Resource('FAA Website', 'https://www.faa.gov/uas',
  //       'assets/images/www.faa.gov.png'),
  //   Resource('Register Your Drone', 'https://faadronezone-access.faa.gov',
  //       'assets/images/faadronezone-access.faa.gov.jpg'),
  //   // Add more resources here
  // ];

  final List<Resource> resources = [
    Resource('FAA Website', 'https://www.faa.gov/uas',
        'assets/images/www.faa.gov.png'),
    Resource('Register Your Drone', 'https://faadronezone-access.faa.gov',
        'assets/images/faadronezone-access.faa.gov.jpg'),
    Resource(
        'Remote Pilot Study Guide',
        'https://www.faa.gov/sites/faa.gov/files/regulations_policies/handbooks_manuals/aviation/remote_pilot_study_guide.pdf',
        'assets/images/Remote Pilot Study Guide.png'),
    Resource(
        'Airman Certification Standards',
        'https://www.faa.gov/training_testing/testing/acs',
        'assets/images/Airman Certification Standards.png'),
  ];

  ResourcesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text('FAA Part 107 Remote Pilot Resources'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            itemCount: resources.length,
            itemBuilder: (context, index) {
              final resource = resources[index];
              return GestureDetector(
                onTap: () async {
                  if (await canLaunch(resource.url)) {
                    await launch(resource.url);
                  } else {
                    throw 'Could not launch ${resource.url}';
                  }
                },
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height / 2,
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            resource.imageUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Center(
                                child: Text(
                                  'Failed to load image',
                                  style: TextStyle(color: Colors.red),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          color: Colors.black54,
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            resource.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
