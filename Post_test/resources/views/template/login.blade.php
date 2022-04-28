<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <link rel="stylesheet" href="{{ asset('template') }}/css/style_login.css">
</head>

<body>
    <div class="container">
        <img class="image" src="{{ asset('template') }}/img/griya.png">
        <link href="{{ asset('template') }}/https://fonts.googleapis.com/css2?family=Poppins:wght@500;700&display=swap" rel="stylesheet">
        <h1>LOGIN</h1>
        <form>
            <label>Email</label><br>
            <input type="email"><br>
            <label>Password</label><br>
            <input type="password"><br>
            <legend id=”forgot-pass”>Lupa Password?</legend></a><br>
            <input id="submit-btn" type="submit" name="submit" value="MASUK" />Tidak punya akun?&nbsp;<a href="daftar" id="signup">Daftar</a>
        </form>
    </div>
</body>

</html>