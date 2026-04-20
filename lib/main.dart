import 'package:flutter/material.dart';

void main() {
  runApp(const SafeRideApp());
}

class SafeRideApp extends StatelessWidget {
  const SafeRideApp({super.key});

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFF08111F);
    const surface = Color(0xFF111F33);
    const accent = Color(0xFF2DD4BF);

    return MaterialApp(
      title: 'SafeRide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: accent,
          brightness: Brightness.dark,
          background: background,
          surface: surface,
        ),
        scaffoldBackgroundColor: background,
        cardColor: surface,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white.withOpacity(0.03),
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.42)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.white.withOpacity(0.08)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.white.withOpacity(0.08)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(color: accent, width: 1.2),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: accent,
            foregroundColor: background,
            elevation: 0,
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: accent,
            side: BorderSide(color: accent.withOpacity(0.7)),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

// ─── LOGIN ──────────────────────────────────────────────
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController =
      TextEditingController(text: '98765 43210');
  final TextEditingController _collegeController =
      TextEditingController(text: 'SGBAU University');

  @override
  void dispose() {
    _phoneController.dispose();
    _collegeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildLoginBody(context),
      /*
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text('🚗', style: TextStyle(fontSize: 48)),
              const SizedBox(height: 16),
              const Text('SafeRide',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold)),
              const Text('Ride Smart. Travel Safe.',
                  style: TextStyle(color: Colors.white54, fontSize: 15)),
              const SizedBox(height: 48),
              const Text('Phone Number',
                  style: TextStyle(color: Colors.white70, fontSize: 13)),
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                    color: const Color(0xFF1A2D3F),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white12)),
                child: Row(children: [
                  const Text('+91  ',
                      style: TextStyle(color: Colors.white70, fontSize: 16)),
                  Expanded(
                    child: TextField(
                      controller: _phoneController,
                      style: const TextStyle(color: Colors.white),
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter phone number',
                          hintStyle: TextStyle(color: Colors.white38)),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 16),
              const Text('College / Company',
                  style: TextStyle(color: Colors.white70, fontSize: 13)),
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                    color: const Color(0xFF1A2D3F),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white12)),
                child: TextField(
                  controller: _collegeController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter college or company',
                      hintStyle: TextStyle(color: Colors.white38)),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const MainNavigation())),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00B4D8),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text('Continue →',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                  child: Text('Verified users get higher safety score',
                      style:
                          TextStyle(color: Colors.white38, fontSize: 12))),
            ],
          ),
        ),
      ),
      */
    );
  }

  Widget _buildLoginBody(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF08111F), Color(0xFF0D1B2A), Color(0xFF08111F)],
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -120,
              right: -40,
              child: Container(
                width: 240,
                height: 240,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF2DD4BF).withOpacity(0.18),
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: -60,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF38BDF8).withOpacity(0.12),
                ),
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 18, 24, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(999),
                      border: Border.all(color: Colors.white12),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.shield_rounded,
                            color: Color(0xFF2DD4BF), size: 16),
                        SizedBox(width: 8),
                        Text(
                          'Safer campus commute',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
                  const Icon(Icons.local_taxi_rounded,
                      size: 52, color: Color(0xFF2DD4BF)),
                  const SizedBox(height: 18),
                  const Text(
                    'SafeRide',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      height: 1,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -1.1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Ride smart, verify later, and get moving with a calmer first impression.',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      height: 1.45,
                    ),
                  ),
                  const SizedBox(height: 28),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(color: Colors.white10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.18),
                          blurRadius: 32,
                          offset: const Offset(0, 18),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'This demo build skips live OTP and lets you preview the product experience.',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 22),
                        const Text(
                          'Phone number',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          controller: _phoneController,
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixIcon: Container(
                              width: 72,
                              alignment: Alignment.center,
                              child: const Text(
                                '+91',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            prefixIconConstraints:
                                const BoxConstraints(minWidth: 72),
                            hintText: 'Enter phone number',
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'College / company',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          controller: _collegeController,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.apartment_rounded,
                                color: Colors.white38),
                            hintText: 'Enter college or company',
                          ),
                        ),
                        const SizedBox(height: 22),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const MainNavigation())),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Continue'),
                                SizedBox(width: 10),
                                Icon(Icons.arrow_forward_rounded, size: 18),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: const Color(0xFF2DD4BF).withOpacity(0.08),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              color: const Color(0xFF2DD4BF).withOpacity(0.2),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.verified_user_rounded,
                                  color: Color(0xFF2DD4BF), size: 18),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Verified users unlock stronger trust signals and higher safety visibility.',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                    height: 1.35,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── BOTTOM NAV ─────────────────────────────────────────
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int selectedIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    FindRideScreen(),
    PostRideScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        decoration: BoxDecoration(
          color: const Color(0xFF101C2E).withOpacity(0.96),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.white10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 24,
              offset: const Offset(0, 14),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: const Color(0xFF2DD4BF),
            unselectedItemColor: Colors.white38,
            currentIndex: selectedIndex,
            onTap: (i) => setState(() => selectedIndex = i),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore_rounded), label: 'Find'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_rounded), label: 'Post'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_rounded), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}

// ─── HOME ───────────────────────────────────────────────
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  int calculateSafetyScore() {
    int score = 100;
    final hour = DateTime.now().hour;
    if (hour >= 0 && hour < 5) {
      score -= 20;
    } else if (hour >= 5 && hour < 8) {
      score -= 10;
    }
    const int driverRating = 91;
    if (driverRating > 85) {
      score += 10;
    } else if (driverRating >= 70) {
      score += 5;
    }
    const String route = "moderate";
    if (route == "moderate") {
      score -= 10;
    } else if (route == "high") {
      score -= 20;
    }
    return score.clamp(0, 100);
  }

  String _greeting() {
    final h = DateTime.now().hour;
    if (h < 12) return 'Good Morning 🌅';
    if (h < 17) return 'Good Afternoon ☀️';
    if (h < 21) return 'Good Evening 🌆';
    return 'Good Night 🌙';
  }

  @override
  Widget build(BuildContext context) {
    final int score = calculateSafetyScore();
    final Color scoreColor = score > 85
        ? Colors.green
        : score > 70
            ? Colors.orange
            : Colors.red;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(_greeting(),
                      style: const TextStyle(
                          color: Colors.white54, fontSize: 14)),
                  const SizedBox(height: 4),
                  const Text('SafeRide',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold)),
                ]),
                Row(children: [
                  IconButton(
                    icon: const Icon(Icons.notifications_none,
                        color: Colors.white54),
                    onPressed: () => _showNotifications(context),
                  ),
                  const CircleAvatar(
                      backgroundColor: Color(0xFF00B4D8),
                      child: Text('D',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ]),
              ]),
              const SizedBox(height: 20),

              // AI Safety Score Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFF0077B6), Color(0xFF00B4D8)]),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    const Text('AI Safety Score',
                        style:
                            TextStyle(color: Colors.white70, fontSize: 13)),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                          color: scoreColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        score > 85
                            ? '✅ Safe'
                            : score > 70
                                ? '⚠️ Moderate'
                                : '🚨 High Risk',
                        style: TextStyle(
                            color: scoreColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  ]),
                  const SizedBox(height: 8),
                  Text('$score / 100',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold)),
                  Text(
                    score > 85
                        ? 'Safe — Recommended Travel'
                        : score > 70
                            ? 'Moderate Risk — Stay Alert'
                            : 'High Risk — Avoid Travel',
                    style: const TextStyle(
                        color: Colors.white70, fontSize: 13),
                  ),
                  const SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      value: score / 100,
                      minHeight: 8,
                      backgroundColor: Colors.white24,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Score factor hints
                  Row(children: [
                    _scorePill('🕐 Time', DateTime.now().hour >= 0 && DateTime.now().hour < 5 ? '-20' : DateTime.now().hour < 8 ? '-10' : '0'),
                    const SizedBox(width: 8),
                    _scorePill('⭐ Driver', '+10'),
                    const SizedBox(width: 8),
                    _scorePill('🛣️ Route', '-10'),
                  ]),
                ]),
              ),

              const SizedBox(height: 14),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(
                          builder: (_) => const PostRideScreen())),
                  icon: const Icon(Icons.add, color: Color(0xFF00B4D8)),
                  label: const Text('Post a Ride',
                      style: TextStyle(color: Color(0xFF00B4D8))),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF00B4D8)),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              const Text('What do you need?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.98,
                  children: [
                    _FeatureCard(
                        icon: '🚗',
                        title: 'Find a Ride',
                        subtitle: 'Share your journey',
                        color: const Color(0xFF1A2D3F),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const FindRideScreen()))),
                    _FeatureCard(
                        icon: '🚨',
                        title: 'SOS Alert',
                        subtitle: 'Emergency help',
                        color: const Color(0xFF3D1A1A),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SosScreen()))),
                    _FeatureCard(
                        icon: '📍',
                        title: 'Guardian Mode',
                        subtitle: 'Family tracking',
                        color: const Color(0xFF1A3D2B),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const GuardianScreen()))),
                    _FeatureCard(
                        icon: '🛣️',
                        title: 'Route Safety',
                        subtitle: 'Heatmap view',
                        color: const Color(0xFF2D2A1A),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const RouteScreen()))),
                    _FeatureCard(
                        icon: '🛡️',
                        title: 'Report Theft',
                        subtitle: 'Incident reporting',
                        color: const Color(0xFF2D1A3D),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                    const TheftReportScreen()))),
                    _FeatureCard(
                        icon: '📊',
                        title: 'Trip Summary',
                        subtitle: 'Safety report',
                        color: const Color(0xFF1A3D3D),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                    const TripSummaryScreen()))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _scorePill(String label, String val) => Container(
        padding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.14),
            borderRadius: BorderRadius.circular(20)),
        child: Text('$label $val',
            style:
                const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w600)),
      );

  void _showNotifications(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF1A2D3F),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Text('Notifications',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          _notifTile('🚗 Rahul S. confirmed your booking',
              'Amravati → Pune • 6:00 AM'),
          _notifTile('📍 Guardian Mode activated',
              'Mom & Dad notified of your trip'),
          _notifTile('✅ Trip completed safely', 'Score: 91/100'),
        ]),
      ),
    );
  }

  Widget _notifTile(String title, String sub) => Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            color: const Color(0xFF0D1B2A),
            borderRadius: BorderRadius.circular(12)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13)),
          const SizedBox(height: 4),
          Text(sub,
              style:
                  const TextStyle(color: Colors.white54, fontSize: 12)),
        ]),
      );
}

// ─── FEATURE CARD ───────────────────────────────────────
class _FeatureCard extends StatelessWidget {
  final Object icon;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback onTap;
  const _FeatureCard(
      {required this.icon,
      required this.title,
      required this.subtitle,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [color.withOpacity(0.95), color.withOpacity(0.78)],
            ),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: Colors.white10),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.22),
                blurRadius: 16,
                offset: const Offset(0, 10),
              ),
            ]),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: icon is IconData
                    ? Icon(icon as IconData, color: Colors.white, size: 24)
                    : Center(
                        child: Text(
                          '$icon',
                          style: const TextStyle(fontSize: 24),
                        ),
                      ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(subtitle,
                      style: const TextStyle(
                          color: Colors.white70, fontSize: 12, height: 1.35)),
                ],
              ),
            ]),
      ),
    );
  }
}

// ─── POST RIDE ──────────────────────────────────────────
class PostRideScreen extends StatefulWidget {
  const PostRideScreen({super.key});

  @override
  State<PostRideScreen> createState() => _PostRideScreenState();
}

class _PostRideScreenState extends State<PostRideScreen> {
  int selectedSeats = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF0D1B2A),
          title: const Text('Post a Ride',
              style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xFF0077B6), Color(0xFF00B4D8)]),
                borderRadius: BorderRadius.circular(12)),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your Driver Safety Score',
                      style:
                          TextStyle(color: Colors.white70, fontSize: 13)),
                  Text('91 / 100',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ]),
          ),
          const SizedBox(height: 24),
          _lbl('From'),
          _inp('Amravati'),
          const SizedBox(height: 14),
          _lbl('To'),
          _inp('Pune'),
          const SizedBox(height: 14),
          _lbl('Date & Time'),
          _inp('Tomorrow, 6:00 AM'),
          const SizedBox(height: 14),
          _lbl('Available Seats'),
          const SizedBox(height: 8),
          Row(
            children: List.generate(
              4,
              (i) => GestureDetector(
                onTap: () => setState(() => selectedSeats = i + 1),
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: selectedSeats == i + 1
                        ? const Color(0xFF00B4D8)
                        : const Color(0xFF1A2D3F),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: selectedSeats == i + 1
                            ? const Color(0xFF00B4D8)
                            : Colors.white12),
                  ),
                  child: Center(
                    child: Text('${i + 1}',
                        style: TextStyle(
                            color: selectedSeats == i + 1
                                ? Colors.white
                                : Colors.white54,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          _lbl('Price per seat (₹)'),
          _inp('₹ 350'),
          const SizedBox(height: 14),
          _lbl('Vehicle Number'),
          _inp('MH-31-AB-1234'),
          const SizedBox(height: 14),
          _lbl('Vehicle Type'),
          const SizedBox(height: 8),
          Row(children: [
            _vehicleChip('🚗 Car', true),
            _vehicleChip('🏍️ Bike', false),
            _vehicleChip('🚐 Van', false),
          ]),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: const Color(0xFF1A3D2B),
                borderRadius: BorderRadius.circular(12)),
            child: const Row(children: [
              Icon(Icons.verified, color: Colors.green, size: 20),
              SizedBox(width: 8),
              Expanded(
                  child: Text(
                      'Verified SGBAU Student — Higher trust score',
                      style:
                          TextStyle(color: Colors.green, fontSize: 13))),
            ]),
          ),
          const SizedBox(height: 28),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                        backgroundColor: const Color(0xFF1A2D3F),
                        title: const Text('Ride Posted! 🎉',
                            style: TextStyle(color: Colors.white)),
                        content: const Text(
                            'Amravati → Pune\nTomorrow 6:00 AM\n2 seats • ₹350\n\nYour ride is now visible to other students.',
                            style: TextStyle(color: Colors.white70)),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child: const Text('Done',
                                  style: TextStyle(
                                      color: Color(0xFF00B4D8))))
                        ],
                      )),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00B4D8),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: const Text('Post Ride →',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _lbl(String t) => Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(t,
          style:
              const TextStyle(color: Colors.white70, fontSize: 13)));

  Widget _inp(String v) => Container(
      width: double.infinity,
      padding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
          color: const Color(0xFF1A2D3F),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white12)),
      child: Text(v, style: const TextStyle(color: Colors.white)));

  Widget _vehicleChip(String label, bool selected) => Container(
        margin: const EdgeInsets.only(right: 8),
        padding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
            color: selected
                ? const Color(0xFF00B4D8)
                : const Color(0xFF1A2D3F),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: selected
                    ? const Color(0xFF00B4D8)
                    : Colors.white12)),
        child: Text(label,
            style: TextStyle(
                color: selected ? Colors.white : Colors.white54,
                fontSize: 13)),
      );
}

// ─── FIND RIDE ──────────────────────────────────────────
class FindRideScreen extends StatelessWidget {
  const FindRideScreen({super.key});

  final List<Map<String, dynamic>> rides = const [
    {
      'driver': 'Rahul S.',
      'from': 'Amravati',
      'to': 'Pune',
      'time': '6:00 AM',
      'seats': 2,
      'score': 91,
      'verified': true,
      'college': 'SGBAU',
      'price': '₹350',
      'rating': '4.9',
      'trips': '47'
    },
    {
      'driver': 'Priya M.',
      'from': 'Amravati',
      'to': 'Pune',
      'time': '7:30 AM',
      'seats': 1,
      'score': 85,
      'verified': true,
      'college': 'SGBAU',
      'price': '₹300',
      'rating': '4.7',
      'trips': '23'
    },
    {
      'driver': 'Vikram D.',
      'from': 'Amravati',
      'to': 'Nagpur',
      'time': '5:00 AM',
      'seats': 3,
      'score': 67,
      'verified': false,
      'college': '',
      'price': '₹200',
      'rating': '3.9',
      'trips': '8'
    },
  ];

  Color _sc(int s) =>
      s >= 85 ? Colors.green : s >= 70 ? Colors.orange : Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF0D1B2A),
          title: const Text('Find a Ride',
              style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                  color: const Color(0xFF1A2D3F),
                  borderRadius: BorderRadius.circular(12)),
              child: const Row(children: [
                Icon(Icons.search, color: Colors.white54),
                SizedBox(width: 8),
                Text('Amravati → Pune',
                    style: TextStyle(color: Colors.white70))
              ])),
          const SizedBox(height: 12),
          // Safety filter hint
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
                color: const Color(0xFF1A3D2B),
                borderRadius: BorderRadius.circular(10)),
            child: const Row(children: [
              Icon(Icons.shield, color: Colors.green, size: 16),
              SizedBox(width: 8),
              Text('Showing rides sorted by Safety Score',
                  style: TextStyle(color: Colors.green, fontSize: 12)),
            ]),
          ),
          const SizedBox(height: 16),
          const Text('Available Rides',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          Expanded(
              child: ListView.separated(
            itemCount: rides.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, i) {
              final r = rides[i];
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: const Color(0xFF1A2D3F),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white12)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                        Row(children: [
                          const CircleAvatar(
                              radius: 18,
                              backgroundColor: Color(0xFF00B4D8),
                              child: Icon(Icons.person,
                                  color: Colors.white, size: 18)),
                          const SizedBox(width: 10),
                          Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                            Row(children: [
                              Text(r['driver'],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              if (r['verified'])
                                const Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Icon(Icons.verified,
                                        color: Color(0xFF00B4D8),
                                        size: 14)),
                            ]),
                            Row(children: [
                              if (r['college'] != '')
                                Text(r['college'],
                                    style: const TextStyle(
                                        color: Colors.white54,
                                        fontSize: 11)),
                              if (r['college'] != '')
                                const Text(' • ',
                                    style: TextStyle(
                                        color: Colors.white38,
                                        fontSize: 11)),
                              Text('⭐ ${r['rating']} (${r['trips']} trips)',
                                  style: const TextStyle(
                                      color: Colors.white54,
                                      fontSize: 11)),
                            ]),
                          ]),
                        ]),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                              color: _sc(r['score'] as int)
                                  .withOpacity(0.2),
                              borderRadius:
                                  BorderRadius.circular(20)),
                          child: Text('${r['score']}/100',
                              style: TextStyle(
                                  color: _sc(r['score'] as int),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12)),
                        ),
                      ]),
                      const SizedBox(height: 12),
                      Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                        Text('${r['from']} → ${r['to']}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14)),
                        Text(r['time'],
                            style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 13)),
                      ]),
                      const SizedBox(height: 8),
                      Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                        Text('${r['seats']} seats left',
                            style: const TextStyle(
                                color: Colors.white54, fontSize: 12)),
                        Text(r['price'],
                            style: const TextStyle(
                                color: Color(0xFF00B4D8),
                                fontWeight: FontWeight.bold)),
                      ]),
                      const SizedBox(height: 12),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        const BookingConfirmScreen())),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color(0xFF00B4D8),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10))),
                            child: const Text('Book Ride',
                                style: TextStyle(color: Colors.white)),
                          )),
                    ]),
              );
            },
          )),
        ]),
      ),
    );
  }
}

// ─── BOOKING CONFIRM ────────────────────────────────────
class BookingConfirmScreen extends StatelessWidget {
  const BookingConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF0D1B2A),
          title: const Text('Booking Confirmed',
              style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(children: [
          const SizedBox(height: 20),
          Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.withOpacity(0.15),
                  border: Border.all(color: Colors.green, width: 3)),
              child: const Icon(Icons.check,
                  color: Colors.green, size: 52)),
          const SizedBox(height: 20),
          const Text('Ride Booked!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          const Text('Your journey is confirmed and safe',
              style: TextStyle(color: Colors.white54, fontSize: 14)),
          const SizedBox(height: 32),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: const Color(0xFF1A2D3F),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white12)),
            child: Column(children: [
              _r('Driver', 'Rahul S. ✓'),
              _r('From', 'Amravati'),
              _r('To', 'Pune'),
              _r('Time', 'Tomorrow, 6:00 AM'),
              _r('Seat', '#2'),
              _r('Price', '₹350'),
              _r('Vehicle', 'MH-31-AB-1234'),
              _r('Contact', '+91 99001 23456'),
              const Divider(color: Colors.white12, height: 24),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                const Text('Safety Score',
                    style: TextStyle(color: Colors.white54)),
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text('91/100 — Safe',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 12))),
              ]),
            ]),
          ),
          const SizedBox(height: 16),
          Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: const Color(0xFF1A3D2B),
                  borderRadius: BorderRadius.circular(12)),
              child: const Row(children: [
                Icon(Icons.shield, color: Colors.green, size: 20),
                SizedBox(width: 8),
                Expanded(
                    child: Text(
                        'Guardian Mode auto-enabled — Mom & Dad notified',
                        style: TextStyle(
                            color: Colors.green, fontSize: 13)))
              ])),
          const Spacer(),
          Row(children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const GuardianScreen())),
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF00B4D8)),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Text('View Guardian',
                    style: TextStyle(color: Color(0xFF00B4D8))),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const MainNavigation()),
                    (route) => false),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00B4D8),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Text('Back to Home',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ]),
        ]),
      ),
    );
  }

  Widget _r(String l, String v) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(l,
                style: const TextStyle(
                    color: Colors.white54, fontSize: 13)),
            Text(v,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13))
          ]));
}

// ─── SOS ────────────────────────────────────────────────
class SosScreen extends StatelessWidget {
  const SosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF0D1B2A),
          title: const Text('SOS Emergency',
              style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(children: [
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      backgroundColor: const Color(0xFF1A2D3F),
                      title: const Text('🚨 SOS Triggered!',
                          style: TextStyle(color: Colors.white)),
                      content: const Text(
                          'Alert sent to:\n• Mom (+91 98765 43210)\n• Dad (+91 91234 56789)\n• Nearest hospital\n• Driver details shared with police\n\nHelp is on the way!',
                          style: TextStyle(color: Colors.white70)),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancel SOS',
                                style: TextStyle(
                                    color: Colors.red))),
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK',
                                style: TextStyle(
                                    color: Color(0xFF00B4D8)))),
                      ],
                    )),
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red.shade900,
                  border: Border.all(color: Colors.red, width: 4),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.red.withOpacity(0.4),
                        blurRadius: 30,
                        spreadRadius: 10)
                  ]),
              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('🚨', style: TextStyle(fontSize: 48)),
                    Text('SOS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Text('Tap to Alert',
                        style: TextStyle(
                            color: Colors.white54, fontSize: 12)),
                  ]),
            ),
          ),
          const SizedBox(height: 20),
          // Quick actions
          Row(children: [
            Expanded(
                child: _quickAction(
                    Icons.call, 'Call 112', Colors.red, () {})),
            const SizedBox(width: 12),
            Expanded(
                child: _quickAction(Icons.share_location,
                    'Share Location', Colors.orange, () {})),
          ]),
          const SizedBox(height: 24),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('Nearby Hospitals',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))),
          const SizedBox(height: 12),
          _h('Yashwant General Hospital', '1.2 km', 'Open 24/7'),
          const SizedBox(height: 8),
          _h('Datta Meghe Hospital', '3.5 km', 'ER Available'),
          const SizedBox(height: 8),
          _h('Amravati Civil Hospital', '4.1 km', 'Open 24/7'),
        ]),
      ),
    );
  }

  Widget _quickAction(
          IconData icon, String label, Color color, VoidCallback onTap) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color.withOpacity(0.3))),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Icon(icon, color: color, size: 20),
            const SizedBox(width: 8),
            Text(label,
                style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
          ]),
        ),
      );

  Widget _h(String n, String d, String s) => Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            color: const Color(0xFF1A2D3F),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white12)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const Icon(Icons.local_hospital,
                    color: Colors.red, size: 20),
                const SizedBox(width: 10),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(n,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                  Text(s,
                      style: const TextStyle(
                          color: Colors.green, fontSize: 11))
                ])
              ]),
              Row(children: [
                Text(d,
                    style: const TextStyle(
                        color: Colors.white54, fontSize: 13)),
                const SizedBox(width: 8),
                const Icon(Icons.call, color: Color(0xFF00B4D8), size: 18),
              ]),
            ]),
      );
}

// ─── GUARDIAN ───────────────────────────────────────────
class GuardianScreen extends StatelessWidget {
  const GuardianScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF0D1B2A),
          title: const Text('Guardian Mode',
              style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: const Color(0xFF1A3D2B),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.green.shade900)),
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Icon(Icons.shield, color: Colors.green, size: 20),
                    SizedBox(width: 8),
                    Text('Guardian Mode Active',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold))
                  ]),
                  SizedBox(height: 8),
                  Text('Your family can see your live location',
                      style: TextStyle(
                          color: Colors.white70, fontSize: 13)),
                  SizedBox(height: 4),
                  Text('Last updated: Just now',
                      style: TextStyle(
                          color: Colors.white38, fontSize: 11)),
                ]),
          ),
          const SizedBox(height: 24),
          const Text('Trip Details',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: const Color(0xFF1A2D3F),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white12)),
            child: Column(children: [
              _i('From', 'Amravati'),
              _i('To', 'Pune'),
              _i('ETA', '4h 30min'),
              _i('Driver', 'Rahul S. ✓'),
              _i('Vehicle', 'MH-31-AB-1234'),
              _i('Status', '🟢 On Route'),
            ]),
          ),
          const SizedBox(height: 24),
          const Text('Guardians',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          _g('Mom', '+91 98765 43210', true),
          const SizedBox(height: 8),
          _g('Dad', '+91 91234 56789', true),
          const SizedBox(height: 8),
          _g('Friend (Ravi)', '+91 88001 23456', false),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.person_add,
                  color: Color(0xFF00B4D8), size: 18),
              label: const Text('Add Guardian',
                  style: TextStyle(color: Color(0xFF00B4D8))),
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF00B4D8)),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _i(String l, String v) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(l,
                style:
                    const TextStyle(color: Colors.white54)),
            Text(v,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold))
          ]));

  Widget _g(String n, String p, bool notified) => Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            color: const Color(0xFF1A2D3F),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white12)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const CircleAvatar(
                    radius: 18,
                    backgroundColor: Color(0xFF00B4D8),
                    child:
                        Icon(Icons.person, color: Colors.white, size: 18)),
                const SizedBox(width: 10),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(n,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Text(p,
                      style: const TextStyle(
                          color: Colors.white54, fontSize: 12))
                ])
              ]),
              Column(children: [
                Icon(
                    notified
                        ? Icons.check_circle
                        : Icons.pending,
                    color: notified ? Colors.green : Colors.orange,
                    size: 20),
                Text(notified ? 'Notified' : 'Pending',
                    style: TextStyle(
                        color: notified ? Colors.green : Colors.orange,
                        fontSize: 10)),
              ]),
            ]),
      );
}

// ─── ROUTE ──────────────────────────────────────────────
class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF0D1B2A),
          title: const Text('Route Safety',
              style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(children: [
            _d(Colors.green, 'Safe'),
            const SizedBox(width: 16),
            _d(Colors.orange, 'Moderate'),
            const SizedBox(width: 16),
            _d(Colors.red, 'High Risk')
          ]),
          const SizedBox(height: 16),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: const Color(0xFF1A2D3F),
                borderRadius: BorderRadius.circular(16)),
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const Text('Amravati → Pune',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              const SizedBox(height: 4),
              const Text('Total: 260 km • Est. 4h 30min',
                  style: TextStyle(color: Colors.white54, fontSize: 12)),
              const SizedBox(height: 20),
              _seg('Amravati → Wardha', Colors.green, '45 km',
                  'Safe — Highway NH-7'),
              _seg('Wardha → Nagpur Bypass', Colors.orange, '60 km',
                  'Moderate — Night risk'),
              _seg('Nagpur → Amravati Rd', Colors.green, '80 km',
                  'Safe — Well lit'),
              _seg('Ghats Section', Colors.red, '35 km',
                  'High Risk — Isolated'),
              _seg('Pune Outskirts', Colors.green, '40 km',
                  'Safe — Urban area'),
            ]),
          )),
          const SizedBox(height: 16),
          Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: const Color(0xFF1A3D2B),
                  borderRadius: BorderRadius.circular(12)),
              child: const Row(children: [
                Icon(Icons.info_outline,
                    color: Colors.green, size: 20),
                SizedBox(width: 8),
                Expanded(
                    child: Text(
                        '✅ System recommends 6:00 AM departure for safest travel',
                        style: TextStyle(
                            color: Colors.white70, fontSize: 13)))
              ])),
        ]),
      ),
    );
  }

  Widget _d(Color c, String l) => Row(children: [
        Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(color: c, shape: BoxShape.circle)),
        const SizedBox(width: 4),
        Text(l,
            style: const TextStyle(color: Colors.white70, fontSize: 12))
      ]);

  Widget _seg(String n, Color c, String d, String note) =>
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(children: [
            Container(
                width: 4,
                height: 50,
                decoration: BoxDecoration(
                    color: c, borderRadius: BorderRadius.circular(4))),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(n,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13)),
                Text('$d  •  $note',
                    style: const TextStyle(
                        color: Colors.white54, fontSize: 11))
              ]),
            )
          ]));
}

// ─── THEFT REPORT ───────────────────────────────────────
class TheftReportScreen extends StatefulWidget {
  const TheftReportScreen({super.key});

  @override
  State<TheftReportScreen> createState() => _TheftReportScreenState();
}

class _TheftReportScreenState extends State<TheftReportScreen> {
  String selectedType = 'Theft';
  final types = ['Theft', 'Accident', 'Harassment', 'Other'];
  bool photoAttached = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF0D1B2A),
          title: const Text('Report Incident',
              style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Incident type
          const Text('Incident Type',
              style: TextStyle(color: Colors.white70, fontSize: 13)),
          const SizedBox(height: 10),
          Wrap(
              spacing: 8,
              children: types
                  .map((t) => GestureDetector(
                        onTap: () =>
                            setState(() => selectedType = t),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: selectedType == t
                                ? const Color(0xFF00B4D8)
                                : const Color(0xFF1A2D3F),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: selectedType == t
                                    ? const Color(0xFF00B4D8)
                                    : Colors.white12),
                          ),
                          child: Text(t,
                              style: TextStyle(
                                  color: selectedType == t
                                      ? Colors.white
                                      : Colors.white54,
                                  fontSize: 13)),
                        ),
                      ))
                  .toList()),
          const SizedBox(height: 20),

          // Auto-filled info
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
                color: const Color(0xFF1A2D3F),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white12)),
            child: Column(children: [
              _infoRow(Icons.location_on, 'Location',
                  'NH-44, Near Wardha — Auto detected'),
              const Divider(color: Colors.white12),
              _infoRow(
                  Icons.access_time,
                  'Time',
                  '${DateTime.now().hour}:${DateTime.now().minute.toString().padLeft(2, '0')} — Just now'),
              const Divider(color: Colors.white12),
              _infoRow(Icons.directions_car, 'Vehicle',
                  'MH-31-AB-1234 (Rahul S.)'),
              const Divider(color: Colors.white12),
              _infoRow(Icons.receipt_long, 'Trip Log',
                  'Auto-attached from current trip'),
            ]),
          ),
          const SizedBox(height: 20),

          // Nearest police stations
          const Text('Nearest Police Stations',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          _policeStation(
              'Wardha Police Station', '2.1 km', '07152-242100'),
          const SizedBox(height: 8),
          _policeStation(
              'NH-44 Highway Patrol', '4.5 km', '07152-243200'),
          const SizedBox(height: 8),
          _policeStation(
              'Amravati City Police', '12.0 km', '0721-2662424'),
          const SizedBox(height: 20),

          // Evidence photo
          GestureDetector(
            onTap: () => setState(() => photoAttached = !photoAttached),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: photoAttached
                      ? const Color(0xFF1A3D2B)
                      : const Color(0xFF1A2D3F),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: photoAttached
                          ? Colors.green
                          : Colors.white12)),
              child: Column(children: [
                Icon(
                    photoAttached
                        ? Icons.check_circle
                        : Icons.camera_alt,
                    color: photoAttached
                        ? Colors.green
                        : const Color(0xFF00B4D8),
                    size: 32),
                const SizedBox(height: 8),
                Text(
                    photoAttached
                        ? 'Evidence Photo Attached ✓'
                        : 'Capture Evidence',
                    style: TextStyle(
                        color: photoAttached
                            ? Colors.green
                            : Colors.white,
                        fontWeight: FontWeight.bold)),
                const Text(
                    'Photo will be GPS tagged & timestamped',
                    style: TextStyle(
                        color: Colors.white54, fontSize: 12)),
              ]),
            ),
          ),
          const SizedBox(height: 20),

          // Generate FIR
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () => showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                        backgroundColor: const Color(0xFF1A2D3F),
                        title: const Text('FIR Draft Generated 📄',
                            style: TextStyle(color: Colors.white)),
                        content: Text(
                          'INCIDENT REPORT\n'
                          '━━━━━━━━━━━━━━━━━\n'
                          'Type: $selectedType\n'
                          'Date: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}\n'
                          'Time: ${DateTime.now().hour}:${DateTime.now().minute.toString().padLeft(2, '0')}\n'
                          'Location: NH-44, Near Wardha\n'
                          'Vehicle: MH-31-AB-1234\n'
                          'Driver: Rahul S.\n'
                          'Reported by: SGBAU Student\n'
                          'Evidence: ${photoAttached ? 'Photo attached' : 'None'}\n'
                          '━━━━━━━━━━━━━━━━━\n'
                          'Trip log attached automatically.',
                          style: const TextStyle(
                              color: Colors.white70, fontSize: 12),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Share',
                                  style: TextStyle(
                                      color: Color(0xFF00B4D8)))),
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Done',
                                  style: TextStyle(
                                      color: Colors.white54))),
                        ],
                      )),
              icon: const Icon(Icons.description, color: Colors.white),
              label: const Text('Generate FIR Draft',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0077B6),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () => ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(
                      content:
                          Text('📞 Calling Wardha Police Station...'),
                      backgroundColor: Colors.red)),
              icon: const Icon(Icons.call, color: Colors.white),
              label: const Text('Call Nearest Police',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade900,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _infoRow(IconData icon, String label, String value) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(children: [
          Icon(icon, color: const Color(0xFF00B4D8), size: 18),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text(label,
                  style: const TextStyle(
                      color: Colors.white54, fontSize: 11)),
              Text(value,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 13)),
            ]),
          ),
        ]),
      );

  Widget _policeStation(
          String name, String dist, String phone) =>
      Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            color: const Color(0xFF1A2D3F),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white12)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const Icon(Icons.local_police,
                    color: Color(0xFF00B4D8), size: 20),
                const SizedBox(width: 10),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                  Text(phone,
                      style: const TextStyle(
                          color: Colors.white54, fontSize: 11)),
                ]),
              ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                Text(dist,
                    style: const TextStyle(
                        color: Colors.white54, fontSize: 13)),
                const Icon(Icons.call,
                    color: Color(0xFF00B4D8), size: 16),
              ]),
            ]),
      );
}

// ─── TRIP SUMMARY ───────────────────────────────────────
class TripSummaryScreen extends StatelessWidget {
  const TripSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF0D1B2A),
          title: const Text('Trip Summary',
              style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            IconButton(
              icon: const Icon(Icons.share, color: Color(0xFF00B4D8)),
              onPressed: () => ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(
                      content: Text('📤 Sharing trip summary...'),
                      backgroundColor: Color(0xFF00B4D8))),
            )
          ]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(children: [
          // Safe badge
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xFF1A3D2B), Color(0xFF0F6E56)]),
                borderRadius: BorderRadius.circular(16)),
            child: const Column(children: [
              Text('✅', style: TextStyle(fontSize: 48)),
              SizedBox(height: 8),
              Text('You were safe.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text('No anomalies detected during your journey.',
                  style: TextStyle(
                      color: Colors.white70, fontSize: 13)),
            ]),
          ),
          const SizedBox(height: 24),

          // Trip score
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xFF0077B6), Color(0xFF00B4D8)]),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const Text('Trip Safety Score',
                  style:
                      TextStyle(color: Colors.white70, fontSize: 13)),
              const SizedBox(height: 8),
              const Text('91 / 100',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold)),
              const Text(
                  'Safe Journey — Daytime Travel, Verified Driver',
                  style: TextStyle(
                      color: Colors.white70, fontSize: 12)),
              const SizedBox(height: 12),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: const LinearProgressIndicator(
                      value: 0.91,
                      minHeight: 8,
                      backgroundColor: Colors.white24,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.white))),
            ]),
          ),
          const SizedBox(height: 20),

          // Score breakdown
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: const Color(0xFF1A2D3F),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white12)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const Text('Score Breakdown',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              const SizedBox(height: 12),
              _scoreRow('Driver Rating', '+35', Colors.green),
              _scoreRow('Travel Time (Day)', '+25', Colors.green),
              _scoreRow('Route Safety', '+20', Colors.green),
              _scoreRow('Verified Driver', '+11', Colors.green),
              _scoreRow('Night Penalty', '-0', Colors.white54),
              const Divider(color: Colors.white12, height: 20),
              _scoreRow('Total', '91/100', const Color(0xFF00B4D8)),
            ]),
          ),
          const SizedBox(height: 20),

          // Trip details
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: const Color(0xFF1A2D3F),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white12)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              const Text('Trip Details',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              const SizedBox(height: 12),
              _tr('From', 'Amravati'),
              _tr('To', 'Pune'),
              _tr('Driver', 'Rahul S. ✓'),
              _tr('Vehicle', 'MH-31-AB-1234'),
              _tr('Duration', '4h 28min'),
              _tr('Distance', '260 km'),
              _tr('Departed', '6:00 AM'),
              _tr('Arrived', '10:28 AM'),
              _tr('Fare Paid', '₹350'),
            ]),
          ),
          const SizedBox(height: 20),

          // Alerts
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
                color: const Color(0xFF1A3D2B),
                borderRadius: BorderRadius.circular(12)),
            child: const Row(children: [
              Icon(Icons.check_circle,
                  color: Colors.green, size: 20),
              SizedBox(width: 8),
              Expanded(
                  child: Text(
                      'No SOS triggered. No incidents reported. Guardian notified on arrival.',
                      style: TextStyle(
                          color: Colors.green, fontSize: 13))),
            ]),
          ),
          const SizedBox(height: 20),

          Row(children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(
                        content: Text('📤 Sharing safety report...'),
                        backgroundColor: Color(0xFF00B4D8))),
                icon: const Icon(Icons.share,
                    color: Color(0xFF00B4D8), size: 18),
                label: const Text('Share Report',
                    style: TextStyle(color: Color(0xFF00B4D8))),
                style: OutlinedButton.styleFrom(
                    side:
                        const BorderSide(color: Color(0xFF00B4D8)),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const MainNavigation()),
                    (r) => false),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00B4D8),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Text('Back to Home',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ]),
        ]),
      ),
    );
  }

  Widget _scoreRow(String label, String pts, Color c) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label,
                style: const TextStyle(
                    color: Colors.white70, fontSize: 13)),
            Text(pts,
                style: TextStyle(
                    color: c,
                    fontWeight: FontWeight.bold,
                    fontSize: 13))
          ]));

  Widget _tr(String l, String v) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(l,
                style: const TextStyle(
                    color: Colors.white54, fontSize: 13)),
            Text(v,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13))
          ]));
}

// ─── PROFILE ────────────────────────────────────────────
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF0D1B2A),
          title: const Text('Profile',
              style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(children: [
          // Avatar + name
          const CircleAvatar(
              radius: 44,
              backgroundColor: Color(0xFF00B4D8),
              child: Text('D',
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
          const SizedBox(height: 12),
          const Text('Devanshu Raut',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const Text('SGBAU University, Amravati',
              style: TextStyle(color: Colors.white54, fontSize: 13)),
          const SizedBox(height: 8),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.green.withOpacity(0.4))),
            child: const Row(mainAxisSize: MainAxisSize.min, children: [
              Icon(Icons.verified, color: Colors.green, size: 14),
              SizedBox(width: 4),
              Text('Verified Student',
                  style: TextStyle(color: Colors.green, fontSize: 12)),
            ]),
          ),
          const SizedBox(height: 24),

          // Stats row
          Row(children: [
            _statCard('12', 'Total Trips'),
            const SizedBox(width: 12),
            _statCard('88', 'Avg Score'),
            const SizedBox(width: 12),
            _statCard('4.9★', 'Rating'),
          ]),
          const SizedBox(height: 20),

          // Info tiles
          _profileTile(Icons.phone, 'Phone', '+91 98765 43210'),
          _profileTile(Icons.school, 'College', 'SGBAU University'),
          _profileTile(
              Icons.location_city, 'City', 'Amravati, Maharashtra'),
          _profileTile(
              Icons.calendar_today, 'Member Since', 'April 2025'),
          const SizedBox(height: 20),

          // Safety history
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: const Color(0xFF1A2D3F),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white12)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const Text('Safety Score History',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              const SizedBox(height: 12),
              _historyRow('Amravati → Pune', '91/100', Colors.green),
              _historyRow('Pune → Mumbai', '88/100', Colors.green),
              _historyRow('Amravati → Nagpur', '74/100',
                  Colors.orange),
              _historyRow(
                  'Nagpur → Amravati', '95/100', Colors.green),
            ]),
          ),
          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const LoginScreen()),
                  (route) => false),
              icon:
                  const Icon(Icons.logout, color: Colors.red, size: 18),
              label: const Text('Logout',
                  style: TextStyle(color: Colors.red)),
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.red),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _statCard(String val, String label) => Expanded(
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
              color: const Color(0xFF1A2D3F),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white12)),
          child: Column(children: [
            Text(val,
                style: const TextStyle(
                    color: Color(0xFF00B4D8),
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(label,
                style: const TextStyle(
                    color: Colors.white54, fontSize: 11)),
          ]),
        ),
      );

  Widget _profileTile(IconData icon, String label, String value) =>
      Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            color: const Color(0xFF1A2D3F),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white12)),
        child: Row(children: [
          Icon(icon, color: const Color(0xFF00B4D8), size: 18),
          const SizedBox(width: 12),
          Text(label,
              style: const TextStyle(color: Colors.white54)),
          const Spacer(),
          Text(value,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ]),
      );

  Widget _historyRow(String trip, String score, Color color) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(trip,
                  style: const TextStyle(
                      color: Colors.white70, fontSize: 13)),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                    color: color.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12)),
                child: Text(score,
                    style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 12)),
              ),
            ]),
      );
}
