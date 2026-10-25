<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
<title>NEVOBRAIT — Секретная База Паранормальных Расследований</title>
<meta name="description" content="NEVOBRAIT — канал о паранормальных расследованиях, хорроре, криптидах и мистике.">
<link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>👻</text></svg>">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700;900&family=Rajdhani:wght@300;400;600;700&family=Share+Tech+Mono&family=JetBrains+Mono:wght@400;700&display=swap" rel="stylesheet">
<style>
/* ═══════════════════════════════════════
   RESET & BASE
═══════════════════════════════════════ */
*,*::before,*::after{margin:0;padding:0;box-sizing:border-box;}
html{scroll-behavior:smooth;}
body{
  background:#000;color:#fff;overflow-x:hidden;
  font-family:'Rajdhani',sans-serif;min-height:100vh;
}
/* Hide native cursor everywhere; restore on pure-touch devices */
*{cursor:none!important;}
@media(hover:none)and(pointer:coarse){
  *{cursor:auto!important;}
  #nv-dot,#nv-ring{display:none!important;}
}
a{text-decoration:none;color:inherit;}
::-webkit-scrollbar{width:7px;background:#050000;}
::-webkit-scrollbar-thumb{background:#5a0000;border-radius:4px;box-shadow:0 0 8px #ff0000;}
::selection{background:rgba(255,0,0,.25);color:#fff;}

/* ═══════════════════════════════════════
   CUSTOM CURSOR
═══════════════════════════════════════ */
#nv-dot{
  position:fixed;top:0;left:0;width:7px;height:7px;border-radius:50%;
  background:#ff0000;box-shadow:0 0 12px #ff0000,0 0 24px rgba(255,0,0,.35);
  pointer-events:none;z-index:999999;
  transform:translate(-50%,-50%);
  transition:background .12s,box-shadow .12s;
  will-change:left,top;
}
#nv-ring{
  position:fixed;top:0;left:0;width:36px;height:36px;border-radius:50%;
  border:1.5px solid rgba(255,0,0,.6);pointer-events:none;z-index:999998;
  transform:translate(-50%,-50%) scale(1);
  transition:transform .18s cubic-bezier(.075,.82,.165,1),border-color .18s;
  will-change:left,top;
}
#nv-ring span{position:absolute;background:rgba(255,0,0,.7);}
#nv-ring .t{top:-5px;left:50%;transform:translateX(-50%);width:2px;height:7px;}
#nv-ring .b{bottom:-5px;left:50%;transform:translateX(-50%);width:2px;height:7px;}
#nv-ring .l{left:-5px;top:50%;transform:translateY(-50%);height:2px;width:7px;}
#nv-ring .r{right:-5px;top:50%;transform:translateY(-50%);height:2px;width:7px;}

/* ═══════════════════════════════════════
   PRELOADER
═══════════════════════════════════════ */
#preloader{
  position:fixed;inset:0;background:#000;z-index:99000;
  display:flex;flex-direction:column;align-items:center;justify-content:center;gap:20px;
  transition:opacity .9s ease;
}
#preloader.out{opacity:0;pointer-events:none;}
.pre-badge{
  display:flex;align-items:center;gap:10px;
  padding:6px 18px;border:1px solid rgba(255,0,0,.25);border-radius:40px;
  background:rgba(255,0,0,.05);margin-bottom:8px;
}
.pre-badge span{width:8px;height:8px;border-radius:50%;background:#ff1a1a;animation:blink 1.2s infinite;}
.pre-badge p{font-family:'JetBrains Mono',monospace;font-size:.7rem;color:#ccc;letter-spacing:2px;}
.pre-h{
  font-family:'Orbitron',monospace;font-size:clamp(1.4rem,5vw,2.2rem);
  font-weight:900;color:#ff1a1a;letter-spacing:8px;text-align:center;
  text-shadow:0 0 30px #ff0000,0 0 60px rgba(255,0,0,.4);
  animation:glow-pulse 1.4s infinite alternate;
}
.pre-sub{
  font-family:'Share Tech Mono',monospace;color:#550000;font-size:.8rem;
  letter-spacing:3px;text-align:center;padding:0 20px;line-height:1.9;
}
.pre-bar-wrap{width:min(360px,85vw);height:3px;background:#0d0000;border-radius:2px;overflow:hidden;}
.pre-bar{height:100%;width:0;background:#ff0000;box-shadow:0 0 18px #ff0000;transition:width .07s linear;}
.pre-warn{
  font-family:'Share Tech Mono',monospace;color:#3a0000;
  font-size:.68rem;letter-spacing:3px;text-align:center;margin-top:6px;
}
@keyframes glow-pulse{
  0%{opacity:.5;text-shadow:0 0 10px #ff0000;}
  100%{opacity:1;text-shadow:0 0 60px #ff0000,0 0 120px rgba(139,0,0,.6);}
}
@keyframes blink{0%,100%{opacity:1;}50%{opacity:.1;}}

/* ═══════════════════════════════════════
   SITE WRAPPER
═══════════════════════════════════════ */
#site{opacity:0;transition:opacity 1.2s ease;}
#site.show{opacity:1;}

/* ═══════════════════════════════════════
   MATRIX + VHS OVERLAYS
═══════════════════════════════════════ */
#matrix{
  position:fixed;inset:0;pointer-events:none;z-index:0;opacity:.3;
}
.fog{
  position:fixed;inset:0;pointer-events:none;z-index:1;
  background:
    radial-gradient(ellipse at 20% 50%,rgba(80,0,0,.14) 0%,transparent 60%),
    radial-gradient(ellipse at 80% 80%,rgba(40,0,0,.1) 0%,transparent 55%);
  animation:fog 24s infinite alternate ease-in-out;
}
@keyframes fog{
  0%{transform:scale(1) translate(0,0);opacity:.5;}
  100%{transform:scale(1.07) translate(-20px,-15px);opacity:.9;}
}
.scanlines{
  position:fixed;inset:0;pointer-events:none;z-index:2;
  background:repeating-linear-gradient(
    0deg,rgba(0,0,0,.022) 0px,rgba(0,0,0,.022) 1px,
    transparent 1px,transparent 4px);
}
.red-flash{
  position:fixed;inset:0;pointer-events:none;z-index:3;
  background:rgba(255,0,0,0);animation:rflash 11s infinite ease-in-out;
}
@keyframes rflash{
  0%,100%{background:rgba(255,0,0,0);}
  30%{background:rgba(255,0,0,.03);}
  60%{background:rgba(255,0,0,.05);}
}
.scan-bar{
  position:fixed;left:0;right:0;height:2px;
  background:rgba(255,0,0,.22);pointer-events:none;z-index:4;
  animation:scanbar 8s linear infinite;
}
@keyframes scanbar{
  0%{top:-2px;opacity:.06;}50%{opacity:.2;}100%{top:100vh;opacity:.06;}
}

/* ═══════════════════════════════════════
   LAYOUT
═══════════════════════════════════════ */
.wrap{
  position:relative;z-index:5;
  max-width:1300px;margin:0 auto;padding:0 20px 80px;
}

/* ═══════════════════════════════════════
   HEADER
═══════════════════════════════════════ */
header{
  position:sticky;top:10px;z-index:100;
  display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;gap:10px;
  padding:12px 22px;margin-bottom:20px;
  background:rgba(0,0,0,.78);backdrop-filter:blur(16px);
  border:1px solid rgba(255,0,0,.07);border-radius:16px;
  box-shadow:0 2px 24px rgba(0,0,0,.8),0 0 40px rgba(255,0,0,.03);
}
.logo{display:flex;align-items:center;gap:14px;}
.avatar{
  width:52px;height:52px;border-radius:50%;border:2px solid #ff0000;
  box-shadow:0 0 20px rgba(255,0,0,.6);background:#000;flex-shrink:0;
  display:flex;align-items:center;justify-content:center;font-size:1.6rem;
  transition:transform .4s,box-shadow .4s;
}
.avatar:hover{transform:scale(1.1) rotate(-5deg);box-shadow:0 0 40px #ff1a1a;}
.brand-name{
  font-family:'Orbitron',monospace;font-size:clamp(1.1rem,2.5vw,1.6rem);
  font-weight:900;letter-spacing:4px;
  text-shadow:0 0 16px rgba(255,0,0,.4);
}
.brand-sub{
  display:block;font-family:'Rajdhani',sans-serif;font-size:.55rem;
  color:#8b0000;letter-spacing:3px;font-weight:600;margin-top:2px;
}
.online-pill{
  display:flex;align-items:center;gap:6px;
  padding:4px 14px;border:1px solid rgba(0,204,85,.35);border-radius:40px;
  background:rgba(0,255,80,.04);
  font-family:'Share Tech Mono',monospace;font-size:.68rem;color:#00ff66;letter-spacing:1px;
}
.online-pill .dot{width:6px;height:6px;border-radius:50%;background:#00ff66;animation:blink 1.5s infinite;}
nav{display:flex;gap:16px;flex-wrap:wrap;align-items:center;}
nav a{
  color:#888;font-size:.76rem;font-weight:600;letter-spacing:2px;
  text-transform:uppercase;padding:4px 0;position:relative;transition:color .3s;
}
nav a::after{
  content:'';position:absolute;bottom:-2px;left:0;width:0;height:2px;
  background:#ff0000;box-shadow:0 0 8px #ff0000;transition:width .3s;
}
nav a:hover{color:#fff;}
nav a:hover::after{width:100%;}
.menu-btn{
  display:none;background:none;border:none;color:#ccc;
  font-size:1.7rem;line-height:1;transition:color .3s;
}
.menu-btn:hover{color:#ff0000;text-shadow:0 0 12px #ff0000;}
@media(max-width:860px){
  nav{display:none;width:100%;flex-direction:column;align-items:center;gap:12px;padding:10px 0;}
  nav.open{display:flex;}
  .menu-btn{display:block;}
}

/* ═══════════════════════════════════════
   SECTION TITLES
═══════════════════════════════════════ */
.sec-title{
  display:flex;align-items:center;gap:16px;margin:60px 0 32px;
}
.sec-title-bar{width:8px;height:36px;background:#ff0000;border-radius:2px;flex-shrink:0;}
.sec-title h2{
  font-family:'Orbitron',monospace;font-size:clamp(1.3rem,3vw,2rem);
  font-weight:700;letter-spacing:4px;color:#fff;
}
.sec-title p{
  font-family:'Share Tech Mono',monospace;color:#555;font-size:.72rem;
  letter-spacing:3px;text-transform:uppercase;margin-top:4px;
}

/* ═══════════════════════════════════════
   HERO
═══════════════════════════════════════ */
#hero{
  min-height:85vh;display:flex;flex-direction:column;
  align-items:center;justify-content:center;
  text-align:center;padding:100px 20px 80px;position:relative;overflow:hidden;
}
.hero-blob{
  position:absolute;inset:0;display:flex;align-items:center;justify-content:center;
  pointer-events:none;
}
.hero-blob::before{
  content:'';width:60vw;height:60vw;max-width:700px;max-height:700px;
  border-radius:50%;background:rgba(255,0,0,.08);filter:blur(90px);
  animation:hpulse 8s ease-in-out infinite;
}
.hero-blob::after{
  content:'';position:absolute;width:35vw;height:35vw;max-width:450px;max-height:450px;
  border-radius:50%;background:rgba(139,0,0,.14);filter:blur(70px);
  animation:hpulse 6s ease-in-out infinite alternate;
}
@keyframes hpulse{0%,100%{transform:scale(1);}50%{transform:scale(1.1);}}
.hero-badge{
  display:inline-flex;align-items:center;gap:10px;margin-bottom:24px;
  padding:6px 18px;border:1px solid rgba(255,0,0,.3);border-radius:40px;
  background:rgba(0,0,0,.5);backdrop-filter:blur(6px);
}
.hero-badge .dot{width:7px;height:7px;border-radius:50%;background:#ff0000;animation:blink 1.3s infinite;}
.hero-badge span{font-family:'JetBrains Mono',monospace;font-size:.72rem;color:#ccc;letter-spacing:2px;}
.hero h1{
  font-family:'Orbitron',monospace;font-weight:900;
  font-size:clamp(3.5rem,14vw,9rem);letter-spacing:-2px;color:#fff;
  text-shadow:0 0 30px rgba(255,0,0,.35);line-height:1;margin-bottom:24px;
  animation:glitch-anim 4s infinite;
}
@keyframes glitch-anim{
  0%,100%{text-shadow:0 0 30px rgba(255,0,0,.35);}
  20%{text-shadow:-5px -3px 0 #ff0000,5px 3px 0 rgba(139,0,0,.7),0 0 80px #ff1a1a;}
  40%{text-shadow:5px -3px 0 #ff0000,-5px 3px 0 rgba(139,0,0,.7);}
  60%{text-shadow:0 0 30px rgba(255,0,0,.35);}
  80%{text-shadow:-3px -2px 0 #ff0000,3px 2px 0 rgba(139,0,0,.7),0 0 100px #ff1a1a;}
}
.hero-sub{
  font-family:'Share Tech Mono',monospace;font-size:clamp(.85rem,2.2vw,1.3rem);
  color:#666;letter-spacing:.2em;text-transform:uppercase;margin-bottom:48px;line-height:1.9;
}
.hero-sub .dot{color:#ff0000;margin:0 6px;}
.hero-btns{display:flex;gap:18px;justify-content:center;flex-wrap:wrap;}
.btn{
  position:relative;padding:14px 40px;border-radius:60px;
  font-family:'Rajdhani',sans-serif;font-weight:700;font-size:1rem;
  letter-spacing:3px;text-transform:uppercase;
  overflow:hidden;transition:all .4s cubic-bezier(.075,.82,.165,1);
  display:inline-flex;align-items:center;gap:10px;
}
.btn::before{
  content:'';position:absolute;inset:0;
  transform:translateY(100%);transition:transform .35s ease-out;
}
.btn:hover::before{transform:translateY(0);}
.btn:hover{transform:scale(1.05);}
.btn span{position:relative;z-index:1;}
.btn-yt{border:2px solid #ff0000;background:rgba(255,0,0,.08);color:#fff;}
.btn-yt::before{background:#ff0000;}
.btn-yt:hover{box-shadow:0 0 50px rgba(255,0,0,.5);}
.btn-tg{border:2px solid #0088cc;background:rgba(0,136,204,.08);color:#fff;}
.btn-tg::before{background:#0088cc;}
.btn-tg:hover{box-shadow:0 0 50px rgba(0,136,204,.45);}
.hero-scroll{
  position:absolute;bottom:28px;left:50%;transform:translateX(-50%);
  display:flex;flex-direction:column;align-items:center;gap:6px;
  opacity:.45;transition:opacity .3s;
}
.hero-scroll:hover{opacity:.9;}
.hero-scroll p{font-family:'JetBrains Mono',monospace;font-size:.6rem;color:#555;letter-spacing:3px;}
.hero-scroll .line{width:1px;height:40px;background:linear-gradient(to bottom,#ff0000,transparent);animation:hpulse 2s ease-in-out infinite;}

/* ═══════════════════════════════════════
   ABOUT
═══════════════════════════════════════ */
.about-grid{display:grid;grid-template-columns:1fr 1fr;gap:22px;margin-bottom:50px;}
@media(max-width:700px){.about-grid{grid-template-columns:1fr;}}
.glass-card{
  position:relative;border-radius:18px;border:1px solid #1a0000;
  background:rgba(6,0,0,.75);backdrop-filter:blur(12px);
  padding:32px;overflow:hidden;transition:all .4s ease;
}
.glass-card::after{
  content:'';position:absolute;bottom:0;left:0;width:0;height:2px;
  background:#ff0000;transition:width .7s ease-out;
}
.glass-card:hover::after{width:100%;}
.glass-card:hover{border-color:rgba(255,0,0,.35);transform:translateY(-4px);box-shadow:0 0 50px rgba(255,0,0,.06);}
.card-head{display:flex;align-items:center;gap:12px;margin-bottom:20px;}
.card-icon{font-size:1.6rem;}
.card-label{font-family:'Orbitron',monospace;font-size:1rem;font-weight:700;color:#fff;letter-spacing:2px;}
.card-body{color:#999;line-height:1.75;font-size:.92rem;}
.card-body strong{color:#ff4444;}
.tag-row{display:flex;flex-wrap:wrap;gap:8px;margin-top:18px;}
.tag{
  padding:4px 14px;border:1px solid #1a0000;border-radius:40px;
  font-size:.78rem;color:#bbb;transition:all .3s;
  font-family:'JetBrains Mono',monospace;
}
.tag:hover{border-color:#ff0000;color:#fff;}
.team-card{
  display:flex;align-items:flex-start;gap:14px;
  padding:16px;border:1px solid #111;border-radius:10px;
  background:rgba(255,255,255,.02);margin-bottom:12px;
}
.team-icon{font-size:1.3rem;margin-top:2px;flex-shrink:0;}
.team-name{color:#fff;font-size:1rem;font-weight:700;margin-bottom:4px;}
.team-desc{color:#666;font-size:.82rem;line-height:1.5;}
.team-desc strong{color:#ff4444;}

/* ═══════════════════════════════════════
   CONTENT SECTION
═══════════════════════════════════════ */
.content-grid{
  display:grid;grid-template-columns:repeat(auto-fill,minmax(190px,1fr));
  gap:20px;margin-bottom:50px;
}
.content-card{
  position:relative;border-radius:14px;border:1px solid #0d0000;
  background:rgba(5,0,0,.85);padding:28px 18px;text-align:center;
  backdrop-filter:blur(6px);overflow:hidden;transition:all .4s;
}
.content-card::after{
  content:'';position:absolute;bottom:0;left:50%;transform:translateX(-50%);
  width:0;height:2px;background:#ff0000;transition:width .35s ease-out;
}
.content-card:hover::after{width:100%;}
.content-card:hover{
  border-color:rgba(255,0,0,.4);transform:scale(1.03);
  box-shadow:0 0 40px rgba(255,0,0,.06);background:rgba(10,0,0,.9);
}
.content-card .ci{
  width:60px;height:60px;border-radius:50%;border:1px solid #1a0000;
  background:#000;display:flex;align-items:center;justify-content:center;
  font-size:1.6rem;margin:0 auto 16px;
  transition:border-color .3s;
}
.content-card:hover .ci{border-color:rgba(255,0,0,.5);}
.content-card h4{color:#fff;font-size:.95rem;letter-spacing:1px;font-weight:700;text-transform:uppercase;margin-bottom:6px;}
.content-card p{color:#555;font-size:.78rem;line-height:1.5;font-family:'Share Tech Mono',monospace;}

/* ═══════════════════════════════════════
   CLASSIFIED FILES
═══════════════════════════════════════ */
.files-grid{
  display:grid;grid-template-columns:repeat(auto-fill,minmax(240px,1fr));
  gap:18px;margin-bottom:50px;
}
.file-card{
  position:relative;border-radius:12px;border:1px solid #0f0000;
  background:rgba(8,0,0,.88);padding:22px;overflow:hidden;
  transition:all .4s;font-family:'JetBrains Mono',monospace;
}
.file-card::before{
  content:'';position:absolute;top:0;left:0;width:2px;height:0;
  background:#ff0000;transition:height .3s;
}
.file-card.open:hover::before,.file-card.partial:hover::before{height:100%;}
.file-card:hover{border-color:rgba(255,0,0,.35);transform:translateY(-3px);box-shadow:0 0 40px rgba(255,0,0,.07);}
.file-stamp{
  position:absolute;top:14px;right:-22px;
  font-size:.55rem;font-weight:700;letter-spacing:2px;padding:3px 30px;
  transform:rotate(35deg);
}
.stamp-open{background:#1a3d1a;color:#55ff88;}
.stamp-partial{background:#3d2e00;color:#ffaa44;}
.stamp-enc{background:#3d0000;color:#ff4444;}
.file-top{display:flex;align-items:center;gap:12px;margin-bottom:10px;}
.file-ico{font-size:1.5rem;}
.file-name{color:#00ff66;font-size:.75rem;word-break:break-all;}
.file-desc{color:#666;font-size:.78rem;line-height:1.55;margin-bottom:14px;font-family:'Rajdhani',sans-serif;}
.file-status{display:inline-flex;align-items:center;gap:6px;font-size:.62rem;font-weight:700;letter-spacing:1px;padding:3px 12px;border-radius:20px;}
.file-status .sdot{width:5px;height:5px;border-radius:50%;flex-shrink:0;}
.fs-open{background:#0d2617;color:#55ff88;border:1px solid #1a4a2a;}
.fs-partial{background:#2a1d00;color:#ffaa44;border:1px solid #4a3600;}
.fs-enc{background:#2a0000;color:#ff4444;border:1px solid #4a0000;animation:enc-pulse 2.5s infinite;}
@keyframes enc-pulse{0%,100%{box-shadow:none;}50%{box-shadow:0 0 14px rgba(255,0,0,.25);}}
.enc-overlay{
  position:absolute;inset:0;background:rgba(0,0,0,.85);backdrop-filter:blur(2px);
  display:flex;align-items:center;justify-content:center;
  opacity:0;transition:opacity .3s;pointer-events:none;
}
.file-card.enc:hover .enc-overlay{opacity:1;}
.enc-text{
  color:#ff4444;font-size:.7rem;font-weight:700;
  padding:4px 12px;border:1px solid #550000;background:rgba(60,0,0,.6);
}
.file-card.enc{pointer-events:auto;}
.file-card.enc.shake{animation:shake .35s ease;}
@keyframes shake{
  0%,100%{transform:translateY(-3px);}
  20%{transform:translateX(-5px) translateY(-3px);}
  40%{transform:translateX(5px) translateY(-3px);}
  60%{transform:translateX(-4px) translateY(-3px);}
  80%{transform:translateX(4px) translateY(-3px);}
}

/* ═══════════════════════════════════════
   TERMINAL
═══════════════════════════════════════ */
.terminal-wrap{
  border-radius:16px;border:1.5px solid #1a0000;
  background:#020202;overflow:hidden;margin-bottom:50px;
  box-shadow:0 0 40px rgba(255,0,0,.05);
}
.term-top{
  display:flex;align-items:center;justify-content:space-between;
  padding:10px 18px;background:rgba(255,0,0,.06);border-bottom:1px solid #110000;
}
.term-title{font-family:'JetBrains Mono',monospace;font-size:.72rem;color:#ff4444;font-weight:700;letter-spacing:1px;}
.term-dots{display:flex;gap:7px;}
.term-dots span{width:11px;height:11px;border-radius:50%;}
.td-r{background:rgba(255,80,80,.5);}
.td-y{background:rgba(255,200,80,.4);}
.td-g{background:rgba(80,255,120,.4);}
.term-body{
  padding:16px;height:380px;overflow-y:auto;
  font-family:'JetBrains Mono',monospace;font-size:.84rem;line-height:1.8;
}
.term-body::-webkit-scrollbar{width:4px;background:#0a0000;}
.term-body::-webkit-scrollbar-thumb{background:#5a0000;}
.t-sys{color:#2288ff;}
.t-ok{color:#00ff66;}
.t-err{color:#ff3333;}
.t-warn{color:#ffaa00;}
.t-mat{color:#ff0000;text-shadow:0 0 8px #ff0000;}
.t-neu{color:#aaa;}
.t-cmd{color:#fff;}
.term-input-row{
  display:flex;align-items:center;gap:10px;
  padding:10px 18px;border-top:1px solid #0d0000;
  font-family:'JetBrains Mono',monospace;
}
.term-prompt{color:#00ff66;font-size:.84rem;white-space:nowrap;flex-shrink:0;}
#termInput{
  flex:1;background:transparent;border:none;outline:none;
  color:#fff;font-family:'JetBrains Mono',monospace;font-size:.84rem;
  caret-color:#ff0000;
}

/* ═══════════════════════════════════════
   INVESTIGATIONS
═══════════════════════════════════════ */
.invest-grid{
  display:grid;grid-template-columns:repeat(auto-fill,minmax(260px,1fr));
  gap:22px;margin-bottom:50px;
}
.invest-card{
  position:relative;border-radius:14px;border:1px solid #0e0000;
  background:rgba(5,0,0,.9);backdrop-filter:blur(6px);
  padding:24px;transition:all .4s;overflow:hidden;
}
.invest-card:hover{
  border-color:rgba(255,0,0,.4);transform:translateY(-6px);
  box-shadow:0 0 50px rgba(255,0,0,.08);
}
.inv-badge{
  position:absolute;top:16px;right:16px;
  font-family:'Orbitron',monospace;font-size:.6rem;font-weight:700;
  letter-spacing:1px;padding:3px 12px;border-radius:20px;
}
.lv-ext{background:#280000;color:#ff3333;border:1px solid #440000;box-shadow:0 0 12px rgba(255,0,0,.15);}
.lv-high{background:#1f1000;color:#ff8833;border:1px solid #3d2000;}
.lv-unk{background:#080820;color:#6688ff;border:1px solid #141440;}
.inv-date{font-family:'Share Tech Mono',monospace;color:#444;font-size:.7rem;letter-spacing:1px;margin-bottom:8px;}
.inv-title{font-family:'Orbitron',monospace;font-size:1.05rem;font-weight:700;color:#fff;margin-bottom:4px;padding-right:80px;}
.inv-sub{color:#ff4444;font-size:.72rem;font-family:'Share Tech Mono',monospace;letter-spacing:1px;margin-bottom:10px;}
.inv-desc{color:#666;font-size:.84rem;line-height:1.55;}
.inv-more{
  display:inline-flex;align-items:center;gap:6px;margin-top:14px;
  color:#ff0000;font-size:.72rem;font-weight:600;letter-spacing:2px;
  font-family:'Rajdhani',sans-serif;text-transform:uppercase;
  transition:opacity .3s;opacity:.7;
}
.invest-card:hover .inv-more{opacity:1;}

/* ═══════════════════════════════════════
   MODAL
═══════════════════════════════════════ */
.modal-overlay{
  position:fixed;inset:0;background:rgba(0,0,0,.92);
  backdrop-filter:blur(12px);z-index:5000;
  display:none;align-items:center;justify-content:center;padding:24px;
}
.modal-overlay.open{display:flex;}
.modal-box{
  position:relative;width:100%;max-width:600px;max-height:85vh;overflow-y:auto;
  background:#060000;border:2px solid #ff0000;border-radius:28px;padding:44px;
  box-shadow:0 0 80px rgba(255,0,0,.14);animation:min .3s ease;
}
@keyframes min{from{transform:scale(.9);opacity:0;}to{transform:scale(1);opacity:1;}}
.modal-box::-webkit-scrollbar{width:4px;}
.modal-box::-webkit-scrollbar-thumb{background:#5a0000;}
.modal-close{
  position:absolute;top:16px;right:20px;background:none;border:none;
  width:38px;height:38px;border-radius:50%;border:1px solid #1a0000;
  display:flex;align-items:center;justify-content:center;
  color:#555;font-size:1.4rem;transition:all .3s;
}
.modal-close:hover{color:#ff0000;border-color:#ff0000;text-shadow:0 0 12px #ff0000;}
.modal-level-row{display:flex;align-items:center;gap:10px;margin-bottom:14px;}
.modal-level-label{font-family:'JetBrains Mono',monospace;font-size:.7rem;color:#555;letter-spacing:2px;}
.modal-title{font-family:'Orbitron',monospace;font-size:clamp(1.4rem,4vw,2.2rem);font-weight:900;color:#fff;margin-bottom:6px;}
.modal-sub{font-family:'Share Tech Mono',monospace;color:#666;font-size:.82rem;letter-spacing:2px;margin-bottom:24px;}
.modal-text{
  background:rgba(255,0,0,.04);border-left:3px solid #ff0000;
  padding:20px;border-radius:0 12px 12px 0;
  color:#bbb;line-height:1.8;font-size:.95rem;font-family:'Rajdhani',sans-serif;
}
.modal-id{
  margin-top:20px;font-family:'JetBrains Mono',monospace;font-size:.65rem;
  color:#2a0000;letter-spacing:1px;
}
.modal-line{
  position:absolute;width:100px;height:1px;
  background:#ff0000;box-shadow:0 0 10px #ff0000;left:50%;transform:translateX(-50%);
}
.modal-line-t{top:-1px;}
.modal-line-b{bottom:-1px;}

/* ═══════════════════════════════════════
   FOOTER
═══════════════════════════════════════ */
footer{
  border-top:1px solid #0e0000;padding:50px 20px 28px;
  text-align:center;background:#000;position:relative;overflow:hidden;
}
.footer-glow{
  position:absolute;top:0;left:50%;transform:translateX(-50%);
  width:240px;height:220px;background:rgba(255,0,0,.06);
  filter:blur(90px);border-radius:50%;pointer-events:none;
}
.footer-divider{
  width:160px;height:1px;margin:0 auto 36px;
  background:linear-gradient(90deg,transparent,#ff0000,transparent);
}
.footer-h{
  font-family:'Orbitron',monospace;font-size:clamp(1rem,2.5vw,1.4rem);
  letter-spacing:4px;color:#fff;margin-bottom:10px;
}
.footer-desc{color:#555;font-size:.85rem;line-height:1.7;margin-bottom:28px;max-width:380px;margin-left:auto;margin-right:auto;}
.footer-links{display:flex;justify-content:center;flex-wrap:wrap;gap:12px;margin-bottom:30px;}
.footer-links a{
  color:#777;font-weight:600;letter-spacing:2px;font-size:.8rem;
  padding:7px 20px;border:1px solid #0e0000;border-radius:40px;
  text-transform:uppercase;transition:all .3s;display:inline-flex;align-items:center;gap:8px;
}
.fl-yt:hover{color:#fff;border-color:#ff0000;box-shadow:0 0 22px rgba(255,0,0,.35);background:rgba(255,0,0,.07);}
.fl-tg:hover{color:#fff;border-color:#0088cc;box-shadow:0 0 22px rgba(0,136,204,.3);background:rgba(0,136,204,.07);}
.fl-dc:hover{color:#fff;border-color:#5865F2;box-shadow:0 0 22px rgba(88,101,242,.3);background:rgba(88,101,242,.07);}
.fl-ml:hover{color:#fff;border-color:#aaa;box-shadow:0 0 18px rgba(200,200,200,.15);background:rgba(255,255,255,.04);}
.footer-warn{color:#6b0000;font-weight:700;font-size:.78rem;letter-spacing:1px;margin-bottom:4px;}
.footer-note{color:#222;font-size:.68rem;margin-bottom:16px;}
.footer-copy{font-family:'Share Tech Mono',monospace;color:#1a0000;font-size:.65rem;letter-spacing:1px;}
.footer-visit{font-family:'JetBrains Mono',monospace;color:#111;font-size:.62rem;margin-top:6px;}
</style>
</head>
<body>

<!-- CURSOR -->
<div id="nv-dot"></div>
<div id="nv-ring">
  <span class="t"></span><span class="b"></span>
  <span class="l"></span><span class="r"></span>
</div>

<!-- PRELOADER -->
<div id="preloader">
  <div class="pre-badge">
    <span></span>
    <p>СИСТЕМА АКТИВНА</p>
  </div>
  <div class="pre-h">🔴 ЗАГРУЗКА СИСТЕМЫ</div>
  <div class="pre-sub">
    Инициализация протоколов...<br>
    Сканирование аномалий...<br>
    Подключение к базе данных...
  </div>
  <div class="pre-bar-wrap"><div class="pre-bar" id="preBar"></div></div>
  <div class="pre-warn">⚠️ ДОСТУП ТОЛЬКО АВТОРИЗОВАННЫМ</div>
</div>

<!-- SITE -->
<div id="site">
  <canvas id="matrix"></canvas>
  <div class="fog"></div>
  <div class="scanlines"></div>
  <div class="red-flash"></div>
  <div class="scan-bar"></div>

  <div class="wrap">

    <!-- HEADER -->
    <header>
      <div class="logo">
        <div class="avatar">👻</div>
        <div>
          <div class="brand-name">NEVOBRAIT<small class="brand-sub">PARANORMAL INVESTIGATION</small></div>
        </div>
      </div>
      <div class="online-pill">
        <span class="dot"></span>
        <span id="onlineCnt">4</span>&nbsp;онлайн
      </div>
      <button class="menu-btn" id="menuBtn" aria-label="Меню">☰</button>
      <nav id="mainNav">
        <a href="#hero">Главная</a>
        <a href="#about">О канале</a>
        <a href="#content">Видео</a>
        <a href="#files">Файлы</a>
        <a href="#terminal">Терминал</a>
        <a href="#archive">Расследования</a>
        <a href="#footer">Контакты</a>
      </nav>
    </header>

    <!-- HERO -->
    <section id="hero">
      <div class="hero-blob"></div>
      <div class="hero-badge">
        <span class="dot"></span>
        <span>СИСТЕМА АКТИВНА</span>
      </div>
      <h1 id="heroH1">NEVOBRAIT</h1>
      <p class="hero-sub">
        Паранормальные расследования<span class="dot">·</span>Хоррор<span class="dot">·</span>Игры<span class="dot">·</span>Мистика
      </p>
      <div class="hero-btns">
        <a href="https://youtube.com/@Nevobrait" target="_blank" rel="noopener" class="btn btn-yt">
          <span>▶ YouTube</span>
        </a>
        <a href="https://t.me/nevobrait" target="_blank" rel="noopener" class="btn btn-tg">
          <span>✈ Telegram</span>
        </a>
      </div>
      <div class="hero-scroll">
        <p>ПРОКРУТИТЬ</p>
        <div class="line"></div>
      </div>
    </section>

    <!-- О КАНАЛЕ -->
    <section id="about">
      <div class="sec-title">
        <div class="sec-title-bar"></div>
        <div><h2>О КАНАЛЕ</h2><p>ВНИМАНИЕ: КОНТЕНТ НЕ ДЛЯ ДЕТЕЙ</p></div>
      </div>
      <div class="about-grid">
        <div class="glass-card">
          <div class="card-head">
            <span class="card-icon">⚠️</span>
            <span class="card-label">ПРЕДУПРЕЖДЕНИЕ</span>
          </div>
          <div class="card-body">
            <p>Канал основан в <strong>2026 году</strong>. Мы исследуем самые тёмные уголки реальности, куда другие боятся заглядывать.</p>
            <br>
            <p>Все расследования проводятся в зоне влияния <strong>Тёмной Волны</strong>. Контент содержит пугающие сцены, скримеры и мистические ритуалы.</p>
          </div>
          <div class="tag-row">
            <span class="tag">18+</span>
            <span class="tag">Мистика</span>
            <span class="tag">Расследования</span>
            <span class="tag">Тёмная Волна</span>
          </div>
        </div>
        <div class="glass-card">
          <div class="card-head">
            <span class="card-icon">👥</span>
            <span class="card-label">КОМАНДА</span>
          </div>
          <div class="team-card">
            <span class="team-icon">🎯</span>
            <div>
              <div class="team-name">Nevobrait</div>
              <div class="team-desc">Основатель, главный игрок, вызыватель духов. Проводник в мир аномалий.</div>
            </div>
          </div>
          <div class="team-card">
            <span class="team-icon">💀</span>
            <div>
              <div class="team-name" style="color:#ff4444;">Тёмные Силы</div>
              <div class="team-desc">Страх, крики, сущности. Главный антагонист: <strong>Полуночный Человек</strong>.</div>
            </div>
          </div>
          <p style="font-family:'Share Tech Mono',monospace;font-size:.72rem;color:#444;letter-spacing:2px;text-transform:uppercase;margin-top:14px;">
            Каждое видео — полное погружение в хоррор-вселенную.
          </p>
        </div>
      </div>
    </section>

    <!-- ЧТО НА КАНАЛЕ -->
    <section id="content">
      <div class="sec-title">
        <div class="sec-title-bar"></div>
        <div><h2>ЧТО НА КАНАЛЕ</h2><p>КАТЕГОРИИ МАТЕРИАЛОВ</p></div>
      </div>
      <div class="content-grid">
        <div class="content-card"><div class="ci">🔍</div><h4>Расследования</h4><p>Сбор улик, поиск аномалий и криптидов</p></div>
        <div class="content-card"><div class="ci">🎮</div><h4>Хоррор Игры</h4><p>Прохождения с максимальным погружением</p></div>
        <div class="content-card"><div class="ci">📜</div><h4>Мистические Истории</h4><p>Реальные легенды и задокументированные факты</p></div>
        <div class="content-card"><div class="ci">👻</div><h4>Вызовы Духов</h4><p>Прямой контакт с потусторонним миром</p></div>
        <div class="content-card"><div class="ci">🧠</div><h4>Разборы</h4><p>Глубокий анализ хоррор-вселенных</p></div>
        <div class="content-card"><div class="ci">🔥</div><h4>Страхи Шоу</h4><p>Теории, детали и лор тёмного интернета</p></div>
      </div>
    </section>

    <!-- ЗАСЕКРЕЧЕННЫЕ ФАЙЛЫ -->
    <section id="files">
      <div class="sec-title">
        <div class="sec-title-bar"></div>
        <div><h2>ЗАСЕКРЕЧЕННЫЕ ФАЙЛЫ</h2><p>СТАТУС: ЧАСТИЧНО РАССЕКРЕЧЕНО</p></div>
      </div>
      <div class="files-grid">
        <div class="file-card open">
          <div class="file-stamp stamp-open">DECLASSIFIED</div>
          <div class="file-top"><span class="file-ico">📄</span><div class="file-name">adkinator_dossier.dox</div></div>
          <div class="file-desc">Досье на цифрового криптида Адкинатора. Происхождение, активность, домены.</div>
          <span class="file-status fs-open"><span class="sdot" style="background:#55ff88;"></span>ОТКРЫТО</span>
        </div>
        <div class="file-card open">
          <div class="file-stamp stamp-open">DECLASSIFIED</div>
          <div class="file-top"><span class="file-ico">📄</span><div class="file-name">dark_wave_logs.doc</div></div>
          <div class="file-desc">Логи Тёмной Волны 2006–2019. Пики активности, задокументированные сбои.</div>
          <span class="file-status fs-open"><span class="sdot" style="background:#55ff88;"></span>ОТКРЫТО</span>
        </div>
        <div class="file-card partial">
          <div class="file-stamp stamp-partial">REDACTED</div>
          <div class="file-top"><span class="file-ico">📄</span><div class="file-name">silent_house_report.pdf</div></div>
          <div class="file-desc">Отчёт о Тихом Доме — инкубаторе криптидов. Частично засекречено.</div>
          <span class="file-status fs-partial"><span class="sdot" style="background:#ffaa44;"></span>ЧАСТИЧНО</span>
        </div>
        <div class="file-card enc" id="encFile">
          <div class="file-stamp stamp-enc">CLASSIFIED</div>
          <div class="file-top"><span class="file-ico">🔒</span><div class="file-name">midnight_man_case.enc</div></div>
          <div class="file-desc" style="filter:blur(1.5px);color:#550000;">Дело Полуночного Человека. Засекречено протоколом уровня EXTREME.</div>
          <span class="file-status fs-enc"><span class="sdot" style="background:#ff4444;animation:blink 1s infinite;"></span>🔒 ЗАШИФРОВАНО</span>
          <div class="enc-overlay"><span class="enc-text">[███ ДАННЫЕ ЗАСЕКРЕЧЕНЫ ███]</span></div>
        </div>
        <div class="file-card open">
          <div class="file-stamp stamp-open">DECLASSIFIED</div>
          <div class="file-top"><span class="file-ico">📄</span><div class="file-name">ghost_activity.log</div></div>
          <div class="file-desc">Журнал активности призраков. Хронология аномальных появлений.</div>
          <span class="file-status fs-open"><span class="sdot" style="background:#55ff88;"></span>ОТКРЫТО</span>
        </div>
      </div>
    </section>

    <!-- ТЕРМИНАЛ -->
    <section id="terminal">
      <div class="sec-title">
        <div class="sec-title-bar"></div>
        <div><h2>ТЕРМИНАЛ ДОСТУПА</h2><p>NEVOBRAIT COLD OS v9.9</p></div>
      </div>
      <div class="terminal-wrap">
        <div class="term-top">
          <span class="term-title">NEVOBRAIT COLD OS v9.9 — STATUS: OVERRIDE ACTIVE</span>
          <div class="term-dots"><span class="td-r"></span><span class="td-y"></span><span class="td-g"></span></div>
        </div>
        <div class="term-body" id="termBody">
<div class="t-sys">[SYSTEM] Инициализация ядра NEVOBRAIT...</div>
<div class="t-sys">[SYSTEM] База данных зашифрована AES-256. Подключение установлено.</div>
<div class="t-ok">[OK] Соединение защищено.</div>
<div class="t-neu">Введите <strong style="color:#fff">help</strong> для списка команд.</div>
<div class="t-ok">[READY] Ожидание команды...</div>
        </div>
        <div class="term-input-row">
          <span class="term-prompt">root@nevobrait:~#</span>
          <input type="text" id="termInput" autocomplete="off" spellcheck="false" placeholder="_">
        </div>
      </div>
    </section>

    <!-- АРХИВ РАССЛЕДОВАНИЙ -->
    <section id="archive">
      <div class="sec-title">
        <div class="sec-title-bar"></div>
        <div><h2>АРХИВ РАССЛЕДОВАНИЙ</h2><p>БАЗА ДАННЫХ СУЩНОСТЕЙ</p></div>
      </div>
      <div class="invest-grid">
        <div class="invest-card" data-case="adkinator">
          <span class="inv-badge lv-ext">EXTREME</span>
          <div class="inv-date">2001 — н.в.</div>
          <div class="inv-title">Адкинатор</div>
          <div class="inv-sub">ЦИФРОВОЙ КРИПТИД</div>
          <div class="inv-desc">Нестабильная сетевая сущность. Активна с 2016. Проявляет агрессию в цифровой среде, искажает данные.</div>
          <div class="inv-more">▶ Подробнее</div>
        </div>
        <div class="invest-card" data-case="darkwave">
          <span class="inv-badge lv-unk">UNKNOWN</span>
          <div class="inv-date">2006 — н.в.</div>
          <div class="inv-title">Тёмная Волна</div>
          <div class="inv-sub">ЦИКЛИЧЕСКАЯ АНОМАЛИЯ</div>
          <div class="inv-desc">Циклическое явление, активирующее криптидов. Пики: 2006, 2011, 2018–2019. Следующая фаза неизвестна.</div>
          <div class="inv-more">▶ Подробнее</div>
        </div>
        <div class="invest-card" data-case="silenthouse">
          <span class="inv-badge lv-high">HIGH</span>
          <div class="inv-date">Неизвестно</div>
          <div class="inv-title">Тихий Дом</div>
          <div class="inv-sub">ИНКУБАТОР КРИПТИДОВ</div>
          <div class="inv-desc">Загадочное место, где рождаются криптиды. Тесно связан с Полуночным Человеком.</div>
          <div class="inv-more">▶ Подробнее</div>
        </div>
        <div class="invest-card" data-case="midnightman">
          <span class="inv-badge lv-ext">EXTREME</span>
          <div class="inv-date">Активен</div>
          <div class="inv-title">Полуночный Человек</div>
          <div class="inv-sub">СУЩНОСТЬ</div>
          <div class="inv-desc">Опасная сущность, рождающаяся из Тёмной Волны. Проявляется в моменты пиковой нестабильности.</div>
          <div class="inv-more">▶ Подробнее</div>
        </div>
      </div>
    </section>

    <!-- FOOTER -->
    <footer id="footer">
      <div class="footer-glow"></div>
      <div class="footer-divider"></div>
      <div class="footer-h">ПРИСОЕДИНЯЙТЕСЬ К РАССЛЕДОВАНИЯМ</div>
      <p class="footer-desc">Оставайтесь на связи — новые видео, стримы и срочные включения с мест аномалий.</p>
      <div class="footer-links">
        <a href="https://youtube.com/@Nevobrait" target="_blank" rel="noopener" class="fl-yt">▶ YouTube</a>
        <a href="https://t.me/nevobrait" target="_blank" rel="noopener" class="fl-tg">✈ Telegram</a>
        <a href="https://discord.com/add_friend?friend_code=nevobrait" target="_blank" rel="noopener" class="fl-dc">💬 Discord</a>
        <a href="https://t.me/natverket" target="_blank" rel="noopener" class="fl-tg">👤 Личный TG</a>
        <a href="mailto:nevobrait@proton.me" class="fl-ml">✉ Email</a>
      </div>
      <p class="footer-warn">⚠️ Все ссылки ведут только на официальные ресурсы NEVOBRAIT.</p>
      <p class="footer-note">Другие аккаунты не являются официальными.</p>
      <p class="footer-copy">© 2026 NEVOBRAIT · Секретная база данных · 18+</p>
      <p class="footer-visit">[ ПОСЕТИТЕЛЬ: #<span id="visitNum">000001</span> ]</p>
    </footer>

  </div><!-- .wrap -->
</div><!-- #site -->

<!-- MODAL -->
<div class="modal-overlay" id="modal">
  <div class="modal-box">
    <div class="modal-line modal-line-t"></div>
    <div class="modal-line modal-line-b"></div>
    <button class="modal-close" id="modalClose">×</button>
    <div class="modal-level-row">
      <span class="modal-level-label">УРОВЕНЬ УГРОЗЫ:</span>
      <span class="inv-badge" id="modalBadge"></span>
    </div>
    <div class="modal-title" id="modalTitle"></div>
    <div class="modal-sub" id="modalSub"></div>
    <div class="modal-text" id="modalText"></div>
    <div class="modal-id" id="modalId"></div>
  </div>
</div>

<script>
/* ═══════════════════════════════════════
   CURSOR — pure JS, no touch detection in logic
═══════════════════════════════════════ */
(function(){
  var dot  = document.getElementById('nv-dot');
  var ring = document.getElementById('nv-ring');
  var mx   = window.innerWidth / 2, my = window.innerHeight / 2;
  var rx   = mx, ry = my;

  window.addEventListener('mousemove', function(e){
    mx = e.clientX; my = e.clientY;
    dot.style.left = mx + 'px';
    dot.style.top  = my + 'px';
  });

  (function loop(){
    rx += (mx - rx) * 0.18;
    ry += (my - ry) * 0.18;
    ring.style.left = rx + 'px';
    ring.style.top  = ry + 'px';
    requestAnimationFrame(loop);
  })();

  document.addEventListener('mouseover', function(e){
    var t = e.target;
    if(t.closest('a') || t.closest('button') || t.tagName==='INPUT'){
      ring.style.transform   = 'translate(-50%,-50%) scale(1.65)';
      ring.style.borderColor = 'rgba(255,255,255,.8)';
      dot.style.background   = '#fff';
      dot.style.boxShadow    = '0 0 12px #fff';
    }
  });
  document.addEventListener('mouseout', function(){
    ring.style.transform   = 'translate(-50%,-50%) scale(1)';
    ring.style.borderColor = 'rgba(255,0,0,.6)';
    dot.style.background   = '#ff0000';
    dot.style.boxShadow    = '0 0 12px #ff0000,0 0 24px rgba(255,0,0,.35)';
  });
})();

/* ═══════════════════════════════════════
   PRELOADER
═══════════════════════════════════════ */
(function(){
  var bar  = document.getElementById('preBar');
  var pre  = document.getElementById('preloader');
  var site = document.getElementById('site');
  var s    = Date.now(), dur = 4500;

  (function tick(){
    var p = Math.min((Date.now()-s)/dur*100, 100);
    bar.style.width = p + '%';
    if(p < 100){ requestAnimationFrame(tick); }
    else{
      setTimeout(function(){
        pre.classList.add('out');
        site.classList.add('show');
      }, 500);
    }
  })();
})();

/* ═══════════════════════════════════════
   MATRIX CANVAS
═══════════════════════════════════════ */
(function(){
  var c = document.getElementById('matrix');
  var x = c.getContext('2d');
  var W, H, cols, drops;
  var chars = 'アイウエオカキクケコサシスセソタチツテトナニヌネノ0123456789ABCDEF';

  function resize(){
    W = c.width  = window.innerWidth;
    H = c.height = window.innerHeight;
    cols  = Math.floor(W / 20);
    drops = Array.from({length:cols}, function(){ return Math.floor(Math.random()*-60); });
  }
  window.addEventListener('resize', resize);
  resize();

  (function draw(){
    x.fillStyle = 'rgba(0,0,0,0.045)';
    x.fillRect(0,0,W,H);
    x.font = '15px monospace';
    for(var i=0;i<cols;i++){
      var ch  = chars[Math.floor(Math.random()*chars.length)];
      var px  = i*20, py = drops[i]*20;
      var g   = x.createRadialGradient(px,py,0,px,py,12);
      g.addColorStop(0,   '#ff2222');
      g.addColorStop(0.5, '#8b0000');
      g.addColorStop(1,   'transparent');
      x.fillStyle  = g;
      x.shadowColor = '#ff0000';
      x.shadowBlur  = 10;
      x.fillText(ch, px, py);
      x.shadowBlur  = 0;
      if(py > H && Math.random() > 0.975) drops[i] = 0;
      drops[i]++;
    }
    requestAnimationFrame(draw);
  })();
})();

/* ═══════════════════════════════════════
   ONLINE COUNT
═══════════════════════════════════════ */
var onlineEl = document.getElementById('onlineCnt');
function updateOnline(){ onlineEl.textContent = Math.floor(Math.random()*7)+1; }
updateOnline();
setInterval(updateOnline, 5000);

/* ═══════════════════════════════════════
   MOBILE MENU
═══════════════════════════════════════ */
document.getElementById('menuBtn').addEventListener('click', function(){
  document.getElementById('mainNav').classList.toggle('open');
});

/* ═══════════════════════════════════════
   HERO GLITCH
═══════════════════════════════════════ */
(function(){
  var h   = document.getElementById('heroH1');
  var orig = 'NEVOBRAIT';
  var gc  = '!<>-_\\/[]{}—=+*^?#';
  setInterval(function(){
    if(Math.random() > 0.9){
      var a = orig.split('');
      a[Math.floor(Math.random()*a.length)] = gc[Math.floor(Math.random()*gc.length)];
      h.textContent = a.join('');
      setTimeout(function(){ h.textContent = orig; }, 150);
    }
  }, 200);
})();

/* ═══════════════════════════════════════
   ENCRYPTED FILE SHAKE
═══════════════════════════════════════ */
document.getElementById('encFile').addEventListener('click', function(){
  this.classList.remove('shake');
  void this.offsetWidth;
  this.classList.add('shake');
});

/* ═══════════════════════════════════════
   TERMINAL
═══════════════════════════════════════ */
(function(){
  var body    = document.getElementById('termBody');
  var input   = document.getElementById('termInput');
  var history = [];
  var hIdx    = -1;

  function log(msg, cls){
    var d = document.createElement('div');
    d.className = cls || 't-neu';
    d.innerHTML = msg;
    body.appendChild(d);
    body.scrollTop = body.scrollHeight;
  }

  function later(msg, cls, ms){
    setTimeout(function(){ log(msg, cls); }, ms || 1200 + Math.random()*800);
  }

  function run(raw){
    var trimmed = raw.trim();
    if(!trimmed) return;
    var parts  = trimmed.toLowerCase().split(' ');
    var cmd    = parts[0];
    var args   = parts.slice(1);
    history.push(trimmed);
    hIdx = history.length;
    log('<span style="color:#fff">root@nevobrait:~# ' + trimmed + '</span>', 't-cmd');

    switch(cmd){
      case 'help':
        log('ДОСТУПНЫЕ КОМАНДЫ:', 't-sys');
        log('&nbsp;&nbsp;youtube · telegram · discord · email · about · contact', 't-neu');
        log('&nbsp;&nbsp;ghost · cryptid · files · archive · status · whoami · online', 't-neu');
        log('&nbsp;&nbsp;ping [цель] · whois [домен] · developer · darkwave', 't-neu');
        log('&nbsp;&nbsp;adkinator · silenthouse · midnightman · scan · crack', 't-neu');
        log('&nbsp;&nbsp;decrypt · hack [цель] · exploit · matrix · clear', 't-neu');
        break;
      case 'youtube':
        log('▶ Открываю YouTube канал...', 't-ok');
        window.open('https://youtube.com/@Nevobrait','_blank','noopener');
        break;
      case 'telegram':
        log('✈ Открываю Telegram @nevobrait...', 't-ok');
        window.open('https://t.me/nevobrait','_blank','noopener');
        break;
      case 'discord':
        log('💬 Открываю Discord...', 't-ok');
        window.open('https://discord.com/add_friend?friend_code=nevobrait','_blank','noopener');
        break;
      case 'email':
        log('✉ Email: nevobrait@proton.me', 't-ok');
        window.open('mailto:nevobrait@proton.me');
        break;
      case 'contact':
        log('📡 YouTube: https://youtube.com/@Nevobrait', 't-ok');
        log('📡 Telegram: @nevobrait | Discord: nevobrait', 't-ok');
        log('📡 Личный TG: @natverket | Email: nevobrait@proton.me', 't-neu');
        break;
      case 'about':
        log('NEVOBRAIT — канал о паранормальных расследованиях. 2026 г.', 't-neu');
        log('Главный противник: Полуночный Человек. Угроза: EXTREME.', 't-err');
        break;
      case 'ghost':
        log('👻 Обнаружена эктоплазма. Уровень страха: ' + (60+Math.floor(Math.random()*35)) + '%.', 't-err');
        break;
      case 'cryptid':
        log('🦴 Следы криптида зафиксированы. Адкинатор активен в сети.', 't-err');
        break;
      case 'files':
        log('📁 ЗАСЕКРЕЧЕННЫЕ ФАЙЛЫ:', 't-sys');
        log('&nbsp;&nbsp;adkinator_dossier.dox &nbsp; [ОТКРЫТО]', 't-ok');
        log('&nbsp;&nbsp;dark_wave_logs.doc &nbsp;&nbsp;&nbsp; [ОТКРЫТО]', 't-ok');
        log('&nbsp;&nbsp;silent_house_report.pdf [ЧАСТИЧНО]', 't-warn');
        log('&nbsp;&nbsp;midnight_man_case.enc &nbsp; [🔒 ЗАШИФРОВАНО]', 't-err');
        log('&nbsp;&nbsp;ghost_activity.log &nbsp;&nbsp;&nbsp; [ОТКРЫТО]', 't-ok');
        break;
      case 'archive':
        log('📂 Активных дел: 4', 't-sys');
        log('&nbsp;&nbsp;[EXTREME] Адкинатор &nbsp;&nbsp;&nbsp;[UNKNOWN] Тёмная Волна', 't-neu');
        log('&nbsp;&nbsp;[HIGH] &nbsp;&nbsp;Тихий Дом &nbsp;&nbsp;[EXTREME] Полуночный Человек', 't-neu');
        break;
      case 'status':
        log('✅ Ядро стабильно. NEVOBRAIT онлайн. Страх: 100%.', 't-ok');
        break;
      case 'whoami':
        log('👤 USER: GUEST_ANONYMOUS', 't-sys');
        log('&nbsp;&nbsp;ACCESS LEVEL: 0 (CLASSIFIED READ-ONLY)', 't-warn');
        break;
      case 'online':
        log('👥 Агентов онлайн: ' + (Math.floor(Math.random()*7)+1), 't-ok');
        break;
      case 'developer':
        log('👨‍💻 Разработчик: NEVOBRAIT. Система: COLD OS v9.9. 2026.', 't-sys');
        break;
      case 'darkwave':
        log('🌑 Тёмная Волна: циклическая аномалия. Пики: 2006, 2011, 2018–2019.', 't-neu');
        log('&nbsp;&nbsp;Следующая фаза: НЕИЗВЕСТНА. Статус: АКТИВНА.', 't-err');
        break;
      case 'adkinator':
        log('🤖 Адкинатор: появление 2001, активен с 2016. Домены: adkinator666.xyz.', 't-neu');
        log('&nbsp;&nbsp;Уровень угрозы: EXTREME. Статус: НАБЛЮДЕНИЕ.', 't-warn');
        break;
      case 'silenthouse':
        log('🏚️ Тихий Дом: инкубатор криптидов. Локация неизвестна.', 't-neu');
        log('&nbsp;&nbsp;Связан с Полуночным Человеком. Статус: ЧАСТИЧНО РАССЕКРЕЧЕНО.', 't-warn');
        break;
      case 'midnightman':
        log('🌙 Полуночный Человек: EXTREME. Рождается из Тёмной Волны.', 't-err');
        log('&nbsp;&nbsp;Не выходи в полночь.', 't-err');
        break;
      case 'ping':
        var tgt = args.join(' ') || 'nevobrait.base';
        log('[SYSTEM] ping ' + tgt + '...', 't-sys');
        later('🏓 Ответ от ' + tgt + ': ' + (8+Math.floor(Math.random()*40)) + ' мс.', 't-ok');
        break;
      case 'whois':
        if(args.length){
          var prov = ['Rostelecom','Cloudflare','AWS','MTS','Google Cloud'][Math.floor(Math.random()*5)];
          var ip   = [1,2,3,4].map(function(){return Math.floor(Math.random()*254)+1;}).join('.');
          log('🔍 WHOIS ' + args[0] + ': провайдер ' + prov + ' · IP: ' + ip, 't-neu');
        } else {
          log('⚠️ Укажите домен. Пример: whois google.com', 't-warn');
        }
        break;
      case 'scan':
        log('[SYSTEM] Инициализация сканера аномалий...', 't-sys');
        later('[SYSTEM] Анализ сектора 7G...', 't-neu', 600);
        later('🔍 Обнаружено ' + (Math.floor(Math.random()*5)+1) + ' аномалий в радиусе 50м.', 't-err', 1600);
        break;
      case 'crack':
        log('[SYSTEM] Инициализация взлома...', 't-sys');
        later(Math.random()>0.4
          ? '💥 Взлом успешен. Доступ получен. Данные извлечены.'
          : '❌ CRITICAL FAILURE: защита сработала. Инцидент задокументирован.',
          Math.random()>0.4 ? 't-ok' : 't-err'
        );
        break;
      case 'decrypt':
        log('[SYSTEM] Применение ключа AES-256...', 't-sys');
        later('🔓 Расшифровка завершена. Данные восстановлены.', 't-ok');
        break;
      case 'hack':
        var htgt = args.join(' ') || 'неизвестный узел';
        log('[SYSTEM] Начинаю атаку на ' + htgt + '...', 't-sys');
        later('💻 Доступ к ' + htgt + ' получен. Данные загружены.', 't-err');
        break;
      case 'exploit':
        log('[SYSTEM] Анализ уязвимостей...', 't-sys');
        later('⚡ Уязвимость CVE-2026-NEVOBR эксплуатирована успешно.', 't-err');
        break;
      case 'matrix':
        var mc = 'アイウエオカキクケコ0123456789ABCDEF';
        for(var i=0;i<14;i++){
          (function(idx){
            setTimeout(function(){
              var line='';
              for(var j=0;j<44;j++) line+=mc[Math.floor(Math.random()*mc.length)];
              log(line, 't-mat');
            }, idx*75);
          })(i);
        }
        setTimeout(function(){ log('🔴 Матричный дамп завершён.', 't-sys'); }, 1200);
        break;
      case 'clear':
        body.innerHTML = '';
        log('[SYSTEM] Терминал очищен.', 't-sys');
        break;
      case 'sudo':
        log('⚠️ ЭТОТ ИНЦИДЕНТ БУДЕТ ДОЛОЖЕН.', 't-err');
        break;
      default:
        log('[ERROR] "' + cmd + '" не распознана. Введите <strong>help</strong>.', 't-err');
    }
  }

  input.addEventListener('keydown', function(e){
    if(e.key === 'ArrowUp'){
      e.preventDefault();
      if(hIdx > 0){ hIdx--; input.value = history[hIdx]||''; }
    } else if(e.key === 'ArrowDown'){
      e.preventDefault();
      if(hIdx < history.length-1){ hIdx++; input.value = history[hIdx]||''; }
      else{ hIdx=history.length; input.value=''; }
    } else if(e.key === 'Enter'){
      var v = input.value.trim();
      if(!v) return;
      run(v);
      input.value = '';
    }
  });

  // Click anywhere in terminal = focus input
  document.querySelector('.terminal-wrap').addEventListener('click', function(){
    input.focus();
  });
})();

/* ═══════════════════════════════════════
   INVESTIGATIONS MODAL
═══════════════════════════════════════ */
(function(){
  var cases = {
    adkinator:{
      title:'Адкинатор', sub:'ЦИФРОВОЙ КРИПТИД // 2001–н.в.',
      level:'EXTREME', cls:'lv-ext',
      text:'Нестабильная сетевая сущность, появившаяся в 2001 году и активизировавшаяся с 2016. Проявляет агрессию в цифровой среде, искажает данные, вызывает программные сбои. Домены: adkinator666.xyz. Присутствие фиксируется в виде визуальных артефактов и непрошеных уведомлений.'
    },
    darkwave:{
      title:'Тёмная Волна', sub:'ЦИКЛИЧЕСКАЯ АНОМАЛИЯ // 2006–н.в.',
      level:'UNKNOWN', cls:'lv-unk',
      text:'Циклическое паранормальное явление, выступающее катализатором активности криптидов. Пики зафиксированы в 2006, 2011, 2018–2019 годах. Следующая фаза неизвестна. Открывает разрывы в цифровой и физической реальности, через которые проникают сущности.'
    },
    silenthouse:{
      title:'Тихий Дом', sub:'ИНКУБАТОР КРИПТИДОВ // ДАТА НЕИЗВЕСТНА',
      level:'HIGH', cls:'lv-high',
      text:'Загадочное место или состояние, где зарождаются и набирают силу криптиды. Тесно связан с Полуночным Человеком. В ряде отчётов описывается как «цифровая матка» глубокого интернета. Точные координаты не установлены. Контакт с объектом вызывает паранормальные эффекты.'
    },
    midnightman:{
      title:'Полуночный Человек', sub:'СУЩНОСТЬ // АКТИВЕН',
      level:'EXTREME', cls:'lv-ext',
      text:'Одна из наиболее опасных задокументированных сущностей. Рождается непосредственно из энергии Тёмной Волны в моменты пиковой нестабильности. Характеризуется навязчивым присутствием, шёпотом и прогрессирующим психологическим воздействием на наблюдателя. Не выходи в полночь.'
    }
  };

  var overlay   = document.getElementById('modal');
  var closeBtn  = document.getElementById('modalClose');

  document.querySelectorAll('.invest-card').forEach(function(card){
    card.addEventListener('click', function(){
      var d = cases[card.dataset.case];
      if(!d) return;
      document.getElementById('modalBadge').className = 'inv-badge ' + d.cls;
      document.getElementById('modalBadge').textContent = d.level;
      document.getElementById('modalTitle').textContent = d.title;
      document.getElementById('modalSub').textContent   = d.sub;
      document.getElementById('modalText').textContent  = d.text;
      document.getElementById('modalId').textContent    = 'ID: ' + card.dataset.case.toUpperCase() + '_LOG';
      overlay.classList.add('open');
    });
  });

  function closeModal(){ overlay.classList.remove('open'); }
  closeBtn.addEventListener('click', closeModal);
  overlay.addEventListener('click', function(e){ if(e.target===overlay) closeModal(); });
  document.addEventListener('keydown', function(e){ if(e.key==='Escape') closeModal(); });
})();

/* ═══════════════════════════════════════
   VISITOR COUNTER
═══════════════════════════════════════ */
(function(){
  var v = parseInt(localStorage.getItem('nvb_v')||'10471',10)+1;
  localStorage.setItem('nvb_v', v);
  document.getElementById('visitNum').textContent = String(v).padStart(6,'0');
})();

/* ═══════════════════════════════════════
   RANDOM GLITCH FLASH
═══════════════════════════════════════ */
var flash = document.querySelector('.red-flash');
setInterval(function(){
  if(Math.random()<0.04){
    flash.style.background = 'rgba(255,0,0,'+(0.03+Math.random()*0.06)+')';
    setTimeout(function(){ flash.style.background='rgba(255,0,0,0)'; }, 200);
  }
}, 2500);
</script>
</body>
</html>
