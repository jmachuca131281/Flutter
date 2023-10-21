import 'package:flutter/material.dart';
import 'package:perfume/constants/constants.dart';
import 'package:perfume/data/data.dart';
import 'package:perfume/models/perfume_model.dart';
import 'package:perfume/screens/details/details_screen.dart';

import '../../../widgets/ratingStars.dart';

class PerfumeList extends StatelessWidget {
  const PerfumeList({Key? key}) : super(key: key);
  _buildPerfumeProducts(BuildContext context, int index){
    Size size = MediaQuery.of(context).size;
    Perfume perfume = perfumeProducts[index];

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailsScreen(perfume: perfume),
        ),
      ),
      child: Container(
        width: size.width * 0.5,
        margin: EdgeInsets.only(
          left: appPadding / 2,
          right: appPadding / 2,
          top: appPadding / 2,
          bottom: appPadding * 1.5,
        ),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 10.0,
                color: primaryColor.withOpacity(0.25))
          ],
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.all(appPadding * 1.2),
              child: Container(
                child: Image.asset(
                  perfume.imageUrl!,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              height: size.height * 0.04,
              padding: EdgeInsets.all(appPadding / 2),
              decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        perfume.name!.toUpperCase(),
                        style: TextStyle(
                          color: secondaryColor,
                        ),
                      ),

                      // To display rating stars
                      RatingStars(perfume.rating!),
                    ],
                  ),
                  Text(
                    '\$${perfume.price}',
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.40,
      child: Padding(
        padding: const EdgeInsets.only(top: appPadding),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return _buildPerfumeProducts(context, index);
          },
          itemCount: perfumeProducts.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
