import 'package:flutter/material.dart';
import 'package:sports_app/pages/organize.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [ 
          const UserAccountsDrawerHeader(
              accountName: Text("AppMaking.co"),
              accountEmail: Text("sundar@appmaking.co"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://appmaking.co/wp-content/uploads/2021/08/appmaking-logo-colored.png"),
              ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1431324155629-1a6deb1dec8d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                fit: BoxFit.fill,
              ),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage("https://en.wikipedia.org/wiki/Flag_of_India#/media/File:Flag_of_India.svg"),
              )
            ],
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.only(left: 20,top: 10),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tournaments")
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.sports_score),
            title: const Text("Organize tournaments"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrganizeTournamentPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text("Following tournaments"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.link),
            title: const Text("Open link"),
            onTap: () {},
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.only(left: 20,top: 20),
            child: const Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Help")
              ],
            ),
          ),
          const SizedBox(height: 15,),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text("Contacts"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.youtube_searched_for),
            title: const Text("Youtube"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text("Contacts"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.facebook),
            title: const Text("Facebook"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.file_copy),
            title: const Text("Terms and conditions of use"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.file_copy),
            title: const Text("Privacy policy"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
