<div class="col-md-3 left_col menu_fixed">
	<div class="left_col scroll-view">
 		<div class="navbar nav_title" style="border: 20;">
		 
		 <!-- logo info -->
		<div class="profile">
			<a href="<?php echo base_url(); ?>" class="site_title"><span style="font-size: 24px; mt-20"><?php echo 'APOTEK ASILMI' ?></span></a>
		</div>
		
		<div class="clearfix"></div>

		<!-- menu profile quick info -->
		<div class="profile clearfix">
              <div class="profile_pic">
                <img src="<?= base_url(''); ?>assets/images/avatar.png" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>user</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

		<!-- /menu profile quick info -->
		<br>
		<!-- Sidebar Menu -->
		<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
			<div class="menu_section">
				<h3></h3>
				<ul class="nav side-menu">
					<li><a href="<?php echo base_url('user') ?>"><i class="fa fa-home"></i> Beranda </a></li>
					<li><a><i class="fa fa-medkit"></i> Obat <span class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="<?php echo base_url('user/table_med') ?>">Lihat Obat</a></li>
							<li><a href="<?php echo base_url('user/table_exp') ?>">Obat Kedaluwarsa</a></li>
							<li><a href="<?php echo base_url('user/table_stock') ?>">Obat Habis</a></li>
							
						</ul>
					</li>
					<li><a><i class="fa fa-edit"></i> Penjualan <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    	<li><a href="<?php echo base_url('user/form_invoice') ?>">Tambah Penjualan</a></li>
                    	<li><a href="<?php echo base_url('user/table_invoice') ?>">Lihat Penjualan</a></li>
                    	<li><a href="<?php echo base_url('user/invoice_report') ?>">Grafik Penjualan</a></li>
                    </ul>
                  </li>

					<li><a href="<?php echo base_url('user/report') ?>"><i class="fa fa-bar-chart"></i> Laporan </a></li>

				</ul>
			</div>
		</div>
		
		</div>
	</div>
</div>