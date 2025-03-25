import 'package:flutter/material.dart';

// CustomBottomNavigationBar is a reusable, fully customizable bottom navigation bar widget
// It allows for different customization options for selected and unselected states, as well as an indicator animation.
class IndicatorBottomNavigationbar extends StatelessWidget {
  // The currently selected index in the navigation bar
  final int currentIndex;

  // The function that gets called when a bottom navigation item is tapped
  final Function(int) onTap;

  // A list of IconLabel objects which define the icons and their associated labels
  final List<IconLabel> iconLabels;

  // Color for the selected item (default is blue)
  final Color selectedItemColor;

  // Color for unselected items (default is black with some transparency)
  final Color unselectedItemColor;

  // Background color for the bottom navigation bar (default is white)
  final Color backgroundColor;

  // Height of the indicator that appears below the selected icon
  final double indicatorHeight;

  // Width of the indicator when an item is selected
  final double indicatorWidth;

  // Constructor allows customization of all parameters, with default values for selected/unselected colors and other properties
  const IndicatorBottomNavigationbar({
    Key? key,
    required this.currentIndex, // The current index will determine which item is selected
    required this.onTap, // This callback is triggered when an item is tapped
    required this.iconLabels, // List of IconLabel objects defining the items
    this.selectedItemColor = Colors.blue, // Default color for selected items
    this.unselectedItemColor = Colors.black54, // Default color for unselected items
    this.backgroundColor = Colors.white, // Default background color
    this.indicatorHeight = 2.5, // Default height for the indicator
    this.indicatorWidth = 70, // Default width for the indicator when selected
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Return a BottomNavigationBar widget that is customized according to the given parameters
    return BottomNavigationBar(
      currentIndex: currentIndex, // The index of the currently selected item
      onTap: onTap, // The callback when an item is tapped
      items: iconLabels
          .map((iconLabel) =>
              _item(iconLabel, iconLabels.indexOf(iconLabel) == currentIndex)) // Generate BottomNavigationBarItems
          .toList(),
      showSelectedLabels: true, // Always show the label for the selected item
      showUnselectedLabels: true, // Always show the label for unselected items
      selectedItemColor: selectedItemColor, // Set the color of the selected item
      unselectedItemColor: unselectedItemColor, // Set the color of unselected items
      backgroundColor: backgroundColor, // Set the background color of the BottomNavigationBar
    );
  }

  // Helper method to create each item in the BottomNavigationBar
  BottomNavigationBarItem _item(IconLabel iconLabel, bool selected) {
    return BottomNavigationBarItem(
      backgroundColor: backgroundColor, // Background color for each item
      icon: Column(
        mainAxisSize: MainAxisSize.min, // Ensure the icon and indicator are aligned vertically
        children: [
          _indicator(selected), // Show indicator based on whether the item is selected
          Icon(
            iconLabel.icon, // The icon that appears for the item
            color: selected ? selectedItemColor : unselectedItemColor, // Set icon color based on selection
          ),
        ],
      ),
      label: iconLabel.label, // The label that appears below the icon
    );
  }

  // A method that creates the animated indicator (a line that appears beneath the selected item)
  Widget _indicator(bool selected) {
    // If selected, set the color of the indicator to the selected item color, otherwise make it transparent
    Color color = selected ? selectedItemColor : Colors.transparent; 

    return Padding(
      padding: const EdgeInsets.all(8.0), // Padding around the indicator
      child: AnimatedContainer(
        height: indicatorHeight, // The fixed height of the indicator
        width: selected ? indicatorWidth : 0, // If selected, the indicator will have a width; otherwise, it will be invisible
        duration: const Duration(seconds: 1), // Smooth animation duration for width change
        decoration: BoxDecoration(
          color: color, // Set the indicator's color based on selection
          boxShadow: [
            BoxShadow(
              color: color, // Set the shadow color to match the indicator's color
              blurRadius: 2.25, // Slight blur effect for the shadow
              spreadRadius: 0, // No spread for the shadow
            ),
          ],
        ),
      ),
    );
  }
}

// This class represents the combination of an icon and a label for a bottom navigation item
// It holds the IconData for the icon and a String for the label that appears below it
class IconLabel {
  final IconData icon; // The icon data (e.g., Icons.home)
  final String label; // The label text that appears under the icon

  // Constructor to initialize the icon and label
  IconLabel(this.icon, this.label);
}
