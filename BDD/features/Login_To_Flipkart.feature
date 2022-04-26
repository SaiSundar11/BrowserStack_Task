Feature: Flipkart Assignment

    Scenario Outline: search for the products 
	Given Open the flipkart page
	When Search for the <products>
	Then Validate the result

	# Examples: 
	# 	|products|
	# 	|Mobile|
	# 	|Laptop|

	@mobile
	Examples: 
		|products|
		|Mobile|
	
	@laptop
	Examples: 
		|products|
		|Laptop|
