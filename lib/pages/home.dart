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
  void initState() {
    super.initState();
  }

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
            onPressed: () => scrollController.animateTo(0, duration: Duration(milliseconds: 500), curve: Curves.easeInOut),
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
            onPressed: () => scrollController.animateTo(400, duration: Duration(milliseconds: 500), curve: Curves.easeInOut),
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
              Icons.work,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => {},
            label: Text(
              'My work',
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
            onPressed: () => {},
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
          controller: scrollController,
          children: [
            HeaderPage(),
            SkillsPage(),
            ExperiencePage(),
          ],
        ),
      ),
    );
  }
}
