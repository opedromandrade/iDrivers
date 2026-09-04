## 📱🍎 iDrivers

**🔌 Plug in. 📶 Tether up. 🚫 No driver hell.**

iDrivers is a one-stop script that takes the pain out of getting iPhone drivers
installed correctly — so you can go from *plugging in your cable* 📱 to *USB
internet tethering* 🌐 without dealing with messy drivers, random downloads,
or endless forum posts.

No manual installs. No guesswork. Just run it and you're online. ⚡

## 🏖️ The Story Behind It

I was on vacation 🏖️ and needed to get some work done on my laptop 💻 — but I
didn't want to use my iPhone 📱 as a hotspot.

So I decided to tether my Windows laptop to my iPhone directly. Simple idea,
right? Wrong. ❌

I tried everything:
- 🔄 Installed **two** different versions of iTunes
- 🛠️ Did the classic "Device Manager" driver install dance
- 🔄 Restarted, replugged, repeated...

Nothing worked. Then I finally stumbled upon a post (Reddit or Stack Overflow —
sorry, can't remember which 🙈) that explained how to do it with a **simple
command line**, as long as the `Driver.msi` file was on the machine.

That's when I thought: *why not automate this?* 💡

> **ℹ️ Note:** The Apple driver `.msi` file was extracted from the Windows
> iTunes installer **12.10.11**.

## 🚀 Getting Started

Super simple — here's the whole ritual:

1. 📥 **Download the folder**
2. 🛡️ Run `idriver.bat` **with elevated administrator permissions**
   *(right-click → "Run as administrator" — trust me, it matters)*
3. 🔄 Restart, and hopefully you'll get as lucky as I did 😊
4. 🔌 **Plug your iPhone into your machine via USB** — then, in your iPhone
   settings (yes, again — this is important! 📱):
   - 📶 Turn **ON** cellular data
   - 📡 Turn **ON** your Personal Hotspot
   - 💬 When the pop-up appears asking how to connect, choose **USB**

---

### ⚙️ Before You Run It — Important!

On your iPhone 📱, make sure to **disable**:

- 📶 Wi-Fi
- 🔵 Bluetooth
- 📡 Data and Personal Hotspot

> ⚠️ **NOTE:** Do **NOT** use the Command Center / Control Center for this! 🙅
> It won't work — toggles need to be flipped inside **Settings**.