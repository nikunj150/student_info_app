import 'package:flutter/material.dart';
import 'package:student_info_app/utils/global.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade700,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: const Text(
            "Data Add Screen",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
                height: double.infinity,
                color: Colors.purple.shade200,
                ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Student's GRID",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: "Enter Student's name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Student's Standard",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Global.g1.datalist.add(context);
                    },
                    child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade600,
                          borderRadius: BorderRadius.circular(4)),
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "submit",
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
