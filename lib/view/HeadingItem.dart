import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/MyItem.dart';

class HeadingItem implements MyItem{
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget BuildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) {
    return const SizedBox.shrink();
  }

}