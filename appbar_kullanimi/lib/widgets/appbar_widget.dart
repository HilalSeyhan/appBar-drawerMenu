import 'package:appbar_kullanimi/widgets/navigationdrawer_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

TabBar get _tabBar => TabBar(
  indicatorColor: Colors.black,
  tabs: [
    Tab(
      text: "AnaSayfa",
      icon: Icon(Icons.home),
    ),
    Tab(
      text: "Sanatçılarım",
      icon: Icon(Icons.person_pin_rounded),
    ),
    Tab(
      text: "Albümler",
      icon: Icon(Icons.not_started_sharp),
    ),
  ],
);

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          /*title: Image.asset(
            'assets/images/hlLogo.png',
            fit: BoxFit.fitHeight,
          ),*/
          leading: Icon(Icons.music_note, color: Colors.lightBlue,),
          title: Text("HL MÜZİK DÜNYASI", style: TextStyle(color: Colors.lightBlue,),),
          actions: [],
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(
              color: Colors.lightBlue,
              child: _tabBar,
            ),
          ),
        ),


        endDrawer: NavigationDrawerWidget(),

        body: TabBarView(
          children: [
            Container(child: Center(child: Text("page - Anasayfa"),)),
            Center(child: Text("page - Sanatçılarım")),
            Center(child: Text("page - Albümler")),
          ],
        ),
      ),
    );
  }
}
