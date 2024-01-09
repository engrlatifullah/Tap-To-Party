import 'package:cart_stepper/cart_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import 'checkout_screen.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xEDF1F0ED),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).padding.top, 20, 20),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFF4A4E69)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 20,
                        right: 10,
                        bottom: 10,
                      ),
                      decoration: ShapeDecoration(
                        color: Color(0xEDF1F0ED),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              )),
                          Text(
                            'Product Name',
                            style: TextStyle(
                              color: Color(0xFF4A4E69),
                              fontSize: 20,
                              fontFamily: 'Open Sans Condensed',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/image.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'price',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        SvgPicture.asset("images/Vector (5).svg")
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Specificacions:\n\nModelo Año Early 2015\n* Pantalla: 13.3 Pulgadas Retina Display\n* Procesador: Intel Core i5\n* Velocidad: 2.7 Ghz - Turbo Boost 3.5Ghz\n* Memoria Ram: 8 GB\n* Gráficos: Intel Iris Pro 1536 MB\n* Disco duro: 128 GB\n* Ultimo Sistema Operativo MacOS\n* 1 HDMI\n* 2 USB\n* 2 Thunderbolt\n* 1 jack de audio 3.5\n\n*Cargador original\n* Caja Original\n\nApple ps4 xbox i5 Toyota Mercedes honda Ford BMW Jeep Amazon audio video call iphone ps5 Laptop, lacto, laptops, lapto, HP, ACER, Lenovo, i5, i3, i7, Ryzen, Ryzen 5, Ryzen 3, NVIDIA GTX, ASUS, Computadora, Monitor, Laptop HP I5, Laptop DELL, Laptop HP, rtx 2060 1070 2070, Raider, Leopard, gaming generacion 2020, MSI, nitro ryzen 5, Dell con 2 disco duro y 16gb de ram,16gb de ram, Dell g5, Msi Gp63, Acer Ryzer 5, Hp Omen 17, Macbook, i5,i3,i7, Ryzer 5, Ryzer 7, Ryzer 3, Gaming, Pc Gamer",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              navigateToPage(context: context, pageName: CheckOutScreen());
                            },
                            child: Container(
                              height: 72,
                              padding: const EdgeInsets.all(10),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(3, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.shopping_cart_outlined,
                                      size: 25,
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            GestureDetector(onTap: (){
                                              if(_counter > 0){
                                                setState(() {
                                                  _counter--;
                                                });
                                              }
                                            }, child: Icon(Icons.remove),),
                                           SizedBox(width: 10),
                                           Text(_counter.toString()),
                                            SizedBox(width: 10),
                                            GestureDetector(onTap: (){
                                                setState(() {
                                                  _counter++;
                                                });
                                            }, child: Icon(Icons.add),),
                                          ],
                                        ),
                                        Text(
                                          '\nADD TO CART',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF4A4E69),
                                            fontSize: 10,
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 72,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Color(0xFFA99F96),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(3, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("images/Vector (6).svg",height: 20,),
                              SizedBox(width: 10,),
                                Text(
                                  'MESSAGE SUPPLIER',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFF4F4F4),
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 67,
                      padding: const EdgeInsets.all(20),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(3, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'ADD TO INVENTORY',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF4A4E69),
                            fontSize: 12,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30),
                    Text(
                      'Products you might be like',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Color(0xFF4A4E69),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 300,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(5, (index){
                           return Container(
                             width: 228,
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "images/1e38cb4ed411b859816c8989d7314f24.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(10),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFA99F96),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Disposable Barware',
                                        style: AppTextStyles.plusJakartaSans.copyWith(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(onTap: (){
                                        if(_counter > 0){
                                          setState(() {
                                            _counter--;
                                          });
                                        }
                                      }, child: Icon(Icons.remove),),
                                      SizedBox(width: 10),
                                      Text(_counter.toString()),
                                      SizedBox(width: 10),
                                      GestureDetector(onTap: (){
                                        setState(() {
                                          _counter++;
                                        });
                                      }, child: Icon(Icons.add),),
                                    ],
                                  ),
                                  Text(
                                    '\nADD TO CART',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF4A4E69),
                                      fontSize: 10,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
