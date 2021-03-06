#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@BrowseCart
Feature: Browse and Cart Verification
  Verfying the browse and cart appreance and functions

  @BrowsingProducts
  Scenario: To validate that able to browse products similar to other products 
    Given OpenCart website is ready
    And I launch URL in chrome browser
    When I browse products
    Then similar products should be available

  @BrowsingProducts
  Scenario: To validate that able to browse products with same category
    Given OpenCart website is ready
    And I launch URL in chrome browser
    When I browse products
    Then same category products should be there

	@SearchingProducts
	Scenario: To validate that able to search products based on categories
		Given OpenCart website is ready
		And I launch URL in chrome browser
		And Search option should be there
		When I search products
		Then searching should be available based on categories
		
	@SearchProducts
	Scenario: To validate that able to search products based on sub-category
		Given OpenCart website is ready
		And I launch URL in chrome browser
		And Search option should be there
		When I search products
		Then searching should be available based on sub-categories
	
	@ListButton
	Scenario: To validate the appreance of list button on the products page
		Given OpenCart website is ready
		And I launch URL in chrome browser
		When I go to products page
		Then The list button should be visible there
		
	@ListButton
	Scenario:  To validate the working of list preference button for displaying products
		Given OpenCart website is ready
		And I launch URL in chrome browser
		When I go to products page
		And after clicking on list preference button
		Then the products should be displayed in list
	
	@GridButton
	Scenario: To validate the appreance of grid button on the products page
		Given OpenCart website is ready
		And I launch URL in chrome browser
		When I go to products page
		Then The grid button should be visible there

	@GridButton
	Scenario: To validate the working of grid preference button for dislplaying products
		Given OpenCart website is ready
		And I launch URL in chrome browser
		When I go to products page
		And after clicking on grid preference button
		Then the products should be displayed in grid
	
	@SortingProducts
	Scenario: To validate the products sorting according to rating
		Given OpenCart website is ready
		And I launch URL in chrome browser
		When I go to products page
		And select the rating option 
		Then the products gets sorted according to rating
		When select the name option 
		Then the products gets sorted according to name
		When select the price option 
		Then the products gets sorted according to price
		When select the model option 
		Then the products gets sorted according to model

	@WishlistButton
	Scenario: To validate after clicking on add to product, product is added in wishlist or not
		Given OpenCart website is ready
		And I launch URL in chrome browser
		When I go to products page
		And after clicking on wishlist icon 
		Then the product get added to wishlist
		
	@ProductPage 
  Scenario: To validate Add to compare option is visible on product page
	  Given OpenCart website is ready
	  And I launch URL in chrome browser
	  Then Add to compare option should be visible.

 @ProductPage 
	Scenario: To validate after clicking on add to compare, product is added to compare list
		Given OpenCart website is ready
		And I launch URL in chrome browser
		When I click on Add to compare option button
		Then product should be added to compare list.
	
	@ShoppingCart 
	Scenario: To validate shopping cart option is visible on page
		Given OpenCart website is ready
		And I launch URL in chrome browser
		Then shopping cart option should be visible.
	
	
	@ShoppingCart @Test
	Scenario: To validate products are present in shopping cart, if previously added
		Given OpenCart website is ready
		And I launch URL in chrome browser
		When I add some products to shopping cart
		And I click on shopping cart
		Then products added to cart should be present.
		When I click on coupon code
		Then coupon code option should be visible to customer.
		When I insert coupon code while buying product 
		Then the warning message gets displayed in Coupon Code
		When I click on estimate shipping taxes
		Then estimate shipping taxes option should be visible
		When I click on add to estimate option
		Then total cost of product should be changed according to shipping and taxes
		When I click on add to gift certificate
		Then coupon code or gift voucher option should be visible to customer.
		When I add gift voucher
		Then the warning message gets displayed in Gift Voucher
		When I click on checkout button
		Then checkout option should be visible
	  When I click on shopping cart
		And I click on continue to shopping button
		Then page should be redirected to home page
	
