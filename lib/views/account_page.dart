import 'package:flutter/material.dart';
import 'package:spoons/constants/text_styles.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
     final List<String> items = ['Email', 'Phone', 'Help', 'Settings'];
    return  Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage('https://imgs.search.brave.com/X8l8ynj-3OnW_GqG08h-8iOHY4qLr8xvU0fdmA0ItIc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdDQu/ZGVwb3NpdHBob3Rv/cy5jb20vMjU2MDY2/OTQvMjcwODcvaS80/NTAvZGVwb3NpdHBo/b3Rvc18yNzA4NzY3/OTgtc3RvY2stcGhv/dG8tbGVvbmFyZG8t/ZGljYXByaW8uanBn'),
              radius: 100,
            ),
            Text(
              "DiCaprio",
              style: AppTextStyles.categoryTextStyle,
            ),
            Expanded(
              child: ListView.separated(
                    itemCount: items.length,
                    separatorBuilder: (context, index) => const Divider(), // Separator between items
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(items[index]),
                      );
                    },
                  ),
            )
          ],
        ),
      )),
    );
  }
}
