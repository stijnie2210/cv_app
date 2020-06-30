import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 5),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.width / 6,
              padding: const EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://dutchcodingcompany.com/storage/227/conversions/Stijn-thumb.jpg',
                ),
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Stijn Mommersteeg',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.white),
                ),
                Text(
                  'Software Developer',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: Colors.white),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    'Fullstack Software Developer with a small preference for mobile and front-end development. Experience in various techniques, including .NET (core), React Native, Flutter, Angular, Express, C#, and other web- and mobile platforms. Currently happily working as a Flutter developer at Dutch Coding Company. Graduated at Avans University of Applied Sciences with a Bachelor of Science in information technology. Eager of learning new and exciting techniques! ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: Colors.white),
                  ),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.transparent,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {},
                  child: Text(
                    'Contact',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
            Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
