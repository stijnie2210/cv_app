import 'package:cv_app/pages/contact_page.dart';
import 'package:cv_app/pages/experience_page.dart';
import 'package:cv_app/pages/header_page.dart';
import 'package:cv_app/pages/skills_page.dart';
import 'package:cv_app/widgets/bar_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: MediaQuery.of(context).size.width > 600
              ? Text(
                  'Stijn Mommersteeg',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white),
                )
              : null,
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              'S',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          BarButton(
            icon: Icons.home,
            onPressed: () => scrollToPosition(0),
            text: 'Home',
          ),
          BarButton(
            icon: Icons.code,
            onPressed: () => scrollToPosition(500),
            text: 'Experience',
          ),
          BarButton(
            icon: Icons.email,
            onPressed: () => scrollToPosition(1000),
            text: 'Contact me',
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          children: [
            HeaderPage(),
            SkillsPage(),
            ExperiencePage(),
            ContactPage(),
          ],
        ),
      ),
    );
  }

  Future<void> scrollToPosition(double offset) {
    return scrollController.animateTo(
      offset,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
