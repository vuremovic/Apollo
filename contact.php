<?php 
	print '
	<h1>Contact Form</h1>
	<div id="contact">
		<iframe src="https://maps.google.com/maps?q=zagreb%2C%20balokovi%C4%87eva%209&t=&z=13&ie=UTF8&iwloc=&output=embed" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
		<form action="sent-contact.php" id="contact_form" name="contact_form" method="POST">
							
			<label for="email">Your E-mail *</label>
			<input type="email" id="email" name="email" placeholder="Your e-mail.." required>
			<label for="text">Subject</label>
			<textarea id="text" name="text" placeholder="Write something.." style="height:200px"></textarea>
			<input type="submit" value="Submit">
		</form>
	</div>';
	
	
?>