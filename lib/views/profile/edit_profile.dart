import 'package:boiler_service_york/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../widgets/app_button.dart';
import '../home/home_screen.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: MyColors.greenColor,
                    width: 2.0,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 58.0,
                  backgroundImage: const NetworkImage(
                      'https://www.inforwaves.com/media/2021/04/dummy-profile-pic-300x300-1.png'),
                  child: IconButton(
                    icon: SvgPicture.asset('assets/user_edit.svg'),
                    // icon: SvgPicture.asset('assets/person.svg'),
                    onPressed: () {
                      // Add your logic for updating the user's profile image here
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          appTextField(hintText: 'Username', textFieldIcon: Icons.person),
          appTextField(hintText: 'Nickname', textFieldIcon: Icons.person),
          appTextField(
              hintText: 'Date of Birth',
              textFieldIcon: Icons.person,
              suffixIcon: Icons.calendar_month),
          appTextField(hintText: 'Email', textFieldIcon: Icons.email),
          appTextField(hintText: 'Phone Number', textFieldIcon: Icons.phone),
          appTextField(
              hintText: 'Gender',
              textFieldIcon: Icons.person,
              suffixIcon: Icons.arrow_drop_down),
          const Spacer(flex: 1),
          appButton(
            onPressed: () {
              Get.to(() => const HomeScreen());
            },
            height: 46.0,
            width: 319.0,
            color: MyColors.greenColor,
            text: 'Continue',
            textColor: MyColors.whiteColor,
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
