import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../dailyTaskScreen/main.dart';

class MainTrackerGrid extends StatelessWidget {
  const MainTrackerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Halo,",
                      style: TextStyle(color: Colors.white70, fontSize: 16.0),
                    ),
                    Text(
                      "Selamat pagi",
                      style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 40,),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 1.0,
                                  color: Colors.blue
                                )
                              )
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  child: Icon(Icons.directions_bike_rounded, color: Colors.white, size: 40.0,),
                                ),
                                Text(
                                  "8,7 KM",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  width: 1.0,
                                  color: Colors.blue
                                )
                              )
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  child: Icon(Icons.directions_run_rounded, color: Colors.white, size: 40.0,),
                                ),
                                Text(
                                  "2,4 KM",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 1.0,
                                  color: Colors.blue
                                )
                              )
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  child: Icon(Icons.bedtime_outlined, color: Colors.white, size: 40.0,),
                                ),
                                Text(
                                  "6 Jam 32 Menit",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  width: 1.0,
                                  color: Colors.blue
                                )
                              )
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  child: Icon(Icons.monitor_heart_rounded, color: Colors.white, size: 40.0,),
                                ),
                                Text(
                                  "87 BPM",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Tugas Harian",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    const SizedBox(height: 40,),
                    Center(
                      child: CircularPercentIndicator(
                        radius: 120.0,
                        lineWidth: 13.0,
                        animation: true,
                        percent: 0.6,
                        center: const Text(
                          "60 %",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.blue,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40,),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (builder) => const DailyTaskScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,                    
                    ),
                    child: const Text(
                      "Lihat Tugas",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}