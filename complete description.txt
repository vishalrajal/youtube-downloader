# 🎬 YouTube Downloader (yt-dlp + FFmpeg for Windows)

An easy-to-use YouTube downloader menu for Windows, powered by [`yt-dlp`](https://github.com/yt-dlp/yt-dlp) and [`FFmpeg`](https://ffmpeg.org/).  
This batch script lets you:

✅ Download full videos (with audio)  
🎵 Extract audio only (MP3)  
🎬 Save video only (no audio)  
⚙️ Choose custom quality (merge video + audio manually)

---

## 📦 Requirements

Before using this script, install these free tools:

### 1️. Install yt-dlp
Option 1: Using pip (recommended)
👉Cmd: pip install -U yt-dlp
Option 2: Manual Downloading
Download the latest yt-dlp.exe from:
👉 https://github.com/yt-dlp/yt-dlp/releases/latest
👉Place it in C:\Windows\System32 or any folder in your PATH.

### 2️. Install FFmpeg
Download FFmpeg full build (Windows) from:
👉 https://www.gyan.dev/ffmpeg/builds/
👉Extract it (you’ll get a folder like ffmpeg-2025-xx-xx-full_build)
👉Rename the folder to ffmpeg
👉Move it to: C:\ffmpeg
👉Add C:\ffmpeg\bin to your System PATH:

### 3. Environmental Path Adding
Search “Edit the system environment variables”
👉Click Environment Variables
👉Under System variables, find Path → Edit → New → C:\ffmpeg\bin

Open a new Command Prompt and test:
👉ffmpeg -version
👉yt-dlp --version
Both should show version info ✅

### 4. Setup the Script

👉Open Notepad
👉Paste the full batch code from yt-downloader.bat
👉Save as: yt-downloader.bat

## 🏆 Credits

💬 This batch script uses the open-source tools:
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [FFmpeg](https://ffmpeg.org/)
