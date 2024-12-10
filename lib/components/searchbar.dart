import 'package:flutter/material.dart';
import 'package:sports_app/utils/colors.dart';

class SearchbarWidget extends StatelessWidget {
  const SearchbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      //padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
      leading: const Icon(Icons.search),
      hintText: "Tournament and organizers",
      backgroundColor: WidgetStatePropertyAll(AppColors.white),
    );
  } 
}