import 'package:flutter/material.dart';
import 'package:flutter_application_2/account.dart';
import 'package:flutter_application_2/favorite.dart';
import 'package:flutter_application_2/history.dart';
import 'package:flutter_application_2/home.dart';
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 92, 142),
        title: Text('SMKN 1 SLAWI'),
      ),
      body: Stack(
        children: <Widget>[
          Offstage(
            offstage: selectIndex != 0,
            child:TickerMode(
              enabled: selectIndex == 0,
              child: Home(),
            ),
          ),
          Offstage(
            offstage: selectIndex != 1,
            child:TickerMode(
              enabled: selectIndex == 1,
              child: Favorite(),
            ),
          ),
          Offstage(
            offstage: selectIndex != 2,
            child:TickerMode(
              enabled: selectIndex == 2,
              child: History(),
            ),
          ),
          Offstage(
            offstage: selectIndex != 3,
            child:TickerMode(
              enabled: selectIndex == 3,
              child: Account(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 211, 92, 142),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    selectIndex = 0;
                    print(selectIndex);
                  });
                },
                child: Icon(
                  Icons.home,
                color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectIndex = 1;
                    print(selectIndex);
                  });
                },
                 child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),  
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    selectIndex = 2;
                    print(selectIndex);
                  });
                },
                child: Icon(
                Icons.history,
                color: Colors.white,
              ),
              ),
               InkWell(
                onTap: (){
                  setState(() {
                    selectIndex = 3;
                    print(selectIndex);
                  });
                },
                child: Icon(
                  Icons.account_circle,
                color: Colors.white,
                ),
              ),
              
               

            ],
          ),
        ),
      ),
    );
  }
}