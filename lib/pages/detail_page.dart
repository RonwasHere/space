import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/review_item.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color indicatorColor = Color(0xff394A54);
  double indicatorMargin = 5;
  int currentIndex = 1;
  bool isExpand = false;
  bool isShowReview = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: kWhiteGreyColor,
      body: Stack(
        children: [
          Image.asset(
            'assets/image_background.png',
          ),
          Container(
            margin: EdgeInsets.only(top: 95),
            child: Image.asset(
              'assets/image_detail$currentIndex.png',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 66,
              ),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhiteColor,
                border: Border.all(
                  color: kLineDarkColor,
                ),
              ),
              child: Icon(
                Icons.chevron_left,
              ),
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.4,
              maxChildSize: 0.95,
              builder: (BuildContext build, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: kWhiteColor,
                  ),
                  child: NotificationListener(
                    onNotification: (Notification notif) {
                      if (notif is ScrollEndNotification) {
                        if (notif.metrics.minScrollExtent == -1.0) {
                          setState(() {
                            isExpand = true;
                          });
                        } else {
                          setState(() {
                            isExpand = false;
                            isShowReview = false;
                          });
                        }
                      }
                      return true;
                    },
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16),
                            Center(
                              //* indikator garis abu-abu
                              child: Container(
                                width: 30,
                                height: 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: kLineDarkColor,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Poang Chair',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 24,
                                    fontWeight: semiBold,
                                  ),
                                ),
                                Text(
                                  ' \$219',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Text(
                              ' IKOE',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 16),
                            Container(
                              height: 50,
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Row(
                                    children: [
                                      colorIndicator(Color(0xff394A54), 0),
                                      colorIndicator(Color(0xffEBA823), 1),
                                      colorIndicator(Color(0xff757477), 2),
                                      colorIndicator(Color(0xff29282C), 3),
                                      colorIndicator(Color(0xffECE9DA), 4),
                                    ],
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 500),
                                    width: 40,
                                    height: 40,
                                    margin: EdgeInsets.only(
                                      left: indicatorMargin,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: indicatorColor,
                                      border: Border.all(
                                        width: 3,
                                        color: kWhiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Bringing new life to an old favourite. We first introduced \nthis chair in the 1950’s. Some 60 years later we brought \nit back into the range with the same craftsmanship, \ncomfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 2,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Bringing new life to an old favourite. We first introduced \nthis chair in the 1950’s. Some 60 years later we brought \nit back into the range with the same craftsmanship, \ncomfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 2,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Bringing new life to an old favourite. We first introduced \nthis chair in the 1950’s. Some 60 years later we brought \nit back into the range with the same craftsmanship, \ncomfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 2,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Bringing new life to an old favourite. We first introduced \nthis chair in the 1950’s. Some 60 years later we brought \nit back into the range with the same craftsmanship, \ncomfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 2,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Bringing new life to an old favourite. We first introduced \nthis chair in the 1950’s. Some 60 years later we brought \nit back into the range with the same craftsmanship, \ncomfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 2,
                              ),
                            ),
                            SizedBox(height: 50),
                            isShowReview
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'reciew',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 24,
                                          fontWeight: semiBold,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      ReviewItem(
                                        name: 'Lydia Clayton',
                                        imageUrl: 'assets/image_reviewer1.png',
                                        review:
                                            'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial...',
                                        items: [
                                          'assets/image_product_list1.png',
                                          'assets/image_product_list2.png',
                                          'assets/image_product_list3.png'
                                        ],
                                      ),
                                      ReviewItem(
                                        name: 'Audra Still',
                                        imageUrl: 'assets/image_reviewer2.png',
                                        review:
                                            'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial...',
                                        items: [
                                          'assets/image_product_review4.png',
                                          'assets/image_product_review5.png',
                                        ],
                                      ),
                                      ReviewItem(
                                        name: 'Joan Gray',
                                        imageUrl: 'assets/image_reviewer3.png',
                                        review:
                                            'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial...',
                                        items: [
                                          'assets/image_product_review6.png',
                                          'assets/image_product_review7.png',
                                        ],
                                      ),
                                    ],
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: isShowReview
          ? null
          : isExpand
              ? Container(
                  width: double.infinity,
                  height: 315,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        kWhiteColor.withOpacity(0.5),
                        kWhiteColor,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isShowReview = true;
                          });
                        },
                        child: Text(
                          'See More',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kGreyColor,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kWhiteGreyColor,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icon_cart.png',
                            width: 24,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 56,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: kBlackColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: Text(
                              'Buy Now',
                              style: whiteTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
    );
  }

  Widget colorIndicator(Color color, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indicatorColor = color;
          indicatorMargin = 5 + (index * 70);
          currentIndex = index + 1;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
