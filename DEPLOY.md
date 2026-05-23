# Deploying to GitHub Pages

Your live URL will be: https://swisbuilds.github.io/lock-in

## First time setup (5 minutes)

1. Go to https://github.com/new
2. Name the repo: `lock-in`
3. Set it to Public
4. Click Create repository

5. Open a terminal in this `landing-page/` folder and run:

```
git init
git add .
git commit -m "Launch Lock In landing page"
git branch -M main
git remote add origin https://github.com/swisbuilds/lock-in.git
git push -u origin main
```

6. On GitHub, go to your repo → Settings → Pages
7. Under "Source" select: Deploy from a branch → main → / (root)
8. Click Save — your site will be live in ~60 seconds

## Adding the Monetag verification code

1. Log into monetag.com → Publishers → My Sites → Add Site
2. Enter: https://swisbuilds.github.io/lock-in
3. Monetag will give you a verification code (looks like a random string)
4. Open index.html and find this line near the top:

   <meta name="monetag" content="PASTE_YOUR_MONETAG_VERIFICATION_CODE_HERE" />

5. Replace PASTE_YOUR_MONETAG_VERIFICATION_CODE_HERE with your code
6. Save, commit, and push:

```
git add index.html
git commit -m "Add Monetag verification"
git push
```

7. Wait ~60 seconds for GitHub Pages to redeploy, then click Verify in Monetag

## Updating the Chrome Web Store link

Once your extension is published, find this line in index.html:

  href="https://chrome.google.com/webstore"

Replace it with your actual Chrome Web Store URL.
