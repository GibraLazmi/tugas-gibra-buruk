#!/bin/bash
set -e

echo "=== Smoke Test: Checking Basic Project Structure ==="

# Check essential folders
echo "Checking required directories..."
[ -d "assets" ] && echo "✓ assets folder found" || { echo "✗ assets folder missing"; exit 1; }
[ -d "lib" ] && echo "✓ lib folder found" || { echo "✗ lib folder missing"; exit 1; }

# Check required files
echo "Checking required files..."
[ -f "lib/main.dart" ] && echo "✓ main.dart found" || { echo "✗ main.dart missing"; exit 1; }
[ -f "pubspec.yaml" ] && echo "✓ pubspec.yaml found" || { echo "✗ pubspec.yaml missing"; exit 1; }

echo "✓ Smoke test completed successfully!"
