import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffFFF6EC),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFF6EC),
        leading: IconButton(
          iconSize: screenWidth * 0.06,
          icon: Image.asset('assets/icons/back_with_card.png'),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Search',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
          vertical: screenHeight * 0.01,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 43,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.3,
                    blurRadius: 1,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Radiant Salon',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  // contentPadding: EdgeInsets.all(16.0),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Expanded(child: Text('Search Result- ')),
                Container(
                    height: 31,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xffBD6600),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Filter',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color(0xffBD6600),
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/icons/filter_horizantal.png',
                            height: 13, width: 13)
                      ],
                    )),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    height: 31,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xffBD6600),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Sort',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color(0xffBD6600),
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/icons/sort_vertical.png',
                            height: 16, width: 16)
                      ],
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 1,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 9, vertical: 1),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the radius as needed
                          child: Image.asset(
                            'assets/icons/hotel_image.png',
                            fit: BoxFit.cover,
                            height: 146,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    'Radiant Salon',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )),
                                  Icon(
                                    Icons.favorite_outline,
                                    color: Colors.grey,
                                    size: 15,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                '★ 4.5 star(200+) Excellent',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xffBD6600),
                                    fontSize: 10),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                '12 km | Available slot: 12:23 pm',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                    fontSize: 10),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Famous for its spicy haircuts and massage and typically crowdly all day.',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                    fontSize: 10),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 104,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 7),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(55),
                                ),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Explore styles',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset('assets/icons/2_star_icon.png',
                                        height: 12, width: 12)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Explore more such saloons',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 157,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // You can change the number of items
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: 108, // Adjust the width as needed
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/icons/hotel_image.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                iconSize: 12,
                                icon: const Icon(Icons.favorite,
                                    color: Colors.white),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            color: Colors.black54,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Glamour Salon',
                                  style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 10),
                                ),
                                Text(
                                  '12 km |12:02 PM ⤼',
                                    style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                  fontSize: 8),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
