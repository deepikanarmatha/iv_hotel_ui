import 'package:flutter/material.dart';
import 'package:untitled/listview.dart';

import 'list_view_details_screen.dart';

class HOTEL_LIST_VIEW extends StatefulWidget {
  const HOTEL_LIST_VIEW({super.key});

  @override
  State<HOTEL_LIST_VIEW> createState() => _HOTEL_LIST_VIEWState();
}

class _HOTEL_LIST_VIEWState extends State<HOTEL_LIST_VIEW> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hotels', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Abidjan 200 hotels', style: TextStyle(fontSize: 16)),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset("lib/assets/images/location.png", width: 40, height: 40),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                  child: TextField(
                    controller: _controller,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 18,
                        color: Colors.blue,
                      ),
                      suffixIcon: _controller.text.isNotEmpty
                          ? GestureDetector(
                        onTap: () {
                          _controller.clear();
                        },
                        child: const Icon(
                          Icons.cancel_outlined,
                          size: 18,
                        ),
                      )
                          : null,
                      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Text('Amenities'),
                          SizedBox(width: 4),
                          Icon(Icons.keyboard_arrow_down_outlined),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Text('Filter by'),
                          SizedBox(width: 4),
                          Icon(Icons.keyboard_arrow_down_outlined),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Text('Sort by'),
                          SizedBox(width: 4),
                          Icon(Icons.keyboard_arrow_down_outlined),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.separated(
              itemCount: hotels.length,
              itemBuilder: (context, index) {
                final hotel = hotels[index];

                return GestureDetector(
                  onTap: () {
                    // Navigate to the HotelDetailScreen and pass the selected hotel
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HotelDetailScreen(hotel: hotel),
                      ),
                    );
                  },
                  child: _hotelCard(
                    image: hotel.imageUrl,
                    name: hotel.name,
                    rating: hotel.rating,
                    reviews: hotel.reviews,
                    description: hotel.description,
                    price: hotel.price,
                    discount: hotel.discount,
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _hotelCard({
    required String image,
    required String name,
    required double rating,
    required int reviews,
    required String description,
    required String price,
    String? discount,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                      size: 16,
                    ),
                    Text(
                      '$rating',
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      '  Reviews ($reviews)',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (discount != null)
                      Text(
                        discount,
                        style: TextStyle(
                          color: Colors.yellow[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    Text(
                      price,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                          colors: [Colors.blue, Colors.greenAccent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Handle booking
                        },
                        child: const Text('Book now', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
