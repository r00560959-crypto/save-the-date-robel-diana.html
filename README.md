<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Save the Date | Robel & Diana</title>

<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;700&family=Montserrat:wght@300;400&display=swap" rel="stylesheet">

<style>
body {
  margin: 0;
  font-family: 'Montserrat', sans-serif;
  background: radial-gradient(circle, #f7f2ef, #e7dcd6);
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

/* Envelope */
.envelope {
  width: 340px;
  height: 230px;
  background: linear-gradient(145deg, #8c2533, #6a1621);
  position: relative;
  cursor: pointer;
  border-radius: 10px;
  box-shadow: 0 25px 50px rgba(0,0,0,0.35);
  transition: transform 0.6s;
}

.envelope:hover {
  transform: scale(1.03);
}

/* Flap */
.flap {
  position: absolute;
  top: 0;
  width: 100%;
  height: 55%;
  background: linear-gradient(145deg, #9a2b3a, #7b1e2b);
  clip-path: polygon(0 0, 100% 0, 50% 100%);
  transform-origin: top;
  transition: transform 1s ease;
  z-index: 3;
}

/* Card */
.card {
  position: absolute;
  top: 12px;
  left: 12px;
  width: 316px;
  height: 460px;
  background: #ffffff;
  border-radius: 10px;
  padding: 35px;
  box-sizing: border-box;
  text-align: center;
  transform: translateY(130px);
  opacity: 0;
  transition: all 1s ease;
  z-index: 1;
}

.card h1 {
  font-family: 'Playfair Display', serif;
  color: #7b1e2b;
  letter-spacing: 2px;
}

.card h2 {
  font-family: 'Playfair Display', serif;
  margin: 15px 0;
  font-weight: 500;
}

.card p {
  font-size: 14px;
  line-height: 1.7;
  color: #444;
}

.divider {
  width: 60px;
  height: 2px;
  background: #7b1e2b;
  margin: 22px auto;
}

/* RSVP */
.rsvp {
  margin-top: 18px;
}

.rsvp a {
  display: inline-block;
  padding: 12px 22px;
  background: #7b1e2b;
  color: #fff;
  text-decoration: none;
  border-radius: 30px;
  font-size: 13px;
  letter-spacing: 1px;
  transition: background 0.3s;
}

.rsvp a:hover {
  background: #5f141d;
}

/* QR */
.qr {
  margin-top: 15px;
}

.qr img {
  width: 80px;
}

/* Open state */
.envelope.open .flap {
  transform: rotateX(180deg);
}

.envelope.open .card {
  transform: translateY(-180px);
  opacity: 1;
}
</style>
</head>

<body>

<!-- Background Music -->
<audio id="music" loop>
  <source src="https://cdn.pixabay.com/audio/2022/03/15/audio_5b8c4c2d08.mp3" type="audio/mpeg">
</audio>

<div class="envelope" onclick="openInvite(this)">
  <div class="flap"></div>

  <div class="card">
    <h1>SAVE THE DATE</h1>
    <div class="divider"></div>

    <p>With joyful hearts</p>

    <h2>Robel & Diana</h2>

    <p>invite you to save the date<br>as they begin their forever together</p>

    <div class="divider"></div>

    <p><strong>Sunday</strong><br>19 July 2026</p>
    <p>Kampala, Uganda</p>

    <div class="divider"></div>

    <p style="font-size:12px; letter-spacing:1px;">
      FORMAL INVITATION TO FOLLOW
    </p>

    <div class="rsvp">
      <a href="https://wa.me/256000000000" target="_blank">RSVP VIA WHATSAPP</a>
    </div>

    <div class="qr">
      <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=SaveTheDate-Robel-Diana" alt="QR Code">
    </div>
  </div>
</div>

<script>
function openInvite(el) {
  el.classList.toggle('open');
  document.getElementById('music').play();
}
</script>

</body>
</html>
