import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 10,
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
                  text: 'Con',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.teal),
                ),
                TextSpan(
                  text: 'tact me',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.all(15),
                        leading: Icon(
                          Icons.phone_android,
                          color: Colors.teal,
                          size: 50,
                        ),
                        title: Text(
                          '+31612345678',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                        onTap: () async {
                          if (await canLaunch('tel:+31612345678')) {
                            await launch('tel:+31612345678');
                          }
                        },
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(15),
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.teal,
                          size: 50,
                        ),
                        title: Text(
                          'Kastanjelaan 400, 5616LZ, Eindhoven',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                        onTap: () async {
                          if (await canLaunch(
                              'https://goo.gl/maps/yRAgRHpS61KahJxs5')) {
                            await launch(
                                'https://goo.gl/maps/yRAgRHpS61KahJxs5');
                          }
                        },
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(15),
                        leading: Icon(
                          Icons.email,
                          color: Colors.teal,
                          size: 50,
                        ),
                        title: Text(
                          'stijn@dcc.team',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                        onTap: () async {
                          const String url = 'mailto:stijn@dcc.team';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
