+++
date = '2025-01-30T12:07:24+05:30'
title = 'Hugo Made Easy: Install, Theme:PaperMod'
author = 'Karthi Raja'
tags = ['Hugo', 'Theme', 'PaperMod', 'GitHub Pages']
categories = ['Tech', 'Tutorial']
email = 'karthikraja@gmail.com'
+++

# Hugo Made Easy: Install, Theme: PaperMod

Hugo is a powerful static site generator that allows you to create fast, customizable websites with ease. In this guide, we’ll walk through installing Hugo, setting up the PaperMod theme, and running the site locally.

---

## 1. Install Hugo (Extended Version)

### **Windows**

#### **Using Chocolatey (Recommended)**

```powershell
choco install hugo-extended -y
```

#### **Manual Installation**

1. Download the latest **Hugo Extended** version from [GitHub Releases](https://github.com/gohugoio/hugo/releases).
2. Extract the archive and place `hugo.exe` in a folder within your system PATH (e.g., `C:\Program Files\Hugo`).
3. Verify installation:
   ```powershell
   hugo version
   ```

### **MacOS**

```sh
brew install hugo
```

### **Linux (Debian/Ubuntu)**

```sh
sudo apt update && sudo apt install hugo
```

Verify the installation:

```sh
hugo version
```

Ensure you see **Extended** in the version output.

---

## 2. Create a New Hugo Site

```sh
hugo new site myblog
cd myblog
```

Replace `myblog` with your desired project name.

---

## 3. Install the PaperMod Theme

```sh
git init
git submodule add https://github.com/adityatelange/hugo-PaperMod themes/PaperMod
```

Or download the theme from [GitHub](https://github.com/adityatelange/hugo-PaperMod) and place it in the `themes/PaperMod` directory.

---

## 4. Configure `hugo.toml`

Open `hugo.toml` and add:

Note : You can also configure the theme in the `config.toml` file in previous versions of Hugo.

```toml
baseURL = 'https://yourgithubusername.github.io/'
languageCode = 'en-us'
title = 'My Hugo Blog'
theme = 'PaperMod'

[params]
  ShowReadingTime = true
  ShowToc = true
  TocOpen = true
```

Modify the `baseURL` with your actual GitHub username namely `https://username.github.io/`.

---

## 5. Create Your First Blog Post

```sh
hugo new posts/first-post.md
```

Edit `content/posts/first-post.md` and add:

```md
---
title: 'My First Hugo Post'
date: 2025-01-30T12:30:00Z
draft: false
---

Welcome to my Hugo blog! This is my first post.
```

---

## 6. Run Hugo Locally

```sh
hugo server -D
```

Visit **http://localhost:1313/** to preview your site.

---
