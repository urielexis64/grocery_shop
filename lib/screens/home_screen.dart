import 'package:flutter/material.dart';
import 'package:grocery_shop_dribbble/data/data.dart';
import 'package:grocery_shop_dribbble/widgets/home_header.dart';
import 'package:grocery_shop_dribbble/widgets/item_card.dart';
import 'package:grocery_shop_dribbble/widgets/search_food.dart';
import 'package:grocery_shop_dribbble/widgets/section_icon.dart';
import 'package:grocery_shop_dribbble/widgets/section_text.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedSection = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeHeader(),
                const SizedBox(height: 30),
                const SearchFood(),
                const SizedBox(height: 30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: sections.asMap().entries.map((e) {
                      final index = e.key;
                      final value = e.value;

                      return GestureDetector(
                        onTap: () => setState(() {
                          selectedSection = index;
                        }),
                        child: SectionText(
                            text: value, isSelected: index == selectedSection),
                      );
                    }).toList()),
                SizedBox(height: 20),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  shrinkWrap: true,
                  mainAxisSpacing: 15,
                  childAspectRatio: 3 / 4,
                  physics: const ScrollPhysics(),
                  children:
                      fruits.map((fruit) => ItemCard(item: fruit)).toList(),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height * .075,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionIcon(icon: Icons.home, isSelected: true),
            SectionIcon(icon: Icons.bookmark_border_rounded, isSelected: false),
            SectionIcon(
                icon: Icons.shopping_basket_outlined, isSelected: false),
            SectionIcon(
                icon: Icons.notifications_none_rounded, isSelected: false),
          ],
        ),
      ),
    );
  }
}
