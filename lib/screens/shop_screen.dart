import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/popular_tab.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  final List<String> categories = [
    "Popular",
    "Cricket Deals",
    "Strong Pepsi Deals",
    "All New"
  ];

  final List<Map<String, String>> popularItems = [
    {
      "title": "Cricket Halloween Deal",
      "price": "THB. 319",
      "oldPrice": "THB. 429",
      "image": "assets/cricket_deal_2.jpg"
    },
    {
      "title": "Chicken Panang Sauce",
      "price": "THB. 169.00",
      "image": "assets/chicken_fajita.jpg"
    },
    {
      "title": "Chicken BBQ",
      "price": "THB. 139",
      "image": "assets/chicken_tikka.jpg"
    },
    {
      "title": "Chicken Teriyaki",
      "price": "THB. 219",
      "oldPrice": "THB. 329.00",
      "image": "assets/chicken_teriyaki.jpg"
    },
    {
      "title": "Roasted Chicken Breast",
      "price": "THB. 159",
      "image": "assets/roasted_chicken_breast.jpg"
    },
    {
      "title": "Chicken BBQ Salad",
      "price": "THB. 169",
      "image": "assets/chicken_tikka_salad.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFDF1C6E),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "15-30 min",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFDF1C6E),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Color(0xFFDF1C6E),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share_outlined,
                color: Color(0xFFDF1C6E),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Color(0xFFDF1C6E),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/subway_logo.jpg', height: 70),
                      SizedBox(width: 8),
                      Text(
                        "Subway",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "1.5km away | THB. 35.00 Delivery | THB. 99.00 Minimum Service fee applies",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "More info",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDF1C6E),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Color(0xFFDF1C6E),
                        size: 30,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "3.9",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "1000+ ratings",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See reviews",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDF1C6E),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.clock,
                        color: Color(0xFFDF1C6E),
                        size: 25,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Delivery: 15-30 min",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Change",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Image.asset(
                        'assets/voucher_panda.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Available deals",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFDF1C6E).withOpacity(0.07),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/percentage_icon.png',
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "THB. 15% off",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFDF1C6E),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Min. order THB. 129. Valid for selected items.\nAuto-applied.",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  TabBar(
                    tabAlignment: TabAlignment.start,
                    controller: _tabController,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    labelColor: Color(0xFFDF1C6E),
                    indicatorColor: Color(0xFFDF1C6E),
                    indicatorWeight: 3,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      Tab(text: "Popular"),
                      Tab(text: "Cricket Deals"),
                      Tab(text: "Srong Pepsi Deals"),
                      Tab(text: "All New"),
                    ],
                  ),
                  Center(
                    child: [
                      PopularTab(
                        popularItems: popularItems,
                      ),
                      Center(
                        child: Text("Cricket Deals Tab"),
                      ),
                      Center(
                        child: Text("Srong Pepsi Deals Tab"),
                      ),
                      Center(
                        child: Text("All new Tab"),
                      ),
                    ][_tabController.index],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
