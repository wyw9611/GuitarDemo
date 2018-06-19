<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

			                       <option value="Martin">Martin</option>

			                       <option value="Gibson">Gibson</option>

			                       <option value="Collings">Collings</option>

			                       <option value="Olson">Olson</option>

			                       <option value="Ryan">Ryan</option>

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

			                       <option value="electric">electric</option>
			                       
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

		                       <option value="Brazilian Rosewood">Brazilian Rosewood</option>

		                       <option value="Mahogany">Mahogany</option>

		                       <option value="Maple">Maple</option>

		                       <option value="Cocobolo">Cocobolo</option>

		                       <option value="Cedar">Cedar</option>

		                       <option value="Adirondack">Adirondack</option>

		                       <option value="Alder">Alder</option>

		                       <option value="Sitka">Sitka</option>
		                       
		                       <option value="Unspecified">Unspecified</option>

		                  </select>

		    			</td>

		    			<td>

		    				<label for="topWood">&emsp;TopWood:&emsp;</label>

		    			</td>

		    			<td>

		    				<select id="topWood" name="topWood" class="selectpicker" data-hide-disabled="true">

		                       <option value="Indian Rosewood">Indian Rosewood</option>

		                       <option value="Brazilian Rosewood">Brazilian Rosewood</option>

		                       <option value="Mahogany">Mahogany</option>

		                       <option value="Maple">Maple</option>

		                       <option value="Cocobolo">Cocobolo</option>

		                       <option value="Cedar">Cedar</option>

		                       <option value="Adirondack">Adirondack</option>

		                       <option value="Alder">Alder</option>

		                       <option value="Sitka">Sitka</option>
		                       
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

		                       <option value="F style">F style</option>
		                       
		                       <option value="Unspecified">Unspecified</option>

		                  </select>

		    			</td>


		    			<td>

		    				<label for="instrumentType">&emsp;InstrumentType:&emsp;</label>

		    		</td>
		    		<td>

		    				<select id="instrumentType" name="instrumentType" class="selectpicker" data-hide-disabled="true">

		                       <option value="Guitar">Guitar</option>

		                       <option value="Banjo">Banjo</option>
		                       
		                       <option value="Dobro">Dobro</option>
		                       
		                        <option value="Fiddle">Fiddle</option>

		                       <option value="Bass">Bass</option>
		                       
		                       <option value="Mandolin">Mandolin</option>
		                       
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
				    <th>matchingInstrument</th>
				   
				</tbody>

		    </table>

		</div>
</body>
</html>