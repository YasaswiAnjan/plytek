#!/bin/bash

# PlyTek Website Local Server Script
# This script starts a local web server to view the PlyTek website

echo "🚀 Starting PlyTek Website Local Server..."
echo "=================================="

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    echo "✅ Python 3 found - Starting server..."
    echo "🌐 Website will be available at: http://localhost:8000"
    echo "📱 Mobile testing: Use your computer's IP address"
    echo ""
    echo "Press Ctrl+C to stop the server"
    echo "=================================="
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    echo "✅ Python 2 found - Starting server..."
    echo "🌐 Website will be available at: http://localhost:8000"
    echo "📱 Mobile testing: Use your computer's IP address"
    echo ""
    echo "Press Ctrl+C to stop the server"
    echo "=================================="
    python -m SimpleHTTPServer 8000
elif command -v php &> /dev/null; then
    echo "✅ PHP found - Starting server..."
    echo "🌐 Website will be available at: http://localhost:8000"
    echo "📱 Mobile testing: Use your computer's IP address"
    echo ""
    echo "Press Ctrl+C to stop the server"
    echo "=================================="
    php -S localhost:8000
else
    echo "❌ No suitable server found!"
    echo ""
    echo "Please install one of the following:"
    echo "  - Python 3: python3 -m http.server 8000"
    echo "  - Python 2: python -m SimpleHTTPServer 8000"
    echo "  - PHP: php -S localhost:8000"
    echo "  - Node.js: npx serve ."
    echo ""
    echo "Or simply open index.html directly in your browser."
    exit 1
fi