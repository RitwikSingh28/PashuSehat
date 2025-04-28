import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  void _launchEmail(String email) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.contact_support_outlined,
              size: 64,
              color: Colors.grey,
            ),
            const SizedBox(height: 24),
            Text(
              'Contact Us',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Get in touch with our team',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Team Members',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildEmailTile('58308@gbpuat.ac.in', theme),
                _buildEmailTile('57544@gbpuat.ac.in', theme),
                _buildEmailTile('57550@gbpuat.ac.in', theme),
                _buildEmailTile('58017@gbpuat.ac.in', theme),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              'College',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildContactItem(
              icon: Icons.location_on_outlined,
              title: 'Address',
              content: 'College of Technology\nG. B. Pant University of Agriculture and Technology\nPantnagar, Uttarakhand - 263145',
              theme: theme,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailTile(String email, ThemeData theme) {
    return ListTile(
      leading: const CircleAvatar(
        child: Icon(Icons.person_outline),
      ),
      title: Text(email),
      trailing: IconButton(
        icon: const Icon(Icons.email_outlined),
        onPressed: () => _launchEmail(email),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _buildContactItem({
    required IconData icon,
    required String title,
    required String content,
    required ThemeData theme,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 24, color: theme.primaryColor),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                content,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
