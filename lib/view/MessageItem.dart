import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/MyItem.dart';

class MessageItem implements MyItem{
  final String sender;
  final String body;
  
  MessageItem(this.sender,this.body);

  @override
  Widget BuildTitle(BuildContext context) {
    // TODO: implement BuildTitle
    return Text(sender);
  }

  @override
  Widget buildSubtitle(BuildContext context) {
    // TODO: implement buildSubtitle
    return Text(body);
  }
}
