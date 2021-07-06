import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/models/company.dart';

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  List<Company> listComp = [
    Company("UPPER", "hydro"),
    Company("NABIL", "Com.Bank"),
    Company("MNBBL", "Dev.Bank"),
    Company("NLIC", "Life Ins"),
    Company("OHL", "Hotel"),
    Company("RLI", "Non Life"),
    Company("CIT", "Trading"),
    Company("NLIC", "Life Ins"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: ScreenUtil().setSp(15),
            left: ScreenUtil().setSp(25),
          ),
          child: Text(
            "Most Search",
            style: paratext,
          ),
        ),
        Expanded(
          child: GridView.builder(
              itemCount: listComp.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: ScreenUtil().setSp(10)),
              itemBuilder: (context, index) {
                return ListTile(
                
                    title: Text(listComp[index].name, style: bigWhite),
                    subtitle: Text(
                      listComp[index].type,
                      style: paratext,
                    ));
              }),
        )
      ],
    );
  }
}
