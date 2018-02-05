<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

<script type="text/javascript">
	// makes sure the whole site is loaded
jQuery(window).load(function() {
        // will first fade out the loading animation
	jQuery("#status").fadeOut();
        // will fade out the whole DIV that covers the website.
	jQuery("#preloader").delay(4000).fadeOut("slow");
})
</script> 