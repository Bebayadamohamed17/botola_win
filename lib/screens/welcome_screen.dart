import 'package:flutter/material.dart';
import '../core/constants/colors.dart';
import '../core/constants/routes.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = AppRoutes.welcome;

  // Placeholder translation keys
  static const String titleKey = 'welcome_title';
  static const String subtitleKey = 'welcome_subtitle';
  static const String loginKey = 'login_button';
  static const String registerKey = 'register_button';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [
              SizedBox(height: 28),
              // Logo row
              Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text('BW', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Botola Win',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.09),

              // Welcome illustration placeholder
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.emoji_events_outlined, size: 96, color: AppColors.primary.withOpacity(0.5)),
                    SizedBox(height: 18),
                    Text(
                      'أهلاً بك في Botola Win', // Placeholder for translation
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'أنشئ بطولاتك ودع أصدقاءك وتنافس في مباريات ممتعة!', // Placeholder for translation
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              // Buttons
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [AppColors.primary, AppColors.primary.withOpacity(0.8)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.login);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      child: Text('تسجيل الدخول', style: TextStyle(fontSize: 16)), // Placeholder
                    ),
                  ),
                  SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.register);
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      side: BorderSide(color: AppColors.primary),
                    ),
                    child: Text('إنشاء حساب جديد', style: TextStyle(fontSize: 16, color: AppColors.primary)), // Placeholder
                  ),
                  SizedBox(height: 18),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}