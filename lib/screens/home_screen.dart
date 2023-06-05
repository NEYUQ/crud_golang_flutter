import 'package:flutter/material.dart';
import 'package:go_and_flutter_crud/colors/app_colors.dart';
import 'package:go_and_flutter_crud/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.maxFinite,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/welcome.jpg',
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "Hello",
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 60,
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  TextSpan(
                    text: "\nStart your beautiful day",
                    style: TextStyle(
                      color: AppColors.smallTextColor,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 2.8,
            ),
            ButtonWidget(
              backGroundColor: AppColors.mainColor,
              text: "Add Task",
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              backGroundColor: Colors.white,
              text: "View All",
              textColor: AppColors.smallTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
