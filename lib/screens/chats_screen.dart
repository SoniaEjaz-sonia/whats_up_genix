import 'package:flutter/material.dart';
import 'package:whats_up_genix/constants/colors.dart';
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
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
                trailing: Text(
                  chatsList[index].time,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                    color: AppColors.tealGreenColor,
                  ),
                ),
              )
            : ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: AppColors.greyColor,
                  backgroundImage: NetworkImage(chatsList[index].imageURL),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      chatsList[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      chatsList[index].time,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  chatsList[index].message,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                  ),
                ),
              );
      },
    );
  }
}
