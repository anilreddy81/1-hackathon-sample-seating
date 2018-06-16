/*function myFunction() {
	alert("myFunction for .change() called.");

}*/

$(document).ready(
		function() {
			$("#sections")
					.change(
							function() {
								var selectedSections = $(
										"#sections option:selected").text();
								var selectedSectionsVal = $(
										"#sections option:selected").val();
								console.log("Handler for .change() called."
										+ selectedSections + ":"
										+ selectedSectionsVal);

								$.get("/findSeats/" + selectedSectionsVal, {

								}, function(response) {
									$('#seatContainer').empty();
									var len = response.length;
									var html = '';
									for (var i = 0; i < len; i++) {
										if (response[i].available) {
											html += '<option value="'
													+ response[i].id + '">'
													+ response[i].name
													+ '</option>';
										}
									}
									$('#seatContainer').append(html);
								});

							});
		});
