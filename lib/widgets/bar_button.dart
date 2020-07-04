import 'package:flutter/material.dart';

class BarButton extends StatelessWidget {
  const BarButton({
    @required this.onPressed,
    @required this.icon,
    @required this.text,
  });

  final void Function() onPressed;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 600) {
      return FlatButton.icon(
        icon: Icon(
          icon,
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () => onPressed(),
        label: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: Colors.white),
        ),
      );
    }

    return IconButton(
      icon: Icon(
        icon,
        color: Theme.of(context).iconTheme.color,
      ),
      onPressed: () => onPressed(),
    );
  }
}
