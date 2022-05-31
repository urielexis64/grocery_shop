import 'package:flutter/material.dart';
import 'package:grocery_shop_dribbble/screens/item_details.dart';
import 'package:grocery_shop_dribbble/utils/app_colors.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({Key? key, required this.item}) : super(key: key);

  final dynamic item;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ItemDetails(item: widget.item),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.gray.withOpacity(.3), width: .7),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => setState(() => isSaved = !isSaved),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.primaryPink),
                  child: Icon(
                    isSaved ? Icons.bookmark : Icons.bookmark_border_rounded,
                    color: isSaved ? AppColors.primaryRed : Colors.white,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Center(
                child: Hero(
                  tag: widget.item['name'],
                  child: Image.asset(
                    widget.item['imagePath'],
                  ),
                ),
              ),
            ),
            Text(
              widget.item['name'],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 2),
            Text(
              'Fresh Fruits',
              style: TextStyle(color: AppColors.gray, fontSize: 12),
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${widget.item['price'].toStringAsFixed(2)}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: AppColors.primaryRed,
                      borderRadius: BorderRadius.circular(6)),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
