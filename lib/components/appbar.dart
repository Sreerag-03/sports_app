import 'package:flutter/material.dart';
import 'package:sports_app/components/drawer.dart';
import 'package:sports_app/components/nearby_gridview.dart';
import 'package:sports_app/components/online_gridview.dart';
import 'package:sports_app/components/searchbar.dart';
import 'package:sports_app/pages/chats.dart';
import 'package:sports_app/pages/profile_page.dart';
import 'package:sports_app/utils/colors.dart';

class appbarwidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(180.0),
          child: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChatPage()));
                  },
                  icon: Icon(
                    Icons.message,
                    color: AppColors.black,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfilePage()));
                  },
                  icon: Icon(
                    Icons.person,
                    color: AppColors.black,
                  )),  
            ],
            backgroundColor: AppColors.white,
            elevation: 0,
            leading: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DrawerWidget()));
            }, icon: const Icon(Icons.menu)),
            title: Text(
              "Sports App",
              style: TextStyle(color: AppColors.black),
            ),
            centerTitle: true,
            flexibleSpace: const Padding(
              padding: EdgeInsets.only(top:100.0, left: 8),
              child: SearchbarWidget(),
            ),
            bottom: TabBar(
              //labelPadding: EdgeInsetsDirectional.only(start: 60,),
              labelColor: AppColors.black,
              labelStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),
              tabs: const [
                Tab(
                  text: "NEARBY",
                ),
                Tab(
                  text: "ONLINE",
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          
          children: [
            Center(
              child: NearbyPage(),
            ),
            Center(
              child: OnlinePage(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(900.0);
}
