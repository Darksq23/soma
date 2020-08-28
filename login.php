<?php require 'header.php' ?>

<div class="container box">
    <div class="form__box">
        <h3 class="h">Login</h3>
        <div class="form__">
        <img src="static/svg/user-circle.png" alt="user__icon" class="user__icon">
            <form action="traitement.php" method="post">
                <input type="text" name="username" id="username" placeholder="username">
                <input type="password" name="password" id="password" placeholder="password">
                <input type="submit" value="Sign in" class="btn">
                <p class="or">or</p>
                <a href="create_account.php" class="sec-btn">create account</a>
            </form>
        </div>
    </div>
</div>

<?php require 'footer.php' ?>
