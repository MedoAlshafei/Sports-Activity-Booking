import 'package:flutter/material.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // // Back button
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: IconButton(
                //     icon: const Icon(Icons.arrow_back),
                //     color: Theme.of(context).colorScheme.onSurface,
                //     onPressed: () => Navigator.maybePop(context),
                //     tooltip: 'Back',
                //   ),
                // ),
                // const SizedBox(height: 8),
                // Profile Header
                _buildProfileHeader(),
                const SizedBox(height: 24),

                // Subscription Information
                _buildSubscriptionInfo(),
                const SizedBox(height: 24),

                // Settings List
                _buildSettingsList(),

                const SizedBox(height: 24),
                // Logout Button
                _buildLogoutButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Column(
      children: [
        // Profile Picture
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 4),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const CircleAvatar(
            radius: 48,
            backgroundColor: Colors.red,
            child: Icon(Icons.person, size: 50, color: Colors.white),
          ),
        ),
        const SizedBox(height: 16),

        // Name
        const Text(
          'Jane Doe',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),

        // Email
        const Text(
          'jane.Doe@example.com',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildSubscriptionInfo() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.calendar_today, color: Colors.red, size: 20),
              const SizedBox(width: 8),
              const Text(
                'Subscription Duration',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Premium Member - Renews in 30 days',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsList() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildSettingsItem(
            icon: Icons.sports_gymnastics_outlined,
            title: 'كاراتيه',
            onTap: () {},
          ),
          _buildDivider(),
          _buildSettingsItem(
            icon: Icons.sports_tennis,
            title: 'تنس',
            onTap: () {},
          ),

          // _buildDivider(),
          // _buildSettingsItem(
          //   icon: Icons.notifications_active,
          //   title: 'Notification Settings',
          //   onTap: () {},
          // ),
          // _buildDivider(),
          // _buildSettingsItem(
          //   icon: Icons.security,
          //   title: 'Privacy Settings',
          //   onTap: () {},
          // ),

          // _buildDivider(),
          // _buildSettingsItem(
          //   icon: Icons.help_outline,
          //   title: 'Help & Support',
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }

  Widget _buildSettingsItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Icon(icon, color: Colors.red, size: 24),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
            // const Icon(Icons.chevron_right, color: Colors.grey, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      height: 1,
      thickness: 0.5,
      color: Colors.grey,
      indent: 56,
      endIndent: 16,
    );
  }

  Widget _buildLogoutButton() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      child: ElevatedButton(
        onPressed: () {
          // Handle logout logic here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFA00000),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: const Text(
          'Log Out',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
