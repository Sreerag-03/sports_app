import 'package:flutter/material.dart';
import 'package:sports_app/utils/colors.dart';

class OrganizeTournamentPage extends StatefulWidget {
  const OrganizeTournamentPage({super.key});

  @override
  State<OrganizeTournamentPage> createState() => _OrganizeTournamentPageState();
}

List<String> options = ["Private", "Public"];

class _OrganizeTournamentPageState extends State<OrganizeTournamentPage> {
  String currentOption = options[0];
  String dropdownValue = "One";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        title: const Text("My tournaments"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.question_mark),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration:
                      const BoxDecoration(color: Colors.lightGreenAccent),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 115),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ),
                    child: Text(
                      "New tournament",
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Divider(
                        color: AppColors.primary,
                        height: 20,
                      ),
                      const Text(
                        "ORGANIZER PAGE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        width: 350,
                        height: 50,
                        //color: Colors.black26,
                        child: Row(
                          children: [
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.web),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.black26,
                              ),
                              height: 60,
                              width: 60,
                              child: const Icon(Icons.add),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 250,
                              height: 60,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Tournament organization"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.add),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              labelText: "Organizer Information",
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.grey))),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 10),
                              labelText: "About",
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.grey))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 240),
                        child: const Text(
                          "Who can see?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ),
                      RadioListTile(
                        title: const Text("Private"),
                        value: options[0],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text("Public"),
                        value: options[1],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 175),
                        child: const Text(
                          "Headquarters Location",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 250),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_drop_down),
                          style: TextStyle(color: AppColors.white),
                          underline: Container(
                            height: 2,
                            color: AppColors.white,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: [
                            DropdownMenuItem(
                              value: "One",
                              child: Text("One",style: TextStyle(color: AppColors.black),),
                            ),
                            DropdownMenuItem(
                              value: "Two",
                              child: Text("Two",style: TextStyle(color: AppColors.black),),
                            ),
                            DropdownMenuItem(
                              value: "Three",
                              child: Text("Three",style: TextStyle(color: AppColors.black),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
