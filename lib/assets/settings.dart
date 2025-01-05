import 'package:flutter/material.dart';
import 'package:untitled/edit_profile.dart';
class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EDIT_PROFILE()));
                },
                child: Container(
                  height: 50,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Edit Profile",style: TextStyle(fontSize: 20),),
                          Icon(Icons.keyboard_arrow_right,size: 30,),
                        ],
                      ),
                    ),

                  ),
                ),
              ),
            ],
          ),
        
        ),
      ),
    );
  }
}
