<?php 
	
	#Add missions
	if (isset($_POST['_action_']) && $_POST['_action_'] == 'add_missions') {
		$_SESSION['message'] = '';
		# htmlspecialchars — Convert special characters to HTML entities
		# http://php.net/manual/en/function.htmlspecialchars.php
		$query  = "INSERT INTO missions (title, description, archive)";
		$query .= " VALUES ('" . htmlspecialchars($_POST['title'], ENT_QUOTES) . "', '" . htmlspecialchars($_POST['description'], ENT_QUOTES) . "', '" . $_POST['archive'] . "')";
		$result = @mysqli_query($MySQL, $query);
		
		$ID = mysqli_insert_id($MySQL);
		
		# picture
        if($_FILES['picture']['error'] == UPLOAD_ERR_OK && $_FILES['picture']['name'] != "") {
                
			# strtolower - Returns string with all alphabetic characters converted to lowercase. 
			# strrchr - Find the last occurrence of a character in a string
			$ext = strtolower(strrchr($_FILES['picture']['name'], "."));
			
            $_picture = $ID . '-' . rand(1,100) . $ext;
			copy($_FILES['picture']['tmp_name'], "missions/".$_picture);
			
			if ($ext == '.jpg' || $ext == '.png' || $ext == '.gif') { # test if format is picture
				$_query  = "UPDATE missions SET picture='" . $_picture . "'";
				$_query .= " WHERE id=" . $ID . " LIMIT 1";
				$_result = @mysqli_query($MySQL, $_query);
				$_SESSION['message'] .= '<p>You successfully added picture.</p>';
			}
        }
		
		
		$_SESSION['message'] .= '<p>You successfully added missions!</p>';
		
		# Redirect
		header("Location: index.php?menu=7&action=2");
	}
	
	# Update missions
	if (isset($_POST['_action_']) && $_POST['_action_'] == 'edit_missions') {
		$query  = "UPDATE missions SET title='" . htmlspecialchars($_POST['title'], ENT_QUOTES) . "', description='" . htmlspecialchars($_POST['description'], ENT_QUOTES) . "', archive='" . $_POST['archive'] . "'";
        $query .= " WHERE id=" . (int)$_POST['edit'];
        $query .= " LIMIT 1";
        $result = @mysqli_query($MySQL, $query);
		
		# picture
        if($_FILES['picture']['error'] == UPLOAD_ERR_OK && $_FILES['picture']['name'] != "") {
                
			# strtolower - Returns string with all alphabetic characters converted to lowercase. 
			# strrchr - Find the last occurrence of a character in a string
			$ext = strtolower(strrchr($_FILES['picture']['name'], "."));
            
			$_picture = (int)$_POST['edit'] . '-' . rand(1,100) . $ext;
			copy($_FILES['picture']['tmp_name'], "missions/".$_picture);
			
			
			if ($ext == '.jpg' || $ext == '.png' || $ext == '.gif') { # test if format is picture
				$_query  = "UPDATE missions SET picture='" . $_picture . "'";
				$_query .= " WHERE id=" . (int)$_POST['edit'] . " LIMIT 1";
				$_result = @mysqli_query($MySQL, $_query);
				$_SESSION['message'] .= '<p>You successfully added picture.</p>';
			}
        }
		
		$_SESSION['message'] = '<p>You successfully changed missions!</p>';
		
		# Redirect
		header("Location: index.php?menu=7&action=2");
	}
	# End update missions
	
	# Delete missions
	if (isset($_GET['delete']) && $_GET['delete'] != '') {
		
		# Delete picture
        $query  = "SELECT picture FROM missions";
        $query .= " WHERE id=".(int)$_GET['delete']." LIMIT 1";
        $result = @mysqli_query($MySQL, $query);
        $row = @mysqli_fetch_array($result);
        @unlink("missions/".$row['picture']); 
		
		# Delete missions
		$query  = "DELETE FROM missions";
		$query .= " WHERE id=".(int)$_GET['delete'];
		$query .= " LIMIT 1";
		$result = @mysqli_query($MySQL, $query);

		$_SESSION['message'] = '<p>You successfully deleted missions!</p>';
		
		# Redirect
		header("Location: index.php?menu=7&action=2");
	}
	# End delete missions
	
	
	#Show missions info
	if (isset($_GET['id']) && $_GET['id'] != '') {
		$query  = "SELECT * FROM missions";
		$query .= " WHERE id=".$_GET['id'];
		$query .= " ORDER BY date DESC";
		$result = @mysqli_query($MySQL, $query);
		$row = @mysqli_fetch_array($result);
		print '
		<h2>missions overview</h2>
		<div class="missions">
			<img src="missions/' . $row['picture'] . '" alt="' . $row['title'] . '" title="' . $row['title'] . '">
			<h2>' . $row['title'] . '</h2>
			' . $row['description'] . '
			<time datetime="' . $row['date'] . '">' . pickerDateToMysql($row['date']) . '</time>
			<hr>
		</div>
		<p><a href="index.php?menu='.$menu.'&amp;action='.$action.'">Back</a></p>';
	}
	
	#Add missions 
	else if (isset($_GET['add']) && $_GET['add'] != '') {
		
		print '
		<h2>Add missions</h2>
		<form action="" id="missions_form" name="missions_form" method="POST" enctype="multipart/form-data">
			<input type="hidden" id="_action_" name="_action_" value="add_missions">
			
			<label for="title">Title *</label>
			<input type="text" id="title" name="title" placeholder="missions title.." required>
			<label for="description">Description *</label>
			<textarea id="description" name="description" placeholder="missions description.." required></textarea>
				
			<label for="picture">Picture</label>
			<input type="file" id="picture" name="picture">
						
			<label for="archive">Archive:</label><br />
            <input type="radio" name="archive" value="Y"> YES &nbsp;&nbsp;
			<input type="radio" name="archive" value="N" checked> NO
			
			<hr>
			
			<input type="submit" value="Submit">
		</form>
		<p><a href="index.php?menu='.$menu.'&amp;action='.$action.'">Back</a></p>';
	}
	#Edit missions
	else if (isset($_GET['edit']) && $_GET['edit'] != '') {
		$query  = "SELECT * FROM missions";
		$query .= " WHERE id=".$_GET['edit'];
		$result = @mysqli_query($MySQL, $query);
		$row = @mysqli_fetch_array($result);
		$checked_archive = false;

		print '
		<h2>Edit missions</h2>
		<form action="" id="missions_form_edit" name="missions_form_edit" method="POST" enctype="multipart/form-data">
			<input type="hidden" id="_action_" name="_action_" value="edit_missions">
			<input type="hidden" id="edit" name="edit" value="' . $row['id'] . '">
			
			<label for="title">Title *</label>
			<input type="text" id="title" name="title" value="' . $row['title'] . '" placeholder="missions title.." required>
			<label for="description">Description *</label>
			<textarea id="description" name="description" placeholder="missions description.." required>' . $row['description'] . '</textarea>
				
			<label for="picture">Picture</label>
			<input type="file" id="picture" name="picture">
						
			<label for="archive">Archive:</label><br />
            <input type="radio" name="archive" value="Y"'; if($row['archive'] == 'Y') { echo ' checked="checked"'; $checked_archive = true; } echo ' /> YES &nbsp;&nbsp;
			<input type="radio" name="archive" value="N"'; if($checked_archive == false) { echo ' checked="checked"'; } echo ' /> NO
			
			<hr>
			
			<input type="submit" value="Submit">
		</form>
		<p><a href="index.php?menu='.$menu.'&amp;action='.$action.'">Back</a></p>';
	}
	else {
		print '
		<h2>missions</h2>
		<div id="missions">
			<table>
				<thead>
					<tr>
						<th width="16"></th>
						<th width="16"></th>
						<th width="16"></th>
						<th>Title</th>
						<th>Description</th>
						<th>Date</th>
						<th width="16"></th>
					</tr>
				</thead>
				<tbody>';
				$query  = "SELECT * FROM missions";
				$query .= " ORDER BY date DESC";
				$result = @mysqli_query($MySQL, $query);
				while($row = @mysqli_fetch_array($result)) {
					print '
					<tr>
						<td><a href="index.php?menu='.$menu.'&amp;action='.$action.'&amp;id=' .$row['id']. '"><img src="img/user.png" alt="user"></a></td>
						<td><a href="index.php?menu='.$menu.'&amp;action='.$action.'&amp;edit=' .$row['id']. '"><img src="img/edit.png" alt="uredi"></a></td>
						<td><a href="index.php?menu='.$menu.'&amp;action='.$action.'&amp;delete=' .$row['id']. '"><img src="img/delete.png" alt="obriši"></a></td>
						<td>' . $row['title'] . '</td>
						<td>';
						if(strlen($row['description']) > 160) {
                            echo substr(strip_tags($row['description']), 0, 160).'...';
                        } else {
                            echo strip_tags($row['description']);
                        }
						print '
						</td>
						<td>' . pickerDateToMysql($row['date']) . '</td>
						<td>';
							if ($row['archive'] == 'Y') { print '<img src="img/inactive.png" alt="" title="" />'; }
                            else if ($row['archive'] == 'N') { print '<img src="img/active.png" alt="" title="" />'; }
						print '
						</td>
					</tr>';
				}
			print '
				</tbody>
			</table>
			<a href="index.php?menu=' . $menu . '&amp;action=' . $action . '&amp;add=true" class="AddLink">Add missions</a>
		</div>';
	}
	
	# Close MySQL connection
	@mysqli_close($MySQL);
?>