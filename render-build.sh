#!/usr/bin/env bash
# Render.com Build Script - Install Required Tools

echo "🔧 Installing system dependencies..."

# Install yt-dlp
echo "📥 Installing yt-dlp..."
pip install --upgrade yt-dlp

# Install aria2
echo "📥 Installing aria2..."
apt-get update && apt-get install -y aria2

# Install ffmpeg
echo "📥 Installing ffmpeg..."
apt-get install -y ffmpeg

# Verify installations
echo ""
echo "✅ Verifying installations..."
which yt-dlp && yt-dlp --version
which ffmpeg && ffmpeg -version 2>&1 | head -1
which aria2c && aria2c --version | head -1

# Install Node.js dependencies
echo ""
echo "📦 Installing npm packages..."
npm install

echo ""
echo "🎉 Build complete!"
