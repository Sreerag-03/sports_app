import 'package:flutter/material.dart';
import 'package:sports_app/utils/colors.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:10.0,left: 18),
            child: Container(
              height: 50,
              width: double.infinity,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Organizers",textAlign: TextAlign.left,style: TextStyle(color: AppColors.black, fontWeight: FontWeight.w600,fontSize: 18),),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 44, childAspectRatio: 2/2,mainAxisSpacing: 44), itemBuilder: (context,index){
                  return Container(decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),);
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}