import 'package:flutter/material.dart';

class DailyTaskScreen extends StatelessWidget {
  const DailyTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas Harian", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        leading: const BackButton(color: Colors.white),
      ),
      body: const SafeArea(
        top: true,
        left: true,
        right: true,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                    child: Icon(Icons.check_box, color: Colors.white),
                  ),
                  Expanded(
                    child: Text(
                      "Buka aplikasi hari ini",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                    child: Icon(Icons.check_box, color: Colors.white),
                  ),
                  Expanded(
                    child: Text(
                      "Lakukan perjalanan menggunakan sepeda sejauh 1 KM",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                    child: Icon(Icons.check_box, color: Colors.white),
                  ),
                  Expanded(
                    child: Text(
                      "Lakukan perjalanan dengan berjalan kaki sejauh 1 KM",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                    child: Icon(Icons.check_box_outline_blank, color: Colors.white),
                  ),
                  Expanded(
                    child: Text(
                      "Tidur dengan rentan waktu 7 - 8 jam",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                    child: Icon(Icons.check_box_outline_blank, color: Colors.white),
                  ),
                  Expanded(
                    child: Text(
                      "Lakukan cek detak jantung hari ini",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}