import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'model/app_state_model.dart';

class MyPageTab extends StatefulWidget {
  const MyPageTab({Key? key}) : super(key: key);

  @override
  _MyPageTabState createState() {
    return _MyPageTabState();
  }
}

class _MyPageTabState extends State<MyPageTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return const CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('MyPage'),
            ),
          ],
        );
      },
    );
  }
}