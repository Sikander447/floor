
import 'package:floor/constants/constants.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InviteMembersScreen extends StatefulWidget {
  static String routeName = "/invite_members";
  @override
  _InviteMembersScreenState createState() => _InviteMembersScreenState();
}
class _InviteMembersScreenState extends State<InviteMembersScreen> {



  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.KappBackgroundColor,

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.KwhiteColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 18,
                ),
              ),
              Icon(
                Icons.message_outlined,
                color: Colors.black,
                size: 22,
              ),
            ],
          ),
        ),

        titleSpacing: 0,
        actions: [
          Icon(
            Icons.date_range,
            color: Colors.black,
            size: 22,
          ),
          Icon(
            Icons.more_vert,
            color: AppColors.KgrayColor,
            size: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 22,
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Container(
            height: height * 1,
            width: width * 1,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        RegularText(
                          text: 'Select Channel',
                          textOverFlow: TextOverflow.ellipsis,
                          maximumLine: 1,
                          size: 20,
                          fontWeight: FontWeight.w600,
                        ),

                      ],
                    ),

                    SizedBox(
                      height: height * 0.005,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.3,
                          width: width * 0.85,
                          child: GridView.count(
                            crossAxisCount: 3,
                            physics: NeverScrollableScrollPhysics(),
                            children: List.generate(
                              6,
                                  (index) => ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child:
                                  Card(
                                    color: AppColors.KlightgrayColor,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15,bottom: 4),
                                      child: Column(
                                        children: [
                                          Text(
                                            '#Marketing',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.007,
                                          ),
                                          Icon(
                                            Icons.shop_outlined,
                                            size: 48,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        RegularText(
                          text: 'Invite Members',
                          textOverFlow: TextOverflow.ellipsis,
                          maximumLine: 1,
                          size: 20,
                          fontWeight: FontWeight.w600,
                        ),

                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5,right: 5),
                        child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.KgrayColor
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.KgrayColor
                              ),
                            ),
                            // filled: true,
                            // fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.KgrayColor,
                              size: 18,
                            ),
                            hintText: 'Search Messages...',
                            hintStyle: TextStyle(
                              color: AppColors.KgrayColor600,
                              fontSize: 12,
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  // height: height * 0.007,
                                  width: width * 0.1,
                                  decoration: BoxDecoration(
                                    color: AppColors.KblackColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(Icons.filter_list,color: AppColors.KwhiteColor,),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),

                    Stack(
                      fit: StackFit.loose,
                      children: [
                        Positioned(
                          top: 10,
                          left: 15,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: AppColors.KblackColor,
                          ),),
                        Container(
                          width: width * 0.95,
                          padding: EdgeInsets.only(left: 5),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg'),
                            ),
                            title: Text(
                              'Jasmin G. Rangle',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Text(
                              '2x Founder, B2B Advisor',
                              style: TextStyle(
                                color: Colors.pink[200],
                                fontSize: 9,
                              ),
                            ),
                            trailing: Container(
                                height: height * 0.045,
                                width: width * 0.2,
                                decoration: BoxDecoration(
                                    color: AppColors.KlightGreenColor,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(
                                  child: RegularText(
                                    text: 'Invite',size: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: width * 0.95,
                      padding: EdgeInsets.only(left: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg'),
                        ),
                        title: Text(
                          'Jasmin G. Rangle',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          '2x Founder, B2B Advisor',
                          style: TextStyle(
                            color: Colors.pink[200],
                            fontSize: 9,
                          ),
                        ),
                        trailing: Container(
                            height: height * 0.045,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                color: AppColors.KlightGreenColor,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: RegularText(
                                text: 'Invite',size: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: height * 0.03,
                    ),
                RegularText(
                text: 'Invite via Email',
                textOverFlow: TextOverflow.ellipsis,
                maximumLine: 1,
                size: 16,
                fontWeight: FontWeight.w600,
              ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5,right: 5),
                        child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.KgrayColor
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.KgrayColor
                              ),
                            ),

                            hintText: 'abcd@gmail.com',
                            hintStyle: TextStyle(
                              color: AppColors.KgrayColor600,
                              fontSize: 12,
                            ),
                            suffixIcon: Container(
                              // height: height * 0.007,
                              width: width * 0.1,
                              decoration: BoxDecoration(
                                color: AppColors.KgrayColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Icon(Icons.mail_outline_rounded,
                                size: 35,
                                color: AppColors.KblackColor,),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: null,
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: AppColors.KwhiteColor,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            AppColors.KblackColor,
                          ),
                          minimumSize: MaterialStateProperty.all(Size(400, 40)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
        ),
      ),

    );
  }





}
