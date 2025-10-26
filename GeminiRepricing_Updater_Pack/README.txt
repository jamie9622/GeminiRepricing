DROP-IN UPDATER PACK — Gemini Repricing

Repo: https://github.com/jamie9622/GeminiRepricing
Appcast URL (paste into your code for APPCAST_URL):
  https://raw.githubusercontent.com/jamie9622/GeminiRepricing/main/updates/appcast.json

Release asset URL template for v1.1.4:
  https://github.com/jamie9622/GeminiRepricing/releases/download/v1.1.4/GeminiRepricing-Setup-1.1.4.exe

WHAT TO DO (browser-only):

1) Create a GitHub Release
   - Go to your repo > Releases > Draft a new release
   - Tag: v1.1.4
   - Title: 1.1.4
   - Upload your installer named exactly: GeminiRepricing-Setup-1.1.4.exe
   - Publish the release

2) Compute SHA-256 and file size (Windows)
   - Save this ZIP locally and extract it
   - Open Command Prompt in the extracted folder
   - Run:
       verify_hash.bat "C:\path\to\GeminiRepricing-Setup-1.1.4.exe"
   - Copy the printed "size" and "sha256" values

3) Edit appcast.json
   - Open updates\appcast.json in a text editor
   - Paste the size and sha256 values
   - Save the file

4) Add these files to your GitHub repo
   - In GitHub (browser): open GeminiRepricing > Add file > Upload files
   - Upload the "updates/appcast.json" file (keep the same path)
   - Commit to main

5) Point your app to the appcast
   In your code set:
       static const QUrl APPCAST_URL("https://raw.githubusercontent.com/jamie9622/GeminiRepricing/main/updates/appcast.json");

NEXT VERSION (example v1.1.5)
   - Build and upload "GeminiRepricing-Setup-1.1.5.exe" to a new Release with tag v1.1.5
   - Update updates\appcast.json:
       "latest": "1.1.5"
       "installer.url": https://github.com/jamie9622/GeminiRepricing/releases/download/v1.1.5/GeminiRepricing-Setup-1.1.5.exe
       "size": <bytes>, "sha256": "<hash>"
   - Commit the file
