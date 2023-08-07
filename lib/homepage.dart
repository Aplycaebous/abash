import 'package:flutter/material.dart';
import 'package:abash/search_container.dart';
import 'package:abash/add_property_container.dart';
import 'package:abash/frequently_asked_qus.dart';
import 'package:abash/suggestion_list.dart';
import 'package:abash/item_model.dart';
import 'package:abash/current_location.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(249, 249, 1, 0.976),
      appBar: AppBar(
          title: const CurrentLocation(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    return Scaffold.of(context).openEndDrawer();
                  },
                  icon: Image.asset(
                    'assets/icons/icon_menu.ico',
                    scale: 0.8,
                  ),
                );
              }),
            ),
          ],
        ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isLargeScreen = constraints.maxWidth > 600;
            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: isLargeScreen ? 30.0 : 16.0,
                      ),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              // Container(margin: EdgeInsets.only(top:25),child: ),
                              const SearchContainer(),
                              const AddPropertyContainer(),
                              Container(
                                decoration: const BoxDecoration(),
                                child: SuggestionList(
                                  "Popular Property",
                                  Item.recommendation,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: const FAQ(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

// Column(
//                   children: [
//                     Container(
//                         margin: const EdgeInsets.only(
//                           left: 16,
//                         ),
//                         child: const SearchContainer()),
//                     Expanded(
//                       child: Center(
//                         child: SingleChildScrollView(
//                           child: Column(
//                             children: [
//                               // SizedBox(height: 700,),
//                               Image.asset(
//                                 'assets/images/wifi_off.png',
//                                 scale: 2,
//                               ),
//                               Container(
//                                 margin: const EdgeInsets.only(top: 20),
//                                 child: const Text(
//                                   'No Internet connection',
//                                   style: TextStyle(
//                                       fontFamily: 'DMSans',
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w500),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 15,
//                               ),
//                               TextButton(
//                                   onPressed: () {

//                                   },
//                                   child: const Text('Retry'))
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
