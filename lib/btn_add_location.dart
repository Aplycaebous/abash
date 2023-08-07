import 'package:flutter/material.dart';
import 'package:abash/constants.dart';

class BtnAddLocation extends StatefulWidget {
  const BtnAddLocation({super.key});

  @override
  State<BtnAddLocation> createState() {
    return _BtnAddLocationState();
  }
}

class _BtnAddLocationState extends State<BtnAddLocation> {
  void openAddLocationOverlay() {
    showModalBottomSheet(
        context: context,
        isDismissible: true,
        isScrollControlled: true,
        enableDrag: true,
        showDragHandle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        builder: (ctx) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                (Icons.arrow_back),
                                color: Colors.black,
                                
                              ),
                            ),
                          ),
                          const Flexible(
                            flex: 6,
                            child: Center(
                              child: Text(
                                'Add Location',
                                style: TextStyle(
                                  fontSize: 18,
                                  height: 1.25,
                                  color: textPrimary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    Image.asset(
                      'assets/images/map.png',
                      scale: 0.9,
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6.0, bottom: 3.0),
                          child: Text(
                            'Name',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.7,
                                color: textPrimary,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: lightAsh,
                                width: 1.0,
                                style: BorderStyle.solid)),
                        hintText: 'example: Home',
                      ),
                      style: const TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 14,
                          height: 1.7,
                          color: textSecondary,
                          fontWeight: FontWeight.w400),
                    ),

                    const SizedBox(height: 10),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6.0, bottom: 3.0),
                          child: Text(
                            'Plot / Sector number',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.7,
                                color: textPrimary,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: lightAsh,
                                width: 1.0,
                                style: BorderStyle.solid)),
                        hintText: 'example: Road 18, Sector 14',
                      ),
                      style: const TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 14,
                          height: 1.7,
                          color: textSecondary,
                          fontWeight: FontWeight.w400),
                    ),

                    const SizedBox(height: 10),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6.0, bottom: 3.0),
                          child: Text(
                            'City Name',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.7,
                                color: textPrimary,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: lightAsh,
                                width: 1.0,
                                style: BorderStyle.solid)),
                        hintText: 'example: Uttara, Dhaka',
                      ),
                      style: const TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 14,
                          height: 1.7,
                          color: textSecondary,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 400,
                      height: 45,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: gradient,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Save Location',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.4,
                              color: white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: lightAsh.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 30,
            offset: const Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: TextButton(
          onPressed: openAddLocationOverlay,
          child: Image.asset(
            'assets/icons/location_on.ico',
            scale: 0.8,
          ),
        ),
      ),
    );
  }
}
