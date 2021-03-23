<table>
	<tr>
		<th>Name</th>
		<th>Number</th>
		
	</tr>
	<tbody id="data">
		
	</tbody>
</table>

<script>
	
	var ajax = new XMLHttpRequest();
	var method = "GET";
	var url = "data.php";
	var asynchronous = true;
	
	ajax.open(method, url, asynchronous);

	ajax.send();

	ajax.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			alert(this.responseText);
			var data = JSON.parse(this.responseText);
			console.log(data);

			var html = "";
			for (var a = 0; a<data.length; a++)
			{
				var name = data[a].emergency;
				var number = data[a].number;

				html += "<tr>";
					html += "<td>"+name + "</td>";
					
					html += "<td>"+number + "</td>";
				html += "<tr>";
			}
			document.getElementById("data").innerHTML = html;
		}
	}

</script>