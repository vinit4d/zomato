import 'package:flutter/material.dart';

import 'Searchbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List menuList = [
    {
      "name": "Pizza",
      "img":
          "https://www.simplyrecipes.com/thmb/KRw_r32s4gQeOX-d07NWY1OlOFk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simply-Recipes-Homemade-Pizza-Dough-Lead-Shot-1c-c2b1885d27d4481c9cfe6f6286a64342.jpg"
    },
    {
      "name": "Burger",
      "img":
          "https://img.freepik.com/free-photo/double-hamburger-isolated-white-background-fresh-burger-fast-food-with-beef-cream-cheese_90220-1192.jpg"
    },
    {
      "name": "Indian",
      "img":
          "https://cdn.tasteatlas.com//images/toplistarticles/d0e6a0a79d5f4197a51f4ca065393ffe.jpg?w=375&h=280"
    },
    {
      "name": "Sweets",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSvXq4DdvGSlJlRnicJJtsXhyh5Y13iUguZg&usqp=CAU"
    },
    {
      "name": "Cold Drinks",
      "img":
          "https://myfoodstory.com/wp-content/uploads/2022/04/Cold-Coffee-3-Ways-1.jpg"
    },
    {
      "name": "Hot beverages",
      "img":
          "https://groupeis312spring2015.files.wordpress.com/2015/03/hot-chocolate.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return

        // );

        Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              floating: true,
              pinned: true,
              snap: true,
              // expandedHeight: 130,
              actions: [
                Row(
                  children: const [
                    Icon(
                      Icons.translate_outlined,
                      size: 20.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Icon(
                      Icons.person_2,
                      size: 20.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    )

                    // ],),
                  ],
                ),
              ],
              title: Row(
                children: [
                  const Icon(
                    Icons.location_on_rounded,
                    size: 35.0,
                    color: Colors.red,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Home",
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined)
                        ],
                      ),
                      const Text(
                        "Rohini Sector 24, delhi",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(70), child: Searchbar()))
        ],
        body:
            // SingleChildScrollView(
            //   child:

            SingleChildScrollView(
          child: Column(
            children: [
              // enlargeCenterPage: true,

              Container(
                margin: const EdgeInsets.all(10.0),
                child: ClipRect(
                  /** Banner Widget **/
                  child: Banner(
                    message: "20% off !!",
                    location: BannerLocation.bottomStart,
                    color: Colors.red,
                    child: Container(
                      // color: Colors.green[100],
                      // height: 200,
                      padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                      child:
                          // Padding(
                          //   padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),

                          Column(
                        children: <Widget>[
                          Image.network(
                            'https://cdn.dribbble.com/users/5261465/screenshots/11501258/media/ea4fc3d83b2ef7fe89be6b28f7023426.jpg?compress=1&resize=400x300&vertical=top',
                            height: 250,
                            width: 350,
                          ), //Image.network
                          const SizedBox(height: 10),
                        ], //<Widget>[]
                      ), //Column
                      // ), //Padding
                    ), //Container
                  ), //Banner
                ), //ClipRect
              ), //

              // contain

              SizedBox(
                height: 400,
                child: GridView.builder(
                  shrinkWrap: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  // shrinkWrap: true,
                  itemBuilder: (context, position) {
                    return InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 150,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                menuList[position]['img'],
                              ),
                              // child: Image.network(menuList[position]['img'],height: 300,width: 400,),
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              menuList[position]['name'],
                              textAlign: TextAlign.center,
                              style: TextStyle(),
                            ),
                          ),
                          // )
                        ],
                      ),
                    );

                    // );
                  },
                  itemCount: menuList.length,
                ),
              ),
            ],
          ),
        ),
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Delivery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dinner_dining),
            label: 'Dinning',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_sharp),
            label: 'Money',
          ),
        ],
      ),
      // ),
    );
  }
}
