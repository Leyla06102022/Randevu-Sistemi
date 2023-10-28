<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Sağlık Randevu Sistemi</title>
</head>
<body>
    <header>
        <h2>Sağlık Randevu Sistemi</h2>
    </header>
    
    <div class="tableOuter">
        <h1>Üye ol</h1>
        <form action="islem.php" method="post">
        <div class="user">
                <input type="text" name="kullanici_adsoyad" placeholder="Ad soyad">
            </div>
            <div class="user">
                <input type="text" name="kullanici_tc" placeholder="Tc kimlik no">
            </div>
            <div class="pass">
                <input type="password"name="kullanici_password" placeholder="Şifre">
            </div>
            <button type="submit"class="sub" id="giris" name="kullanicikaydet">Üye ol</button>
            <br>
        </form>
        <a href="index.php"><button type="submit" class="sub" id="uye">Geri çık</button></a>
    </div>
</body>
</html>