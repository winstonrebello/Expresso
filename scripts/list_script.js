var queryString = window.location.search;
var urlParams = new URLSearchParams(queryString);
var cat = urlParams.get('cat');

$(document).ready(function(){
	filter_data();
	    function filter_data()
	    {
	        var brand = get_filter('brand1');
	        var rate = get_filter('rating');
	        var prange = get_filter('prange');
	        $.ajax({
	            url:"fetch.php",
	            method:"POST",
	            data:{brand:brand,rate:rate,prange:prange,cat:cat},
	            success:function(data){
	                $('.prod-items').html(data);
	            }
	        });
	    }

	    function get_filter(class_name)
	    {
	        var filter = [];
	        $('.'+class_name+':checked').each(function(){
	            filter.push($(this).val());
	        });
	        return filter;
	    }

	    $('.common_selector').click(function(){
	        filter_data();
	    });

});
