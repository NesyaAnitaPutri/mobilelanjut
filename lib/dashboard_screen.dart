import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "Assets/yubis-logo.png",
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shop),
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          )
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 150.0),
            items: [
              AssetImage("assets/banner/banner1.jpeg"),
              AssetImage("assets/banner/banner2.jpeg"),
              AssetImage("assets/banner/banner3.jpeg")
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Image(
                        image: i,
                      ));
                },
              );
            }).toList(),
          ),
          Text(
            'Kategori Produk',
            textAlign: TextAlign.start,
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset('assets/033-broccoli.svg')),
                  Text('Sayuran')
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset('assets/033-broccoli.svg')),
                  Text('Paket')
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset('assets/035-apple.svg')),
                  Text('Buahan')
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset('assets/013-flour.svg')),
                  Text('Karbohidrat')
                ],
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset('assets/017-fridge.svg')),
                  Text('Bumbu Dapur')
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset('assets/033-broccoli.svg')),
                  Text('Sembako')
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset('assets/011-fish.svg')),
                  Text('Protein')
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset('assets/013-flour.svg')),
                  Text(
                    'Makanan Sehat',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              )),
            ],
          )
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(icon: Icon(Icons.storage), label: 'Beranda'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Produk'),
        BottomNavigationBarItem(icon: Icon(Icons.save), label: 'Promo'),
        BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined), label: 'Transaksi'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: 'Akun'),
      ]),
    );
    
    
  }
}
