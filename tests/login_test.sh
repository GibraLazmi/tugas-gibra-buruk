#!/bin/bash
set -e

echo "=== Login Test: Checking Login System Files ==="

# Check folder login exists
[ -d "lib/login" ] && echo "✓ login folder found" || { echo "✗ login folder missing"; exit 1; }

# Test UI file
[ -f "lib/login/login_page.dart" ] && echo "✓ login_page.dart exists" || { echo "✗ login_page.dart missing"; exit 1; }

# Test controller
[ -f "lib/login/login_controller.dart" ] && echo "✓ login_controller.dart exists" || { echo "✗ login_controller.dart missing"; exit 1; }

# Test API service
[ -f "lib/login/login_service.dart" ] && echo "✓ login_service.dart exists" || { echo "✗ login_service.dart missing"; exit 1; }

# Test endpoints file
grep -q "http" lib/login/login_service.dart && echo "✓ service contains API endpoint" || echo "⚠ Warning: No endpoint detected"

echo "✓ Login tests completed!"
