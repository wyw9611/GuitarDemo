<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>guitar</title>
<link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
<script type="text/javascript" src="DataTables/datatables.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css" />
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<link rel="stylesheet" href="../css/bootstrap-reboot.css" />
<link rel="stylesheet" href="../css/bootstrap-reboot.min.css" />
<link rel="stylesheet" href="../css/bootstrap-grid.css" />
<link rel="stylesheet" href="../css/bootstrap-grid.min.css" />
<script src="../js/jquery.min.js"></script>
<script src="../js/jquery.js"></script>
</head>
<body>


		<div style="padding: 100px 100px 10px;">

		    <form class="bs-example bs-example-form" role="form" method="post" action="InstrumentService">

		    	<table>

		    		<tr>

		    			<td>

		    				  <label for="builder">Builder:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>

		    			</td>

		    			<td>

					    	  <select id="builder" name="builder" class="selectpicker" data-hide-disabled="true">

			                       <option value="Fender">Fender</option>

			                       <option value="MARTIN">Martin</option>

			                       <option value="GIBSON">Gibson</option>

			                       <option value="COLLINGS">Collings</option>

			                       <option value="OLSON">Olson</option>

			                       <option value="RYAN">Ryan</option>

			                       <option value="PRS">PRS</option>

			                       <option value="Unspecified">Unspecified</option>

			                  </select>

		    			</td>

		    			<td>

			                  <label for="type">&emsp;Type:&emsp;</label>

		    			</td>

		    			<td>

					    	  <select id="type" name="type" class="selectpicker" data-hide-disabled="true">

			                       <option value="acoustic">acoustic</option>

			                       <option value="ELECTRIC">electric</option>
			                       
			                       <option value="Unspecified">Unspecified</option>

			                  </select>

		    			</td>

		    		</tr>

		    		<tr>

		    			<td>

		    	  			<label for="backWood">BackWood:&emsp;</label>

		    			</td>

		    			<td>

		    				<select id="backWood" name="backWood" class="selectpicker" data-hide-disabled="true">

		                       <option value="Indian Rosewood">Indian Rosewood</option>

		                       <option value="BRAZILIAN ROSEWOOD">Brazilian Rosewood</option>

		                       <option value="MAHOGANY">Mahogany</option>

		                       <option value="MAPLE">Maple</option>

		                       <option value="COCOBOLO">Cocobolo</option>

		                       <option value="CEDAR">Cedar</option>

		                       <option value="ADIRONDACK">Adirondack</option>

		                       <option value="ALDER">Alder</option>

		                       <option value="SITKA">Sitka</option>
		                       
		                       <option value="Unspecified">Unspecified</option>

		                  </select>

		    			</td>

		    			<td>

		    				<label for="topWood">&emsp;TopWood:&emsp;</label>

		    			</td>

		    			<td>

		    				<select id="topWood" name="topWood" class="selectpicker" data-hide-disabled="true">

		                       <option value="Indian Rosewood">Indian Rosewood</option>

		                       <option value="BRAZILIAN ROSEWOOD">Brazilian Rosewood</option>

		                       <option value="MAHOGANY">Mahogany</option>

		                       <option value="MAPLE">Maple</option>

		                       <option value="COCOBOLO">Cocobolo</option>

		                       <option value="CEDAR">Cedar</option>

		                       <option value="ADIRONDACK">Adirondack</option>

		                       <option value="ALDER">Alder</option>

		                       <option value="SITKA">Sitka</option>
		                       
		                       <option value="Unspecified">Unspecified</option>

		                  </select>

		    			</td>

		    		</tr>

		    		<tr>
		    		<td>

		    				<label for="style">&emsp;Style:&emsp;</label>

		    		</td>
		    		<td>

		    				<select id="style" name="style" class="selectpicker" data-hide-disabled="true">

		                       <option value="A style">A style</option>

		                       <option value="F">F style</option>
		                       
		                       <option value="Unspecified">Unspecified</option>

		                  </select>

		    			</td>


		    			<td>

		    				<label for="instrumentType">&emsp;InstrumentType:&emsp;</label>

		    		</td>
		    		<td>

		    				<select id="instrumentType" name="instrumentType" class="selectpicker" data-hide-disabled="true">

		                       <option value="Guitar">Guitar</option>

		                       <option value="BANJO">Banjo</option>
		                       
		                       <option value="DOBRO">Dobro</option>
		                       
		                        <option value="FIDDLE">Fiddle</option>

		                       <option value="BASS">Bass</option>
		                       
		                       <option value="MANDOLIN">Mandolin</option>
		                       
		                       <option value="Unspecified">Unspecified</option>

		                  </select>

		    			</td>

		    		</tr>
		    		<tr>
		    		<td>
		    		<input type="submit" class="form-control btn btn-success" value="提交"  />
		    		</td>
		    		</tr>

		    	</table>

		    </form>



		    <br><br><br>

			<table id="example" class="display" cellspacing="0" width="100%">

		        <thead>

		            <tr>

		                <th>Builder</th>

		                <th>Model</th>

		                <th>Type</th>

		                <th>NumStrings</th>

		                <th>BackWood</th>

		                <th>TopWood</th>

		                <th>Price</th>

		            </tr>

		        </thead>


		        <tfoot>

		            <tr>

		                <th>Builder</th>

		                <th>Model</th>

		                <th>Type</th>

		                <th>NumStrings</th>

		                <th>BackWood</th>

		                <th>TopWood</th>

		                <th>Price</th>

		            </tr>

		        </tfoot>
		        
				<tbody>
				    <tr>
				      <tr>

		                <th>${inventory.builder}</th>

		                <th>${inventory.model}</th>

		                <th>${inventory.type}</th>

		                <th>${inventory.numStrings}</th>

		                <th>${inventory.backWood}</th>

		                <th>${inventory.topWood}</th>

		                <th>${inventory.price}</th>

		            </tr>
				</tbody>

		    </table>

		</div>
</body>
</html>