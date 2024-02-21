import 'package:flutter/material.dart';

class AbsorbPointerPage extends StatefulWidget {
  const AbsorbPointerPage({super.key});

  @override
  State<AbsorbPointerPage> createState() => _AbsorbPointerPageState();
}

class _AbsorbPointerPageState extends State<AbsorbPointerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AbsorbPointer"),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SizedBox(
              height: 100,
              width: 300,
              child: ElevatedButton(onPressed: () {

              }, child: null,
              ),
            ),

            SizedBox(
              height: 300,
              width: 100,
              child: AbsorbPointer(
                absorbing: true,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                  onPressed: () {

                }, child: null,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
