import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final pro_name;
  final prod_price;
  final prod_img;
  Details({this.pro_name, this.prod_price, this.prod_img});

  @override
  _DetailsState createState() => _DetailsState();
}
  
class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.lightGreenAccent,
      //   title: Text(widget.pro_name),),
       body: Column(
         mainAxisAlignment:MainAxisAlignment.start,
         children: <Widget>[
           Container(
             height: MediaQuery.of(context).size.height/2.5,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage(widget.prod_img))
             ),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment:MainAxisAlignment.spaceBetween,
               children:<Widget>[
                Padding(padding: EdgeInsets.only(left:20, top: 50),
                child:IconButton(icon:Icon(Icons.arrow_back) ,onPressed: ()=>Navigator.of(context).pop(),), 
                ),
                Padding(padding: EdgeInsets.only(right:20, top: 60),
                child:Icon(Icons.favorite_border), 
                ),
               ]
             ),
           ),
           Container(
             margin: EdgeInsets.only(left:10, right:10),
             height: MediaQuery.of(context).size.height/1.9+33.8,
             decoration: BoxDecoration(
              color:Colors.lightGreenAccent,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(20), topRight: Radius.circular(20))
             ),
             child: Column(
               mainAxisAlignment:MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.center,
               children:<Widget>[
                 Container(
                   height: 50,
                   margin: EdgeInsets.only(left:20,right:170, top: 20),
                   decoration: BoxDecoration(
                     borderRadius:BorderRadius.all(Radius.circular(5)),
                     color:Colors.black
                   ),
                   width: MediaQuery.of(context).size.width-50,
                   child:Padding(padding: EdgeInsets.only(top:12, left: 50),
                    child: Text(widget.pro_name,
                     style: TextStyle(color:Colors.white, fontWeight:FontWeight.bold, fontSize:25),
                    ),
                   )
                 ),
                 Container(
                   height: 80,
                   margin: EdgeInsets.only(top:20, left:20, right:40),
                   child: Text('Best product you can get from us please keep shoping for your health only at affordable price and be delivered at your door step',
                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16),
                   ),
                 ),
                 Row(
                   mainAxisAlignment:MainAxisAlignment.start,
                   children:<Widget>[
                     Padding(padding:EdgeInsets.only(top: 2, left: 20),
                     child: Text("${widget.prod_price}/=",
                     style: TextStyle(color:Colors.black, fontWeight:FontWeight.bold, fontSize:25),
                     ),
                     )
                   ]
                 ),
                  Row(
                   mainAxisAlignment:MainAxisAlignment.spaceBetween,
                   children:<Widget>[
                     Padding(padding:EdgeInsets.only(top: 20, left: 20),
                     child: Container(
                       width:70,
                       height:50,
                       child: Text("Ratings",
                     style: TextStyle(color:Colors.black, fontWeight:FontWeight.bold, fontSize:20),
                     ),
                     ),
                     ),
                     Icon(Icons.star),
                     Icon(Icons.star),
                     Icon(Icons.star),
                     Icon(Icons.star),
                     Icon(Icons.star_half),
                     Padding(padding:EdgeInsets.only(top: 30, left: 20),
                     child: Container(
                       width:100,
                       height:50,
                       child: Text("4.5",
                     style: TextStyle(color:Colors.black, fontWeight:FontWeight.bold, fontSize:20),
                     ),
                     ),
                     ),
                     
                   ]
                 ),
                 SizedBox(height: 25,),
                 Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: <Widget>[
                   Container(
                     margin: EdgeInsets.only(left:20),
                     height:50,
                     decoration: BoxDecoration(
                       borderRadius:BorderRadius.all(Radius.circular(10)),
                       color:Colors.red
                     ),
                     child:FlatButton(onPressed: ()=> Navigator.of(context).pop(),
                      child: Text('Quit',
                     style: TextStyle(color:Colors.white, fontWeight:FontWeight.bold),
                     )
                     )
                   ),
                    Container(
                     margin: EdgeInsets.only(left: 10),
                     height:50,
                     width: 200,
                     decoration: BoxDecoration(
                       borderRadius:BorderRadius.all(Radius.circular(10)),
                       color:Colors.red
                     ),
                     child:FlatButton(onPressed: null, 
                     child: Row(
                       mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                       children: <Widget>[
                         Text('ADD TO ',
                         style: TextStyle(color:Colors.white, fontWeight:FontWeight.bold),
                         ),
                         Icon(Icons.shopping_basket, color: Colors.white,)
                       ],
                     )
                     )
                   )
                  ],
                 )
               ]
             ),
           )
         ],
       ),
    );
  }
}