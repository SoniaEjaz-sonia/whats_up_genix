import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whats_up_genix/constants/app_colors.dart';
import 'package:whats_up_genix/constants/app_fonts.dart';
import 'package:whats_up_genix/models/calls_model.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
            leading: DottedBorder(
              borderType: BorderType.Circle,
              padding: const EdgeInsets.all(3),
              strokeWidth: 2.5,
              strokeCap: StrokeCap.round,
              dashPattern: const [150, 0, 0, 0],
              color: AppColors.whiteColor,
              child: Container(
                height: 220,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.tealGreenColor,
                ),
                child: const Icon(
                  Icons.link,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            title: Text(
              "Create Call link",
              style: TextStyle(
                fontWeight: AppFonts.fontWeight500,
                fontSize: AppFonts.fontSize18,
              ),
            ),
            subtitle: Text(
              "Share a link for your WhatsUp call",
              style: TextStyle(
                fontWeight: AppFonts.fontWeightNormal,
                fontSize: AppFonts.fontSize14,
              ),
            ),
          ),
          const Divider(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
            child: Text(
              "Recent",
              style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: AppFonts.fontWeight500,
                fontSize: AppFonts.fontSize16,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.70,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: callsList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.only(right: 15),
                  leading: DottedBorder(
                    borderType: BorderType.Circle,
                    padding: const EdgeInsets.all(3),
                    strokeWidth: 2.5,
                    strokeCap: StrokeCap.round,
                    dashPattern: const [150, 0, 0, 0],
                    color: AppColors.whiteColor,
                    child: Container(
                      height: 220,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            callsList[index].imageURL,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        callsList[index].name,
                        style: TextStyle(
                          fontWeight: AppFonts.fontWeight500,
                          fontSize: AppFonts.fontSize16,
                        ),
                      ),
                      callsList[index].callType == "audio"
                          ? const Icon(
                              Icons.call,
                              color: AppColors.tealGreenColor,
                            )
                          : const Icon(
                              Icons.videocam,
                              color: AppColors.tealGreenColor,
                            )
                    ],
                  ),
                  subtitle: Text(
                    callsList[index].time,
                    style: TextStyle(
                      fontWeight: AppFonts.fontWeightNormal,
                      fontSize: AppFonts.fontSize12,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
