import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperiencePage extends StatelessWidget {
  Future<void> goToUrl() async {
    const String url = 'https://dutchcodingcompany.com';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 10,
        right: MediaQuery.of(context).size.width / 10,
        bottom: 30,
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
                  text: 'Exp',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.teal),
                ),
                TextSpan(
                  text: 'erience',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 1.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      onTap: () => goToUrl(),
                      contentPadding: const EdgeInsets.all(15),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://miro.medium.com/max/3150/1*2gA6doHO4SCKNnbxVXiy7Q.png',
                        ),
                      ),
                      title: Text(
                        'Dutch Coding Company',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac nibh eget nisl consectetur feugiat id in diam. Sed vehicula ante nibh, aliquam maximus eros sagittis eget. Mauris libero nunc, pellentesque ut tristique ut, vehicula eu mi. Sed ultricies odio varius porttitor rutrum. Vivamus et eleifend urna. Aliquam ante nisi, semper euismod velit a, tristique egestas diam. Donec sed ullamcorper justo',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: Colors.grey),
                      ),
                      trailing: Text(
                        'January 2020 - Present',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 1.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      onTap: () => goToUrl(),
                      contentPadding: const EdgeInsets.all(15),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://miro.medium.com/max/3150/1*2gA6doHO4SCKNnbxVXiy7Q.png',
                        ),
                      ),
                      title: Text(
                        'Dutch Coding Company',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac nibh eget nisl consectetur feugiat id in diam. Sed vehicula ante nibh, aliquam maximus eros sagittis eget. Mauris libero nunc, pellentesque ut tristique ut, vehicula eu mi. Sed ultricies odio varius porttitor rutrum. Vivamus et eleifend urna. Aliquam ante nisi, semper euismod velit a, tristique egestas diam. Donec sed ullamcorper justo',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: Colors.grey),
                      ),
                      trailing: Text(
                        'January 2020 - Present',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 1.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      onTap: () => goToUrl(),
                      contentPadding: const EdgeInsets.all(15),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://miro.medium.com/max/3150/1*2gA6doHO4SCKNnbxVXiy7Q.png',
                        ),
                      ),
                      title: Text(
                        'Dutch Coding Company',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac nibh eget nisl consectetur feugiat id in diam. Sed vehicula ante nibh, aliquam maximus eros sagittis eget. Mauris libero nunc, pellentesque ut tristique ut, vehicula eu mi. Sed ultricies odio varius porttitor rutrum. Vivamus et eleifend urna. Aliquam ante nisi, semper euismod velit a, tristique egestas diam. Donec sed ullamcorper justo',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: Colors.grey),
                      ),
                      trailing: Text(
                        'January 2020 - Present',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
