import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Text("Recently Played", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          padding: EdgeInsets.all(20.0),
        ),
        CarouselSlider(
          options: CarouselOptions(height: 200, viewportFraction: 0.5),
          items: [
            Image.network("https://images-na.ssl-images-amazon.com/images/I/51ENitVDFiL._AC_SY400_.jpg"),
            Image.network("https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5e558625d378190007f44a3a%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D645%26cropX2%3D4219%26cropY1%3D132%26cropY2%3D3708"),
            Image.network("https://upload.wikimedia.org/wikipedia/en/d/d6/Lady_Gaga_-_Chromatica_%28Official_Album_Cover%29.png")
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
//                      margin: EdgeInsets.symmetric(horizontal: 5.0),
//                      decoration: BoxDecoration(
//                          color: Colors.grey
//                      ),
                  child: i,
                );
              },
            );
          }).toList(),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Favourites", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          padding: EdgeInsets.fromLTRB(20.0,30,20,20),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  onTap: () {},
                  leading: Image.network("https://images-na.ssl-images-amazon.com/images/I/51ENitVDFiL._AC_SY400_.jpg"),
                  title: Text("BTS", style: TextStyle(color: Colors.white)),
                ),
              ),
              Expanded(
                child: ListTile(
                  onTap: () {},
                  leading: Image.network("https://img.discogs.com/nYeCam9QphaVbJJb8BiQ3D6uLos=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-4970561-1380964659-4973.jpeg.jpg"),
                  title: Text("Jason Derulo", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  onTap: () {},
                  leading: Image.network("https://images.genius.com/e2b742109d1afda21188922f6f187641.1000x1000x1.jpg"),
                  title: Text("Conan Gray", style: TextStyle(color: Colors.white)),
                ),
              ),
              Expanded(
                child: ListTile(
                  onTap: () {},
                  leading: Image.network("https://pyxis.nymag.com/v1/imgs/90a/c5f/e5fe775c6ea399f9d5f5613c3714ad8756-harry-styles-watermelon-sugar.rsquare.w700.jpg"),
                  title: Text("Harry Styles", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  onTap: () {},
                  leading: Image.network("https://pyxis.nymag.com/v1/imgs/049/040/30033a9fdec7587676d24d8b7d4420d0d5-25-taylor-swift.rsquare.w330.jpg"),
                  title: Text("Taylor Swift", style: TextStyle(color: Colors.white)),
                ),
              ),
              Expanded(
                child: ListTile(
                  leading: Image.network("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/117066899-142196930877461-7789358905206470114-n-1596656747.jpg"),
                  title: Text("Cardi B", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        )


      ],
    );
  }
}

