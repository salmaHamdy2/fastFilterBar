import 'package:flutter/material.dart';

int index = 0;
List sal = [
  "الكل",
  "الجديده",
  "قيد التنفيد",
  "الملغيه",
  "المكتمله",
  "تحت المراجعه",
  "تمت"
];

class Filterbar extends StatefulWidget {
  Filterbar({super.key});

  @override
  State<Filterbar> createState() => _FilterbarState();
}

class _FilterbarState extends State<Filterbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(

          children: [

            for (int i = 0; i < sal.length; i++)
              Container(
               padding: EdgeInsets.all(8),
               width: 120,
               height: 40,
                child: ElevatedButton(

                    style: ElevatedButton.styleFrom(

                     backgroundColor: index==i?Colors.red: Color.fromARGB(255, 245, 236, 236),
                      foregroundColor: Colors.black),
                      onPressed: () {
                      setState(() {
                        index = i;
                      });
                    },
                   child: Container( 
                    child: Text(sal[i]),



                   ),


                   
              ),
        
        
              )   
        
            // children: [
            //   Padding(
            //     padding: EdgeInsets.all(5),
            //     child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //             backgroundColor: salma, foregroundColor: Colors.black),
            //         onPressed: () {
            //           istaped = true;
            //         },
            //         child: Text("الكل")),
            //   ),
            //   Padding(
            //     padding: EdgeInsets.all(5),
            //     child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //             backgroundColor: salma, foregroundColor: Colors.black),
            //         onPressed: () {
            //           istaped = true;
            //         },
            //         child: Text("الجديده")),
            //   ),
            //   Padding(
            //     padding: EdgeInsets.all(5),
            //     child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //             backgroundColor: salma, foregroundColor: Colors.black),
            //         onPressed: () {
            //           istaped = true;
            //         },
            //         child: Text("قيد التنفيد")),
            //   ),
            //   Padding(
            //     padding: EdgeInsets.all(5),
            //     child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //             backgroundColor: salma, foregroundColor: Colors.black),
            //         onPressed: () {
            //           istaped = true;
            //         },
            //         child: Text("الملغيه")),
            //   ),
            //   Padding(
            //     padding: EdgeInsets.all(5),
            //     child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //             backgroundColor: salma, foregroundColor: Colors.black),
            //         onPressed: () {
            //           istaped = true;
            //         },
            //         child: Text("المكتمله")),
            //   ),
            //   Padding(
            //     padding: EdgeInsets.all(5),
            //     child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //             backgroundColor: salma, foregroundColor: Colors.black),
            //         onPressed: () {
            //           istaped = true;
            //         },
            //         child: Text("تحت المراجعه")),
            //   ),
            //   Padding(
            //     padding: EdgeInsets.all(5),
            //     child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //             backgroundColor: salma, foregroundColor: Colors.black),
            //         onPressed: () {
            //           istaped = true;
            //         },
            //         child: Text("تمت")),
            //   ),
          ],
        ),
      )),
    );
  
  }
}
