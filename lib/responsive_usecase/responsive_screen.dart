import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_usecases/responsive_usecase/chat/chat_screen.dart';
import 'package:flutter_usecases/responsive_usecase/chat/message_screen.dart';
import 'package:flutter_usecases/responsive_usecase/responsive.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? ChatScreen()
        : _buildBigScreenLayout();
  }

  Widget _buildBigScreenLayout() {
    return Container(
      child: Row(
        children: [
            SizedBox(child: ChatScreen(), width: 350,),
            Expanded(child: MessageScreen())
        ],
      ),
    );
  }
}
