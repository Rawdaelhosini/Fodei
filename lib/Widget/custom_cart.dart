import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCart extends StatelessWidget {
 CustomCart({this.textw,this.text,this.image,this.onpressed});
  String? textw;
  String? text;
  String? image;
  Function()? onpressed;

  // ProductModel? product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: Offset(10, 10)
                ),
              ]
            ),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical:  16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end
                  ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left : 8.0),
                      child: Image.asset(image!),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top : 8.0),
                       child: Text(
                        text!,
                                       // product.title.substring(0 , 6),  // كده بختار يوريني حروف من اول فين 
                                       
                        style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 16,
                                       fontWeight: FontWeight.w600,
                                       ),
                                       
                         ),
                     ),
                       SizedBox(
                    height: 3,
                    ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                         Row(
                           children: [
                            Icon(Icons.location_on,color: Color(0xff32B768),size: 10,),
                             TextButton(
                              onPressed: onpressed!,
                               child: Text(
                                textw!,
                                
                                                   style: TextStyle(
                                               color: Color(0xff6B7280),
                                               fontSize: 10,
                                               fontWeight: FontWeight.w500,
                                               ),
                                                    ),
                             ),
                           ],
                         ),
                      
                        ],
                       ),
                  ],
                ),
              ),
            ),
          ),
      ],

    );
  }
}