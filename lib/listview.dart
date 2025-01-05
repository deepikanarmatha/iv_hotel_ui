import 'model.dart';

import 'package:flutter/material.dart';
final List<Hotel> hotels = [
  Hotel(
    name: "Heden Golf",
    rating: 3.9,
    location: "Abidjan, Côte d'Ivoire",
    description: "Set in landscaped gardens overlooking the Ébrié lagoon, this upscale hotel featuring contemporary local art and architectural touches.",
    imageUrl: "lib/assets/images/img_one.jpg",
    price: '\$127',
    contact: "+225 22 48 26 26",
    reviews: 200,
    discount: "25% OFF",
    facilities: "Free Wi-Fi, Fitness Center, Free Breakfast, Kid Friendly",
    checkInTime: "12 PM",
    checkOutTime: "11 AM",
    foodMenu: "Bagels with turkey, gourmet croissant, scrambled eggs, crispy mozza burger",

  ),
  Hotel(
    name: "Onomo",
    rating: 4.3,
    location: "Abidjan, Côte d'Ivoire",
    description: "Adagio City Aparthotel is a joint venture ....",
    imageUrl: "lib/assets/images/img_two.jpg",
    price: '\$120',
    contact: "+225 22 48 26 26",
    reviews: 200,
    discount: "null",
    facilities: "Free Wi-Fi, Fitness Center, Free Breakfast, Kid Friendly",
    checkInTime: "12 PM",
    checkOutTime: "11 AM",
    foodMenu: "Bagels with turkey, gourmet croissant, scrambled eggs, crispy mozza burger",

  ),
  Hotel(
    name: "Adagio",
    rating: 4.5,
    location: "Abidjan, Côte d'Ivoire",
    description: "Adagio City Aparthotel is a joint venture ...",
    imageUrl: "lib/assets/images/img_three.png",
    price: '\$100',
    contact: "+225 22 48 26 26",
    reviews: 200,
    discount: "15% OFF",
    facilities: "Free Wi-Fi, Fitness Center, Free Breakfast, Kid Friendly",
    checkInTime: "12 PM",
    checkOutTime: "11 AM",
    foodMenu: "Bagels with turkey, gourmet croissant, scrambled eggs, crispy mozza burger",

  ),
  Hotel(
    name: "Heden Golf",
    rating: 3.9,
    location: "Abidjan, Côte d'Ivoire",
    description: "Set in landscaped gardens overlooking the Ébrié lagoon, this upscale hotel featuring contemporary local art and architectural touches.",
    imageUrl: "lib/assets/images/img_four.jpg",
    price: '\$127',
    contact: "+225 22 48 26 26",
    reviews: 200,
    discount: "25% OFF",
    facilities: "Free Wi-Fi, Fitness Center, Free Breakfast, Kid Friendly",
    checkInTime: "12 PM",
    checkOutTime: "11 AM",
    foodMenu: "Bagels with turkey, gourmet croissant, scrambled eggs, crispy mozza burger",

  ),
];

/*
final List<Map<String, dynamic>> _hotels = [
  {
    'image': 'lib/assets/images/img_one.jpg',
    'name': 'Heden Golf',
    'rating': 3.9,
    'reviews': 200,
    'description': 'Set in landscaped gardens overlooking the ...',
    'price': '\$127',
    'discount': '25% OFF',
  },
  {
    'image': 'lib/assets/images/img_two.jpg',
    'name': 'Onomo',
    'rating': 4.3,
    'reviews': 150,
    'description': 'Adagio City Aparthotel is a joint venture ...',
    'price': '\$120',
    'discount': null,
  },
  {
    'image': 'lib/assets/images/img_three.png',
    'name': 'Adagio',
    'rating': 4.5,
    'reviews': 20,
    'description': 'The ONOMO Hotels chain established...',
    'price': '\$100',
    'discount': '15% OFF',
  },
  {
    'image': 'lib/assets/images/img_four.jpg',
    'name': 'Sofitel',
    'rating': 4.5,
    'reviews': 20,
    'description': 'This understated hotel is 5 km from both...',
    'price': '\$127',
    'discount': '25% OFF',
  },
];*/