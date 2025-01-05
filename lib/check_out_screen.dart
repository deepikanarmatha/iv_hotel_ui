import 'package:flutter/material.dart';
class CHECK_OUT_SCREEN extends StatefulWidget {
  const CHECK_OUT_SCREEN({super.key});

  @override
  State<CHECK_OUT_SCREEN> createState() => _CHECK_OUT_SCREENState();
}

class _CHECK_OUT_SCREENState extends State<CHECK_OUT_SCREEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_forward_ios, // Arrow icon
              size: 20, // Adjust size as needed
              //color: Colors.white, // Adjust color as needed
            ),
            SizedBox(width: 10,),
            Text(
              "Food Cart",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

          ],
        ),
      //  backgroundColor: Colors.blue, // Customize AppBar color if needed
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("2  Items added"),
                    Text("Total : ${12}"),

                  ],
                ),
              ),
            ),
            cartitem(),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select Time",style: TextStyle(fontSize: 20,color: Colors.grey),),

                      Row(
                        children: [
                          timeing(),
                          SizedBox(width: 10,),
                          Icon(Icons.keyboard_arrow_down_outlined,size: 40,),
                        ],
                      )
                    ],
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Divider(),
            ),

            OrderSummary(),
            Divider(),
            paymentdetils(),

              ],
            ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 3,right: 3),
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.greenAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),

        child: Center(
          child: TextButton(
            onPressed: () {
              // Navigate to payment screen or perform action
              print("Proceed to Payment");
            },
            child: Text(
              "Proceed to Payment",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),



    );
  }
  Widget cartitem(){
    return    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(

        child: Column(
          children: [

            Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0), // Add border radius here
                      child: Image.asset(
                        "lib/assets/images/foodmenu_img/bagels.png",
                        width: 80, // Adjust size of the image
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bagels with turkey and bacon"),
                        Text("\$10"),
                      ],
                    ),



                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 240),
                  child: Row(
                    children: [
                      // Decrement Button
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                            colors: [Colors.blue, Colors.greenAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero, // Remove default padding
                            minimumSize: Size.zero, // Remove minimum button size constraints
                          ),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => CHECK_OUT_SCREEN()));
                          },
                          child: Text(
                            '-',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      // Quantity Text
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Increment Button
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                            colors: [Colors.blue, Colors.greenAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero, // Remove default padding
                            minimumSize: Size.zero, // Remove minimum button size constraints
                          ),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => CHECK_OUT_SCREEN()));
                          },
                          child: Text(
                            '+',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0), // Add border radius here
                      child: Image.asset(
                        "lib/assets/images/foodmenu_img/sandwich.png",
                        width: 80, // Adjust size of the image
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10,),

                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("sandwich"),
                          Text("\$5"),
                        ],
                      ),
                    ),

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 240),
                  child: Row(
                    children: [
                      // Decrement Button
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                            colors: [Colors.blue, Colors.greenAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero, // Remove default padding
                            minimumSize: Size.zero, // Remove minimum button size constraints
                          ),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => CHECK_OUT_SCREEN()));
                          },
                          child: Text(
                            '-',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      // Quantity Text
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Increment Button
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                            colors: [Colors.blue, Colors.greenAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero, // Remove default padding
                            minimumSize: Size.zero, // Remove minimum button size constraints
                          ),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => CHECK_OUT_SCREEN()));
                          },
                          child: Text(
                            '+',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            Divider(),

          ],

        ),
      ),
    );
  }
  Widget timeing(){
    return  RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "00",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationColor: Colors.grey,
              decorationThickness: 2.0,
            ),
          ),

          TextSpan(
            text: " : ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: "00",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationColor: Colors.grey,
              decorationThickness: 2.0,
            ),
          ),
          TextSpan(
            text: " : ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: "00",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationColor: Colors.grey,
              decorationThickness: 2.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget OrderSummary(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("OrderSummary",style: TextStyle(fontSize: 24),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Bagels with turkey and bacon",style: TextStyle(fontSize: 16),),
                  Text("\$10"),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sandwich",style: TextStyle(fontSize: 16)),
                  Text("\$5"),
                ],
              ),
            )

          ],
        ),
      ),
    );
    
  }

  Widget paymentdetils(){
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sub total",style: TextStyle(fontSize: 16),),
                Text("\$15"),

              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Service tax",style: TextStyle(fontSize: 16),),
                Text("\$2"),

              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                Text("\$17",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

              ],
            ),
          )

        ],
      ),

    );
  }
}
