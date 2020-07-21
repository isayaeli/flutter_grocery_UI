import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mapocho/models/product_model.dart';
import 'package:mapocho/pages/details.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        leading: Icon(Icons.menu),
        title: Text("Mapocho"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:<Widget>[
          Container(
            color: Colors.red,
            height:MediaQuery.of(context).size.height/4,
            child: Carousel(
              images: [
                AssetImage('images/product-1.jpg'),
                AssetImage('images/product-2.jpg'),
                AssetImage('images/category-3.jpg'),
                AssetImage('images/category-1.jpg'),
                AssetImage('images/about.jpg')
              ],
              indicatorBgPadding: 5,
              dotSize: 4,
            ),
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height/2.5+89.9,
            child: GridView.builder(
              itemCount: data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2), 
            itemBuilder: (context, index){
              return Card(
                color: Colors.white,
                elevation: 10,
                child:InkWell(
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>Details(
                      pro_name: data[index].pro_name,
                      prod_img: data[index].prod_img,
                      prod_price: data[index].prod_price,
                      )
                    )
                    ),
                  child: Container(
                    height: 40,
                     decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(2))
                    ),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children:<Widget>[
                        Container(
                          margin: EdgeInsets.only(top:10),
                          height:MediaQuery.of(context).size.height/4-40,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(200)),
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(data[index].prod_img)
                          )
                         ),
                        ),
                        Container(
                          height: 40,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                             Container(
                               margin: EdgeInsets.only(top:2, left: 10),
                               height: 30,
                               decoration: BoxDecoration(
                               color: Colors.lightGreenAccent,
                               borderRadius: BorderRadius.all(Radius.circular(5))
                               ),
                               child: Padding(padding: EdgeInsets.only(top:7, left: 5, right: 10),
                                child: Text(data[index].pro_name,
                               style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold
                               ),
                               ),
                               )
                             ),
                             Container(
                               margin: EdgeInsets.only(top:5, left: 10,right: 10),
                               height: 30,
                               decoration: BoxDecoration(
                               color: Colors.lightGreenAccent,
                               borderRadius: BorderRadius.all(Radius.circular(10))
                               ),
                               child: Padding(padding: EdgeInsets.only(top:7, left: 10, right: 10),
                                child: Text(data[index].prod_price,
                               style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold
                               ),
                               ),
                               )
                             )
                            ],
                          ),
                        )
                      ]
                    ),
                  ),
                )
              );
            }
            ),
          )
        ]
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height/12,
        color: Colors.lightGreen,
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            IconButton(icon: Icon(Icons.home, color:Colors.white),onPressed: null,),
            IconButton(icon: Icon(Icons.shopping_basket, color:Colors.white),onPressed: null,),
            IconButton(icon: Icon(Icons.person, color:Colors.white),onPressed: null,)
          ]
        ),
      ),
    );
  }
}