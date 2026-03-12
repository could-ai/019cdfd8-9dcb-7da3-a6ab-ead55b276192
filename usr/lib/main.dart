import 'package:flutter/material.dart';

void main() {
  runApp(const ClassicalPresentationApp());
}

class ClassicalPresentationApp extends StatelessWidget {
  const ClassicalPresentationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classical Presentation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF722F37), // Wine / Burgundy
          primary: const Color(0xFF722F37),
          secondary: const Color(0xFFD4AF37), // Metallic Gold
          surface: const Color(0xFFFAF0E6), // Linen
        ),
        scaffoldBackgroundColor: const Color(0xFFFAF0E6),
        // Using a serif font family to give it a classical book/manuscript feel
        fontFamily: 'Georgia', 
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Color(0xFF2C1D11), fontWeight: FontWeight.bold, letterSpacing: 1.5),
          headlineMedium: TextStyle(color: Color(0xFF2C1D11), fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(color: Color(0xFF3E2723), fontSize: 18, height: 1.8),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ClassicalHomeScreen(),
      },
    );
  }
}

class ClassicalHomeScreen extends StatelessWidget {
  const ClassicalHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // A radial gradient to simulate the look of aged parchment or classical paper
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xFFFFF8DC), // Cornsilk center
              Color(0xFFF5DEB3), // Wheat
              Color(0xFFD2B48C), // Tan edges
            ],
            radius: 1.2,
            center: Alignment.center,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Ornate top decoration
                    const Icon(
                      Icons.auto_awesome,
                      size: 40,
                      color: Color(0xFFD4AF37),
                    ),
                    const SizedBox(height: 16),
                    // Main Title Card
                    Container(
                      padding: const EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFAF0E6).withOpacity(0.85),
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: const Color(0xFF722F37),
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Opus\nPresentationis',
                            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              fontSize: 42,
                              height: 1.2,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: const Offset(2, 2),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          Container(
                            height: 2,
                            width: 100,
                            color: const Color(0xFFD4AF37),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Awaiting your manuscript.\n\nUpload your presentation content, and we shall transform it into a timeless masterpiece.',
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 48),
                    // Action Button
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please upload your PPT text, images, or PDF in the chat!'),
                            backgroundColor: Color(0xFF722F37),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF722F37),
                        foregroundColor: const Color(0xFFFAF0E6),
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Sharp, classical corners
                          side: const BorderSide(color: Color(0xFFD4AF37), width: 2), // Gold border
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.menu_book, color: Color(0xFFD4AF37)),
                          SizedBox(width: 16),
                          Text(
                            'PROVIDE MANUSCRIPT',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
