# 🎬 YouTube Downloader Menu (Batch Script)

An interactive Windows batch tool to download YouTube videos and audio easily using **yt-dlp** and **FFmpeg** — no Python setup required!

Developed by **Vishal Raja**  
📂 GitHub: [github.com/vishalrajal](https://github.com/vishalrajal)

---

## 🚀 Features

✅ Interactive menu with multiple options  
✅ Choose between:
- Full video with audio (best quality)
- Audio-only (MP3 / M4A)
- Video-only (no audio)
- Custom quality selection (choose resolution manually)  
✅ Option to choose **download folder** for each operation  
✅ Automatically merges video + audio (thanks to FFmpeg)  
✅ Saves with proper YouTube video titles

---

## 🧰 Requirements

Before running the script, make sure you have these installed:

### 1. yt-dlp
Download from the official site:  
👉 [https://github.com/yt-dlp/yt-dlp/releases](https://github.com/yt-dlp/yt-dlp/releases)

After downloading:
- Place `yt-dlp.exe` in a folder like `C:\yt-dlp`
- Add that folder to your **System PATH**

### 2. FFmpeg
Download from:  
👉 [https://www.gyan.dev/ffmpeg/builds/](https://www.gyan.dev/ffmpeg/builds/)

Steps:
1. Download the “**full build**” ZIP
2. Extract it to `C:\`
3. Rename the folder to `ffmpeg`
4. Add `C:\ffmpeg\bin` to your **System PATH**

To verify:
```bash
yt-dlp --version
ffmpeg -version

## 🏆 Credits

💬 This batch script uses the open-source tools:
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [FFmpeg](https://ffmpeg.org/)
