#!/bin/bash
# Builds the three pages from shared header and footer.
cd "$(dirname "$0")"
H='<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,300..500&family=Instrument+Sans:wght@400;600&display=swap" rel="stylesheet"><link rel="stylesheet" href="/style.css">'
TOP='<div class="wrap"><header class="top"><a class="name" href="/">Reed Ostrov</a><a class="mute" href="https://github.com/Questboy23">GitHub</a></header>'
FOOT='<footer><span>Reed Ostrov</span><span>Free and open source. Both run on macOS.</span></footer></div></body></html>'
cat > index.html <<EOF
$H<title>Reed Ostrov</title><meta name="description" content="Free tools for your Mac by Reed Ostrov."></head><body>$TOP
<section class="hero"><h1 class="serif">Small tools that keep a Mac safe and fast.</h1><p>Two free programs. Each one does one job in the background, and every change it makes can be undone.</p></section>
<section class="projects"><div class="label">Projects</div>
<a class="row" href="/leviathan/"><span class="n">01</span><div><h2 class="serif">Leviathan</h2><p>Blocks malware sites, quarantines harmful downloads and stops dangerous pasted commands.</p></div><span class="go" aria-hidden="true">&rarr;</span></a>
<a class="row" href="/activity-monitored/"><span class="n">02</span><div><h2 class="serif">Activity Monitored</h2><p>Keeps your Mac responsive when too many programs fight for the processor.</p></div><span class="go" aria-hidden="true">&rarr;</span></a>
</section>$FOOT
EOF
cat > leviathan/index.html <<EOF
$H<title>Leviathan</title><meta name="description" content="Leviathan protects a Mac from malware sites, harmful downloads and dangerous pasted commands."></head><body>$TOP
<a class="back" href="/">&larr; All projects</a>
<section class="p-hero"><div class="label">Project 01 &middot; macOS</div><h1 class="serif" style="margin-top:16px">Leviathan</h1><p class="lede serif">It stops malware on your Mac before the malware can run.</p>
<div class="actions"><a class="btn" href="https://github.com/Questboy23/leviathan/releases/latest/download/Leviathan.zip">Download for Mac <span aria-hidden="true">&darr;</span></a><a class="link" href="https://github.com/Questboy23/leviathan">View the code</a></div></section>
<section class="blk"><h3 class="serif">What it does</h3><div class="prose"><p>Most Mac infections start in one of three ways. A fake website, a file you download, or a command a scam page tells you to paste into Terminal.</p><p>Leviathan watches all three. It runs in the background, so after setup there is nothing to click.</p></div></section>
<section class="blk"><h3 class="serif">Why it helps</h3><ul class="pros">
<li><span class="k">01</span><div><b>Blocks known bad websites</b><span>Your Mac checks every site against lists of malware and phishing addresses, refreshed every hour.</span></div></li>
<li><span class="k">02</span><div><b>Catches harmful downloads</b><span>New files are checked with Apple's own malware rules. Matches move to a folder where they cannot run.</span></div></li>
<li><span class="k">03</span><div><b>Stops dangerous pasted commands</b><span>If a page tricks you into pasting a command that installs malware, Leviathan stops it once and explains why.</span></div></li>
<li><span class="k">04</span><div><b>Everything can be undone</b><span>Each action is logged. One command puts any file or setting back the way it was.</span></div></li>
<li><span class="k">05</span><div><b>Free, with no account</b><span>No subscription, no sign up, and nothing about you is sent anywhere.</span></div></li>
</ul></section>
<section class="blk"><h3 class="serif">How to install</h3><div><ol class="steps">
<li><span class="k">1</span><div><b>Download</b><span>Click Download for Mac above. Your Mac unzips it into Downloads.</span></div></li>
<li><span class="k">2</span><div><b>Open Terminal</b><span>Press Cmd and Space, type Terminal, press Return.</span></div></li>
<li><span class="k">3</span><div><b>Run the installer</b><span>Type <code>bash </code> with a space, drag <code>install.sh</code> from the unzipped folder into the window, and press Return. Enter your Mac password when asked.</span></div></li>
</ol><p class="note">Or paste this single line into Terminal:</p><pre><code>cd ~ &amp;&amp; curl -fsSL https://github.com/Questboy23/leviathan/archive/refs/tags/v1.0.0.tar.gz | tar xz &amp;&amp; bash leviathan-1.0.0/install.sh</code></pre></div></section>
$FOOT
EOF
cat > activity-monitored/index.html <<EOF
$H<title>Activity Monitored</title><meta name="description" content="Activity Monitored keeps a Mac responsive when it is overloaded."></head><body>$TOP
<a class="back" href="/">&larr; All projects</a>
<section class="p-hero"><div class="label">Project 02 &middot; macOS</div><h1 class="serif" style="margin-top:16px">Activity Monitored</h1><p class="lede serif">Keeps your Mac quick when too much is running at once.</p>
<div class="actions"><a class="btn" href="https://github.com/Questboy23/activity-monitored/archive/refs/heads/main.zip">Download for Mac <span aria-hidden="true">&darr;</span></a><a class="link" href="https://github.com/Questboy23/activity-monitored">View the code</a></div></section>
<section class="blk"><h3 class="serif">What it does</h3><div class="prose"><p>When many programs compete for your Mac's processor, everything slows down, including the window you are using.</p><p>Activity Monitored notices when that happens. It lets busy background programs wait their turn, so the app in front of you stays fast. A minute or two later it puts them back to normal.</p></div></section>
<section class="blk"><h3 class="serif">Why it helps</h3><ul class="pros">
<li><span class="k">01</span><div><b>Your current app stays smooth</b><span>Typing, scrolling and video keep up even while heavy work runs behind them.</span></div></li>
<li><span class="k">02</span><div><b>Heavy jobs can finish sooner</b><span>In one overload test, a 10 program job finished in 24 seconds instead of 39.</span></div></li>
<li><span class="k">03</span><div><b>Nothing is ever closed</b><span>Programs are only slowed for a moment. They keep running and keep their work.</span></div></li>
<li><span class="k">04</span><div><b>Undoes itself</b><span>Every change has a timer that reverses it automatically, even if Activity Monitored stops.</span></div></li>
<li><span class="k">05</span><div><b>Free, with no account</b><span>No subscription, no sign up, and no data leaves your Mac.</span></div></li>
</ul></section>
<section class="blk"><h3 class="serif">How to install</h3><div><ol class="steps">
<li><span class="k">1</span><div><b>Download</b><span>Click Download for Mac above. Your Mac unzips it into Downloads.</span></div></li>
<li><span class="k">2</span><div><b>Open the installer</b><span>In the unzipped folder, right click <code>Install Activity Monitored.command</code> and choose Open.</span></div></li>
<li><span class="k">3</span><div><b>Done</b><span>It starts now and every time you log in. If your Mac offers to install developer tools, click Install, then repeat step 2.</span></div></li>
</ol><p class="note">Or paste this single line into Terminal:</p><pre><code>curl -fsSL https://raw.githubusercontent.com/Questboy23/activity-monitored/main/install.sh | bash</code></pre></div></section>
$FOOT
EOF
