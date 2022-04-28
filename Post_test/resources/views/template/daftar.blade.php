<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIGNUP</title>
    <link rel="stylesheet" href="{{ asset('template') }}/css/style_signup.css">
</head>

<body>
    <div class="container">
        <img class="image" src="{{ asset('template') }}/img/griya.png">
        <link href="{{ asset('template') }}/https://fonts.googleapis.com/css2?family=Poppins:wght@500;700&display=swap" rel="stylesheet">
        <h1>DAFTAR</h1>
        <form>
            <label>Nama</label><br>
            <input type="text"><br>
            <label>No Telepon</label><br>
            <input type="number"><br>
            <label>Email</label><br>
            <input type="email"><br>
            <label>Kata Sandi</label><br>
            <input type="password"><br>
            <input id="submit-btn" type="submit" name="submit" value="DAFTAR" />
        </form>
    </div>
</body>

</html>