import 'package:flutter/material.dart';
//import 'item.dart';

class VegetablesPage extends StatefulWidget {
  const VegetablesPage({super.key});

  @override
  State<VegetablesPage> createState() => _VegetablesPageState();
}

class _VegetablesPageState extends State<VegetablesPage> {
  int _selectedIndex = 0;
  int _selectedChip = 0;

  @override
  Widget build(BuildContext context) {
    // Responsive spacing based on screen size
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = screenSize.width * 0.04; // ~16px on 400px width
    final double smallGap = screenSize.width * 0.02; // ~8px on 400px width
    final double mediumGap = screenSize.width * 0.03; // ~12px on 400px width
    final double inputVerticalPadding = screenSize.height * 0.017; // ~14px on ~820px height
    final double cardPadding = screenSize.width * 0.03; 
     final double chipsize = screenSize.height * 0.07; // ~12px on 400px width
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F7),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Padding(
              padding: EdgeInsets.fromLTRB(horizontalPadding, smallGap, horizontalPadding, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.arrow_back, color: Color(0xFF331B6D)),
                  ),
                  SizedBox(width: smallGap),
                  const Text(
                    'Vegetables',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF331B6D),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: mediumGap),
            // Search
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Color(0xFF331B6D)),
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: inputVerticalPadding),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: const BorderSide(color: Color(0xFFD1D5DB)),
                  ),
                ),
              ),
            ),
            SizedBox(height: mediumGap),
            // Filter chips
            SizedBox(
              height: chipsize,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Row(
                  children: [
                    _FilterChip(
                      label: 'Cabbage and lettuce (14)',
                      isSelected: _selectedChip == 0,
                      onTap: () => setState(() => _selectedChip = 0),
                    ),
                    SizedBox(width: smallGap),
                    _FilterChip(
                      label: 'Cucumbers and tomato',
                      isSelected: _selectedChip == 1,
                      onTap: () => setState(() => _selectedChip = 1),
                    ),
                    SizedBox(width: smallGap),
                    _FilterChip(
                      label: 'Onions and garlic (8)',
                      isSelected: _selectedChip == 2,
                      onTap: () => setState(() => _selectedChip = 2),
                    ),
                    SizedBox(width: smallGap),
                    _FilterChip(
                      label: 'Peppers (7)',
                      isSelected: _selectedChip == 3,
                      onTap: () => setState(() => _selectedChip = 3),
                    ),
                    SizedBox(width: smallGap),
                    _FilterChip(
                      label: 'Potatoes and ca',
                      isSelected: _selectedChip == 4,
                      onTap: () => setState(() => _selectedChip = 4),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: mediumGap),
            // Product list
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                children: [
                  _ProductCard(
                    imageUrl: 'https://images.unsplash.com/photo-1580792442222-081d7796d896?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    name: 'Boston Lettuce',
                    price: '1.10 € / piece',
                    onTap: () {
                      /*
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ItemPage(
                            itemName: 'Boston Lettuce',
                            itemPrice: '1.10 € / piece',
                            itemImage: 'https://picsum.photos/400/400?random=1',
                          ),
                        ),
                      );

*/

                    },
                  ),
                  SizedBox(height: mediumGap),
                  _ProductCard(
                    imageUrl: 'https://plus.unsplash.com/premium_photo-1675365837002-1c4cd601e74f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    name: 'Purple Cauliflower',
                    price: '1.85 € / kg',
                  ),
                  SizedBox(height: mediumGap),
                  _ProductCard(
                    imageUrl: 'https://images.unsplash.com/photo-1551947392-a8c57f288381?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    name: 'Savoy Cabbage',
                    price: '1.45 € / kg',
                  ),
                     SizedBox(height: mediumGap),
                                    _ProductCard(
                    imageUrl: 'https://images.unsplash.com/photo-1655558132738-8a4f5124186f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    name: 'Carrots',
                    price: '1.45 € / kg',
                  ),
                ],r
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: (idx) => setState(() => _selectedIndex = idx),
          selectedItemColor: const Color(0xFF6B46C1),
          unselectedItemColor: const Color(0xFF9CA3AF),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
          ],
        ),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _FilterChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double smallGap = screenSize.width * 0.02; // ~8px on 400px width
    final double mediumGap = screenSize.width * 0.03; // ~12px on 400px width
    final double xSmallGap = screenSize.width * 0.05; // ~4px on 400px width
    final List<String> parts = label.split(RegExp(r"\s+"));
    final String initials = parts.take(2).map((w) => w.isNotEmpty ? w[0] : '').join().toUpperCase();
    return ChoiceChip(
   
      label: Text(
        label,
        style: TextStyle(
          color: isSelected ? const Color(0xFF6C0EE4) : const Color(0xFF6B7280),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: isSelected,
      onSelected: (_) => onTap(),
      backgroundColor: const Color(0xFFF3F4F6),
      selectedColor: const Color(0xFFE2CBFF),
      labelPadding: EdgeInsets.symmetric(horizontal: mediumGap, vertical: smallGap),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      pressElevation: 0,
    );
  }
}

class _ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final VoidCallback? onTap;

  const _ProductCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Responsive spacing for product card
    final Size screenSize = MediaQuery.of(context).size;
    final double smallGap = screenSize.width * 0.02; // ~8px on 400px width
    final double mediumGap = screenSize.width * 0.03; // ~12px on 400px width
    final double cardPadding = screenSize.width * 0.03; 
    final double imageWidth = screenSize.width * 0.5; 
    final double imageHeight = screenSize.width * 0.3;// ~12px on 400px width
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: EdgeInsets.all(cardPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: imageWidth,
                  height: imageWidth,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image, color: Colors.grey),
                );
              },
            ),
          ),
          SizedBox(width: mediumGap),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF331B6D),
                  ),
                ),
                SizedBox(height: smallGap),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF6B46C1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: smallGap),
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFE5E7EB)),
                      ),
                      child: const Icon(
                        Icons.favorite_border,
                        color: Color(0xFF9CA3AF),
                        size: 16,
                      ),
                    ),
                    SizedBox(width: smallGap),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ],
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