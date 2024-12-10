import 'package:flutter/material.dart';
import 'package:sports_app/utils/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text("My user", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Container(
              
              height: 160,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                
                border: Border.all(
                )
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Name",
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "User ID",
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                "Save",
                style: TextStyle(color: AppColors.white),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text("Logout",style: TextStyle(color: AppColors.white)),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text("Remove user",style: TextStyle(color: AppColors.white),),
              
            ),
          ],
        ),
      ),
    );
  }
}
