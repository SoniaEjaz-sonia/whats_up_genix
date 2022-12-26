import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whats_up_genix/constants/app_colors.dart';
import 'package:whats_up_genix/constants/app_fonts.dart';
import 'package:whats_up_genix/models/chats_model.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatsList.length,
      itemBuilder: (context, index) {
        return chatsList[index].name == "" && chatsList[index].imageURL == ""
            ? ListTile(
                leading: const Icon(
                  Icons.archive_outlined,
                  color: AppColors.tealGreenColor,
                ),
                title: Text(
                  chatsList[index].message,
                  style: TextStyle(
                    fontWeight: AppFonts.fontWeight500,
                    fontSize: AppFonts.fontSize16,
                  ),
                ),
                trailing: Text(
                  chatsList[index].time,
                  style: TextStyle(
                    fontWeight: AppFonts.fontWeightNormal,
                    fontSize: AppFonts.fontSize12,
                    color: AppColors.tealGreenColor,
                  ),
                ),
              )
            : ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(chatsList[index].imageURL),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      chatsList[index].name,
                      style: TextStyle(
                        fontWeight: AppFonts.fontWeight500,
                        fontSize: AppFonts.fontSize16,
                      ),
                    ),
                    Text(
                      chatsList[index].time,
                      style: TextStyle(
                        fontWeight: AppFonts.fontWeightNormal,
                        fontSize: AppFonts.fontSize12,
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  chatsList[index].message,
                  style: TextStyle(
                    fontWeight: AppFonts.fontWeightNormal,
                    fontSize: AppFonts.fontSize14,
                  ),
                ),
              );
      },
    );
  }
}
