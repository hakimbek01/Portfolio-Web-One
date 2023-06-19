import 'package:flutter/cupertino.dart';
import 'package:portfolioweb/pages/desktop_home.dart';
import 'package:portfolioweb/pages/mobile_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        if (p1.minWidth<660) {
          return MobileHome();
        } else {
          return DesktopHome();
        }
      },
    );
  }
}
