import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 10,
        right: MediaQuery.of(context).size.width / 10,
        bottom: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: '',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white),
              children: <InlineSpan>[
                TextSpan(
                  text: 'Key',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.teal),
                ),
                TextSpan(
                  text: ' skills',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: Icon(
                        Icons.phone_android,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'Mobile development',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac nibh eget nisl consectetur feugiat id in diam. Sed vehicula ante nibh, aliquam maximus eros sagittis eget. Mauris libero nunc, pellentesque ut tristique ut, vehicula eu mi. Sed ultricies odio varius porttitor rutrum. Vivamus et eleifend urna. Aliquam ante nisi, semper euismod velit a, tristique egestas diam. Donec sed ullamcorper justo',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: Icon(
                        Icons.web,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'Web development',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac nibh eget nisl consectetur feugiat id in diam. Sed vehicula ante nibh, aliquam maximus eros sagittis eget. Mauris libero nunc, pellentesque ut tristique ut, vehicula eu mi. Sed ultricies odio varius porttitor rutrum. Vivamus et eleifend urna. Aliquam ante nisi, semper euismod velit a, tristique egestas diam. Donec sed ullamcorper justo',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: Icon(
                        Icons.people_outline,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'Scrum',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac nibh eget nisl consectetur feugiat id in diam. Sed vehicula ante nibh, aliquam maximus eros sagittis eget. Mauris libero nunc, pellentesque ut tristique ut, vehicula eu mi. Sed ultricies odio varius porttitor rutrum. Vivamus et eleifend urna. Aliquam ante nisi, semper euismod velit a, tristique egestas diam. Donec sed ullamcorper justo',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: Icon(
                        Icons.desktop_windows,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'Back-end development',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac nibh eget nisl consectetur feugiat id in diam. Sed vehicula ante nibh, aliquam maximus eros sagittis eget. Mauris libero nunc, pellentesque ut tristique ut, vehicula eu mi. Sed ultricies odio varius porttitor rutrum. Vivamus et eleifend urna. Aliquam ante nisi, semper euismod velit a, tristique egestas diam. Donec sed ullamcorper justo',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
