import 'package:flutter/material.dart';
import 'package:abash/btn_search.dart';
import 'package:abash/btn_filter.dart';
import 'package:abash/constants.dart';



class SearchContainer extends StatefulWidget {
  const SearchContainer({super.key});

  @override
  State<SearchContainer> createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: lightAsh.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: const Expanded(
        child: Center(
          child: Row(
            children: [
              BtnSearch(),
              Expanded(
                flex: 6,
                child: Text(
                  'Search house',
                  style: TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 16,
                      height: 1.3,
                      color: textSecondary,
                      fontWeight: FontWeight.w400),
                ),
              ),
              BtnFilter(),
            ],
          ),
        ),
      ),
    );
  }
}