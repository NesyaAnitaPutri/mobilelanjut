import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              toolbarHeight: 70,
              elevation: 0,
              leading: Container(
                // margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(2),
                child:  Image.asset('assets/yubis-logo.png', scale: 0.1,),
              ),
              backgroundColor: Colors.white, 
              shadowColor: Colors.white,
              actions: [
                IconButton(
                  icon: Icon(Icons.search, color: Colors.grey,), 
                  onPressed: () {
                },),
                IconButton(
                  icon: Icon(Icons.shopping_bag_outlined, color: Colors.grey,), 
                  onPressed: () {
                },)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/banner1.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/banner2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/banner3.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  ),
                )
              ], 
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.9,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Kategori Produk', style: TextStyle(fontSize: 16, color: Colors.black),)
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/006-vegetables.png', width: 40,),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Sayuran'),
                        ]
                      ),
                      Column(
                        children: [
                          Image.asset('assets/033-broccoli.png', width: 40,),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Paket'),
                        ]
                      ),
                      Column(
                        children: [
                          Image.asset('assets/035-apple.png', width: 40,),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Buahan'),
                        ]
                      ),
                      Column(
                        children: [
                          Image.asset('assets/013-flour.png', width: 40,),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Karbohidrat'),
                        ]
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/017-fridge.png', width: 40,),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Bumbu Dapur'),
                        ]
                      ),
                      Column(
                        children: [
                          Image.asset('assets/028-shopping-basket.png', width: 40,),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Sembako'),
                        ]
                      ),
                      Column(
                        children: [
                          Image.asset('assets/011-fish.png', width: 40,),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Protein'),
                        ]
                      ),
                      Column(
                        children: [
                          Image.asset('assets/028-shopping-basket.png', width: 40,),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Makanan Sehat'),
                        ]
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/chips-snack-svgrepo-com.png', width: 40,),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Makanan Ringan'),
                        ]
                      ),
                      Column(
                        children: [
                          Image.asset('assets/017-fridge.png', width: 40,),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Makanan Frozen'),
                        ]
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                  )
                ],
              )
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,

              selectedItemColor: Colors.green,
              selectedFontSize: 13,
              unselectedFontSize: 13,
              iconSize: 30,
              items: [
                BottomNavigationBarItem(
                  label: "Beranda",
                  icon: Icon(Icons.home_repair_service_outlined)

                ),
                BottomNavigationBarItem(
                  label: "Produk",
                  icon: Icon(Icons.apple_outlined),
                ),
                BottomNavigationBarItem(
                  label: "Promo",
                  icon: Icon(Icons.bookmark_add_outlined),
                ),
                BottomNavigationBarItem(
                  label: "Transaksi",
                  icon: Icon(Icons.book_online_outlined),
                ),
                BottomNavigationBarItem(
                  label: "Akun",
                  icon: Icon(Icons.person_outline),
                ),
              ],
            ),
            
          ]
        )
      ),
    );
  }
}