import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whats_up_genix/constants/app_colors.dart';
import 'package:whats_up_genix/constants/app_fonts.dart';
import 'package:whats_up_genix/models/status_model.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          leading: DottedBorder(
            borderType: BorderType.Circle,
            padding: const EdgeInsets.all(3),
            strokeWidth: 2.5,
            strokeCap: StrokeCap.round,
            dashPattern: const [150, 0, 0, 0],
            color: AppColors.lightGreenColor,
            child: Container(
              height: 220,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: Image.asset(
                    "assets/images/status/person.png",
                  ).image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          title: Text(
            "My Status",
            style: TextStyle(
              fontWeight: AppFonts.fontWeight500,
              fontSize: AppFonts.fontSize18,
            ),
          ),
          subtitle: Text(
            "Tap to add status update",
            style: TextStyle(
              fontWeight: AppFonts.fontWeightNormal,
              fontSize: AppFonts.fontSize14,
            ),
          ),
        ),
        const Divider(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.70,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: statusList.length,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: const EdgeInsets.only(bottom: 0.0),
                leading: DottedBorder(
                  borderType: BorderType.Circle,
                  padding: const EdgeInsets.all(3),
                  strokeWidth: 2.5,
                  strokeCap: StrokeCap.round,
                  dashPattern: statusList[index].statusCount == 1
                      ? [150, 0, 0, 0]
                      : [
                          statusList[index].statusCount.toDouble(),
                          statusList[index].statusCount.toDouble(),
                          statusList[index].statusCount.toDouble(),
                          statusList[index].statusCount.toDouble(),
                        ],
                  color: AppColors.lightGreenColor,
                  child: Container(
                    height: 220,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: Image.asset(
                          "assets/images/status/${statusList[index].imageURLs[0]}",
                        ).image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  statusList[index].name,
                  style: TextStyle(
                    fontWeight: AppFonts.fontWeight500,
                    fontSize: AppFonts.fontSize16,
                  ),
                ),
                subtitle: Text(
                  statusList[index].time,
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
    );
  }
}
