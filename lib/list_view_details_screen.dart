import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'check_out_screen.dart';
import 'model.dart';
class HotelDetailScreen extends StatefulWidget {
  //const HotelDetailScreen({super.key});
  final Hotel hotel;

  HotelDetailScreen({required this.hotel});
  @override
  State<HotelDetailScreen> createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  bool isReviewSelected = false;
  bool isPhotoSelected = false;
  bool isNearbySelected = false;




  final List<Map<String, String>> foodItems = [
    {"image": "lib/assets/images/foodmenu_img/bagels.png", "name": "Bagels with turkey"},
    {"image": "lib/assets/images/foodmenu_img/cripsy.png", "name": "Gourmet Croissant"},
    {"image": "lib/assets/images/foodmenu_img/gourmet.png", "name": "Sandwich"},
    {"image": "lib/assets/images/foodmenu_img/sandwich.png", "name": "Crispy Mozza Burger"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hotel Image
            image(),
            SizedBox(height: 10),
            tapborder(),
            Divider(),
            SizedBox(height: 20),

            hoteldescription(),

            hotelfacilities(),


            hotel_details(),

            Divider(),
            hotel_info(),
            Divider(),
            checkavailability(),

            Divider(),
            foodmenu(),


            Image.asset("lib/assets/images/map_background.png"),

            payment(),


          ],
        ),
      ),
    );
  }
  Widget tapborder() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Distribute space evenly
              mainAxisSize: MainAxisSize.min, // Prevent overflow by shrinking Row to fit content
              children: [
                // Review Container
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isReviewSelected = !isReviewSelected;
                      isPhotoSelected = false;
                      isNearbySelected = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isReviewSelected ? Colors.blue : Colors.transparent, // Background color
                      border: Border.all(
                        color: isReviewSelected ? Colors.blue : Colors.blue,
                        width: 2.0, // Border color
                      ),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(15), // Radius for left side
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center text within container
                      children: [
                        Text(
                          'Review (106)',
                          style: TextStyle(
                            fontSize: 14,
                            color: isReviewSelected ? Colors.white : Colors.black, // Text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Photo Container
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isPhotoSelected = !isPhotoSelected;
                      isReviewSelected = false;
                      isNearbySelected = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isPhotoSelected ? Colors.blue : Colors.transparent, // Background color
                      border: Border.all(
                        color: isPhotoSelected ? Colors.blue : Colors.blue,
                        width: 2.0, // Border color
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center text within container
                      children: [
                        Text(
                          'Photo (10)',
                          style: TextStyle(
                            fontSize: 14,
                            color: isPhotoSelected ? Colors.white : Colors.black, // Text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Nearby Container
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isNearbySelected = !isNearbySelected;
                      isReviewSelected = false;
                      isPhotoSelected = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isNearbySelected ? Colors.blue : Colors.transparent, // Background color
                      border: Border.all(
                        color: isNearbySelected ? Colors.blue : Colors.blue,
                        width: 2.0, // Border color
                      ),
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(15), // Radius for right side
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center text within container
                      children: [
                        Text(
                          'Nearby (24)',
                          style: TextStyle(
                            fontSize: 14,
                            color: isNearbySelected ? Colors.white : Colors.black, // Text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

Widget image(){
    return   Stack(
      children: [

        Image.asset(
          widget.hotel.imageUrl,
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,
        ),


        Positioned(
          top: 40,

          left: 16,

          right: 16,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(width: 8),

                  Text(
                    widget.hotel.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),


            ],
          ),
        ),

        Positioned(
          top: 198,
          left: 180,
          child: Row(
            children: [
              IconButton(
                icon: Image.asset("lib/assets/images/location.png",
                    color: Colors.white, width: 20, height: 20),
                onPressed: () {},
              ),
              Text(
                widget.hotel.location,

                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(1, 1),
                      blurRadius: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 185,
          right: 190,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Icon(Icons.star, color: Colors.orange, size: 30),

                  Text('${widget.hotel.rating}', style: TextStyle(
                    fontSize: 16, color: Colors.white,)),
                ],
              ),
              Text(
                "85/100 people liked this",

                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(1, 1),
                      blurRadius: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),


        Positioned(
          top: 8,
          right: 8,
          child: IconButton(
            icon: const Icon(Icons.share, color: Colors.white),
            onPressed: () {
              final String text = "Check out this hotel: ${widget.hotel
                  .name} at ${widget.hotel.location}";
              Clipboard.setData(ClipboardData(text: text));
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Link copied to clipboard')));
            },
          ),
        ),
      ],
    );
}
Widget hoteldescription(){
    return  Container(
      height: 130,
      child: Column(
        children: [
          Text("Hotel Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(widget.hotel.description,textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
}
Widget hotelfacilities(){
    return   Container(
      height: 130,
      color: Colors.grey.shade200,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text("Hotel Facilities",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset("lib/assets/images/wifi.png"),
                    Text("Free Wi-Fi")
                  ],
                ),
                Column(
                  children: [
                    Image.asset("lib/assets/images/fitness_center.png"),
                    Text("Fitness Center")
                  ],
                ),
                Column(
                  children: [
                    Image.asset("lib/assets/images/breakfast.png"),
                    Text("Free Breakfast")
                  ],
                ),
                Column(
                  children: [
                    Image.asset("lib/assets/images/firendly.png"),
                    Text("Kid Friendly")
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
}
Widget hotel_details(){
    return   Container(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Image.asset("lib/assets/images/location.png",
                    color: Colors.blue, width: 30, height: 30),
                onPressed: () {},
              ),
              Text(
                widget.hotel.location,

                style: const TextStyle(
                  fontSize: 16,
                  //color: Colors.blue,

                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.phone_enabled_outlined,
                  color: Colors.blue, size: 30,),
                onPressed: () {},
              ),
              Text(
                widget.hotel.contact,

                style: const TextStyle(
                  fontSize: 16,
                  //color: Colors.white,

                ),
              ),
            ],
          ),


          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(
                  children: [
                    Image.asset("lib/assets/images/checkin.png"),
                    SizedBox(width: 10,),
                    Text('Checkin 12 PM',style: const TextStyle(
                      fontSize: 16,
                      //color: Colors.white,

                    ),),
                  ],
                ),
                Row(
                  children: [
                    Image.asset("lib/assets/images/checkout.png"),
                    SizedBox(width: 10,),
                    Text('Checkout 11 AM',style: const TextStyle(
                      fontSize: 16,
                      //color: Colors.white,

                    ),),
                  ],
                ),
              ],
            ),
          ),


        ],
      ),
    );
}
Widget hotel_info(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("lib/assets/images/hotel_info/dining-table.png"),
                Text("Great dining"),
                Image.asset("lib/assets/images/hotel_info/pawprint.png"),
                Text("Pet friendly"),
                Image.asset("lib/assets/images/hotel_info/bed.png"),
                Text("Great rooms")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("lib/assets/images/hotel_info/breakfast_food.png"),
                Text("Great breakfast"),
                Image.asset("lib/assets/images/hotel_info/swimming.png"),
                Text("Great pool"),
                Image.asset("lib/assets/images/hotel_info/diamond.png"),
                Text("Luxurious vibe")
              ],
            ),
          ],
        ),
      ),
    );
}
Widget checkavailability(){
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Check Availability",style: TextStyle(fontSize: 24),),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(

              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey, )),
              ),
              child: Row(
                children: [
                  Image.asset("lib/assets/images/checkin.png", width: 30, height: 30),  // Adjust image size
                  SizedBox(width: 8), // Space between the image and the text
                  Text("Checkin date & time", style: TextStyle(fontSize: 16)),
                  Spacer(), // Pushes the icon to the right
                  Icon(Icons.keyboard_arrow_down_outlined, size: 30),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(

              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey,)),
              ),
              child: Row(
                children: [
                  Image.asset("lib/assets/images/checkout.png", width: 30, height: 30),  // Adjust image size
                  SizedBox(width: 8), // Space between the image and the text
                  Text("Checkout date & time", style: TextStyle(fontSize: 16)),
                  Spacer(), // Pushes the icon to the right
                  Icon(Icons.keyboard_arrow_down_outlined, size: 30),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(

              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
              child: Row(
                children: [
                  Image.asset("lib/assets/images/adults.png", width: 30, height: 30),  // Adjust image size
                  SizedBox(width: 8),
                  Text("0 Adults.", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 15,),
                  Text("0 Children.", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 15,),
                  Text("0 room", style: TextStyle(fontSize: 16)),

                  Spacer(),
                  Icon(Icons.keyboard_arrow_down_outlined, size: 30),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
}
Widget foodmenu(){
    return  Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Food", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("View all", style: TextStyle(color: Colors.blue, fontSize: 16)),

            ],
          ),
         SizedBox(height: 16),

          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          foodItems[index]["image"]!,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        foodItems[index]["name"]!,
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
}
Widget payment(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Column(
            children: [


              Container(
                margin: EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Text(
                      "\$150",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "\$127",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: 8),

                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    "avg/night",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Container( width: 200,
          height: 60,
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.greenAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CHECK_OUT_SCREEN()));


            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child:  Text('Book Now',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),

      ],
    );
}

}