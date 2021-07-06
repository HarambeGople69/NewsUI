import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/models/newsModel.dart';

class TopNews extends StatefulWidget {
  @override
  _TopNewsState createState() => _TopNewsState();
}

class _TopNewsState extends State<TopNews> {
  List<News> NewsList = [
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Sharesansar. 10h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Corporate News. 11h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Sharesansar. 10h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Corporate News. 11h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Sharesansar. 10h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Corporate News. 11h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Sharesansar. 10h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Corporate News. 11h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Sharesansar. 10h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Corporate News. 11h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Mero lagani. 5h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Sharesansar. 10h ago"),
    News("UPPER hydro has signed new MOU with the government of Nepal",
        "Corporate News. 11h ago"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: NewsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setSp(
                10,
              ),
              vertical: ScreenUtil().setSp(5),
            ),
            child: ListTile(
              title: Text(
                NewsList[index].title,
                style: bigWhite,
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setSp(5),
                ),
                child: Text(
                  NewsList[index].detail,
                  style: paratext,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }
}
