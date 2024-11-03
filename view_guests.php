<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#">
                    <em class="fa fa-home"></em>
                </a></li>
            <li class="active">View Guests</li>
        </ol>
    </div><!--/.row-->

    <br>

    <div class="row">
        <div class="col-lg-12">
            <div id="success"></div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">All Guest List
                </div>
                <div class="panel-body">
                    <?php
                    if (isset($_GET['error'])) {
                        echo "<div class='alert alert-danger'>
                                <span class='glyphicon glyphicon-info-sign'></span> &nbsp; Error on Delete !
                            </div>";
                    }
                    if (isset($_GET['success'])) {
                        echo "<div class='alert alert-success'>
                                <span class='glyphicon glyphicon-info-sign'></span> &nbsp; Successfully Delete !
                            </div>";
                    }
                    ?>
                    <table class="table table-striped table-bordered table-responsive" cellspacing="0" width="100%"
                           id="guests">
                        <thead>
                        <tr>
                            <th>Customer Id</th>
                            <th>Customer Name</th>
                            <th>Customer Email</th>
                            <th>Contact No</th>
                            <th>Room No</th>
                            <th>Room Type</th>
                            <th>Room Price</th>
                            <th>Check In Date</th>
                            <th>Check Out Date</th>
                            <th>Period of Stay</th>
                            <th>Total Bill</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $guests_query = "SELECT c.customer_id, c.customer_name, c.email, c.contact_no, r.room_no, r.room_type_id, rt.price AS room_price, b.check_in, b.check_out, DATEDIFF(STR_TO_DATE(b.check_out, '%d-%m-%Y'), STR_TO_DATE(b.check_in, '%d-%m-%Y')) AS period, rt.price * DATEDIFF(STR_TO_DATE(b.check_out, '%d-%m-%Y'), STR_TO_DATE(b.check_in, '%d-%m-%Y')) AS total_bill FROM customer c JOIN booking b ON c.customer_id = b.customer_id JOIN room r ON b.room_id = r.room_id JOIN room_type rt ON r.room_type_id = rt.room_type_id";
                        $guests_result = mysqli_query($connection, $guests_query);
                        if (mysqli_num_rows($guests_result) > 0) {
                            while ($guests = mysqli_fetch_assoc($guests_result)) { ?>
                                <tr>
                                    <td><?php echo $guests['customer_id'] ?></td>
                                    <td><?php echo $guests['customer_name'] ?></td>
                                    <td><?php echo $guests['email'] ?></td>
                                    <td><?php echo $guests['contact_no'] ?></td>
                                    <td><?php echo $guests['room_no'] ?></td>
                                    <td><?php echo $guests['room_type_id'] ?></td>
                                    <td><?php echo $guests['room_price'] ?></td>
                                    <td><?php echo $guests['check_in'] ?></td>
                                    <td><?php echo $guests['check_out'] ?></td>
                                    <td><?php echo $guests['period'] ?></td>
                                    <td><?php echo $guests['total_bill'] ?></td>
                                </tr>
                            <?php }
                        } else {
                            echo "No guests";
                        }
                        ?>

                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
        <p class="back-link">Developed By Pradeep Kumar and Navyaprabha</p>
        </div>
    </div>

</div>    <!--/.main-->



