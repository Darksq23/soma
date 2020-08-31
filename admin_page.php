<?php
session_start();
?>

<?php
require "header.php";
require "basis.php";
?>

    <div class="container">
        <div class="not_logged">
            <h1 class="title">Login</h1>
            <div class="form">
                <form action="traitement.php?action=login" method="post">
                    <label> Username :
                        <input type="text" name="username" required>
                    </label>
                    <label> Password :
                        <input type="password" name="password" required>
                    </label>
                    <input type="submit" value="Login" class="btn">
                </form>
            </div>
        </div>

        <div class="dashboard" id="hide">

            <div class="admin_action_panel">
                <ul>
                    <li><a href="add.php?user=<?php if (isset($_SESSION['username'])) { echo $_SESSION['username']; }; ?>" id="add__lyrics" class="action links">Add lyrics</a></li>
                    <li><a href="traitement.php?action=logout" class="action links">Logout</a></li>
                </ul>
            </div>
            <?php
            $query = 'SELECT * FROM lyrics';
            $result = $dbconnection->query($query);
            while ($data = $result->fetch()) {
                ?>
                <div class="song__box">
                    <table class="content__table">
                        <tr class="__row">
                            <td class="table__element"><?php echo $data['song_name']; ?></td>
                            <td class="table__element"><?php echo $data['artist']; ?></td>
                            <td class="table__element"><?php echo $data['uploader']; ?></td>
                            <td class="table__element"><?php echo $data['genre']; ?></td>
                            <td class="table__element"><a href="traitement.php?action=edit" id="edit" class="links action__btn">Edit</a>
                            </td>
                            <td class="table__element"><a href="traitement.php?action=delete&id=<?php echo $data['id']; ?>" id="edit" class="links action__btn">Delete</a>
                            </td>
                        </tr>
                    </table>
                </div>
                <?php
            }
            $result->closeCursor();
            ?>
        </div>
    </div>
    <script type="text/javascript" src="static/js/app.js"></script>
    <script type="text/javascript">

        document.querySelector('.dashboard').style.display = 'none';
        document.querySelector('#add__lyrics').style.display = 'none';
        document.querySelector('.not_logged').style.display = 'none';

        var user = "<?php if(isset($_SESSION['username'])) { echo $_SESSION['username']; } else echo ''; ?>";

        if (user === "") {
            document.querySelector('.not_logged').style.display = 'block';
        }
        else {
            console.log('vous etes connectés en tant que <?php if(isset($_SESSION['username'])) { echo $_SESSION['username']; } else echo ''; ?>');
            document.querySelector('.dashboard').style.display = 'block';
            document.querySelector('#add__lyrics').style.display = 'block';
        }
    </script>
<?php require "footer.php" ?>