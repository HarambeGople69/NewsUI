import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/pages/search.dart';
import 'package:myapp/pages/topnews.dart';
import 'package:myapp/widget/dash.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  bool isSearching = false;
  List<Widget> display = [
    TopNews(),
    Center(
      child: Text("WatchList"),
    ),
    Center(
      child: Text("Portfolio"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: !isSearching
              ? Text(
                  'News',
                  style: AppStyle,
                )
              : Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff272636),
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: ScreenUtil().setSp(80),
                        ),
                        hintText: "Symbol/Name",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(50),
                        )),
                  ),
                ),
          centerTitle: true,
          actions: <Widget>[
            isSearching
                ? TextButton(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Color(0xff7C37FA),
                        fontSize: ScreenUtil().setSp(50),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        this.isSearching = false;
                      });
                    },
                  )
                : IconButton(
                    icon: Icon(
                      Icons.search,
                      size: ScreenUtil().setSp(80),
                    ),
                    onPressed: () {
                      setState(() {
                        this.isSearching = true;
                      });
                    },
                  )
          ],
          bottom: isSearching
              ? null
              : TabBar(
                  labelStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(55),
                  ),
                  indicatorColor: Color(0xff7C37FA),
                  labelColor: Color(0xff7C37FA),
                  unselectedLabelColor: Colors.white,
                  tabs: [
                    Tab(
                      text: "Top News",
                    ),
                    Tab(
                      text: "Watchlist",
                    ),
                    Tab(
                      text: "Portfolio",
                    ),
                  ],
                ),
        ),
        body: Column(
          children: [
            Expanded(
              child: isSearching
                  ? SearchTab()
                  : TabBarView(
                      children: display,
                    ),
            ),
            Dash()
          ],
        ),
      ),
    );
  }
}
