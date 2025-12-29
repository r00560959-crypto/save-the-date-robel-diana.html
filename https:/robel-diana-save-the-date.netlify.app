<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Save the Date | Robel & Diana</title>

<style>
body {
  margin: 0;
  height: 100vh;
  background: #f5f2ef;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: "Georgia", serif;
}

.envelope {
  width: 320px;
  height: 220px;
  background: #6b1f2b;
  position: relative;
  border-radius: 8px;
  cursor: pointer;
  box-shadow: 0 20px 40px rgba(0,0,0,0.25);
}

.flap {
  position: absolute;
  top: 0;
  width: 100%;
  height: 110px;
  background: #7a2432;
  clip-path: polygon(0 0, 50% 70%, 100% 0);
  transform-origin: top;
  transition: transform 1s ease;
}

.envelope.open .flap {
  transform: rotateX(180deg);
}

.seal {
  position: absolute;
  top: 90px;
  left: 50%;
  transform: translateX(-50%);
  background: gold;
  width: 55px;
  height: 55px;
  border-radius: 50%;
  color: #5c1a26;
  font-weight: bold;
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 3;
}

.card {
  position: absolute;
  top: 20px;
  left: 10px;
  width: 300px;
  height: 380px;
  background: linear-gradient(
      rgba(107,31,43,0.88),
      rgba(107,31,43,0.88)
    ),
    url("your-photo.jpg");
  background-size: cover;
  background-position: center;
  color: white;
  text-align: center;
  padding: 30px 20px;
  box-sizing: border-box;
  transform: translateY(120px);
  opacity: 0;
  transition: all 1.2s ease;
  border-radius: 12px;
}

.envelope.open .card {
  transform: translateY(-180px);
  opacity: 1;
}

h1 {
  font-family: "Brush Script MT", cursive;
  font-size: 42px;
  margin: 30px 0 10px;
}

p {
  font-size: 16px;
  margin: 8px 0;
  letter-spacing: 1px;
}
</style>
</head>

<body>

<div class="envelope" onclick="this.classList.toggle('open')">
  <div class="flap"></div>
  <div class="seal">R & D</div>

  <div class="card">
    <p>SAVE THE DATE</p>
    <h1>Robel & Diana</h1>
    <p>are getting married</p>
    <p><strong>Sunday | 19 July 2026</strong></p>
    <p>Invitation & details to follow</p>
  </div>
</div>

</body>
</html>
