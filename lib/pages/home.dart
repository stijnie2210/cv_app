import 'package:cv_app/pages/contact_page.dart';
import 'package:cv_app/pages/experience_page.dart';
import 'package:cv_app/pages/header_page.dart';
import 'package:cv_app/pages/skills_page.dart';
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
          title: Text(
            'Stijn Mommersteeg',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.white),
          ),
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
          FlatButton.icon(
            icon: Icon(
              Icons.home,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => scrollToPosition(0),
            label: Text(
              'Home',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.white),
            ),
          ),
          FlatButton.icon(
            icon: Icon(
              Icons.code,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => scrollToPosition(500),
            label: Text(
              'Experience',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.white),
            ),
          ),
          FlatButton.icon(
            icon: Icon(
              Icons.email,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => scrollToPosition(1000),
            label: Text(
              'Contact me',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          shrinkWrap: true,
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
