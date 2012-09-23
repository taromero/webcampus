<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">

<link rel="dns-prefetch" href="http://fonts.googleapis.com" />
<link rel="dns-prefetch" href="http://themes.googleusercontent.com" />
<link rel="dns-prefetch" href="http://ajax.googleapis.com" />
<link rel="dns-prefetch" href="http://cdnjs.cloudflare.com" />
<link rel="dns-prefetch" href="http://agorbatchev.typepad.com" />
		
<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'grid.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'layout.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'icons.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/fonts', file: 'font-awesome.css')}" type="text/css">

<!-- External Styles -->
<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery-ui-1.8.21.custom.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.chosen.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.cleditor.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.colorpicker.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.elfinder.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.fancybox.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.jgrowl.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.plupload.queue.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/external/syntaxhighlighter', file: 'shCore.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/external/syntaxhighlighter', file: 'shThemeDefault.css')}" type="text/css">
		
<!-- Elements -->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'elements.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'forms.css')}" type="text/css">

<!-- Typographics -->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'typographics.css')}" type="text/css">

<!-- Responsive Design -->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'media-queries.css')}" type="text/css">

<!-- IE Fixes -->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'ie-fixes.css')}" type="text/css">

      <!-- The Scripts -->

<!-- JavaScript at the top (will be cached by browser) -->

<!-- Load Webfont loader -->
<script type="text/javascript">
	window.WebFontConfig = {
		google: { families: [ 'PT Sans:400,700' ] },
		active: function(){ $(window).trigger('fontsloaded') }
	};
</script>
<script defer async src="https://ajax.googleapis.com/ajax/libs/webfont/1.0.28/webfont.js"></script>

<!-- Essential polyfills -->
<g:javascript src="mylibs/polyfills/modernizr-2.6.1.min.js"/>
<g:javascript src="mylibs/polyfills/respond.js"/>
<g:javascript src="mylibs/polyfills/matchmedia.js"/>
<g:javascript src="mylibs/polyfills/matchmedia.js"/>

<!--[if lt IE 9]>
	<g:javascript src="mylibs/polyfills/selectivizr-min.js"/>
<![endif]-->
<!--[if lt IE 10]>
	<g:javascript src="mylibs/charts/excanvas.js"/>
<![endif]-->
<!--[if lt IE 10]>
	<g:javascript src="mylibs/polyfills/classlist.js"/>
<![endif]-->


<!-- Grab frameworks from CDNs -->
	<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.2.min.js"><\/script>')</script>

	<!-- Do the same with jQuery UI -->
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.21/jquery-ui.min.js"></script>
<script>window.jQuery.ui || document.write('<script src="js/libs/jquery-ui-1.8.21.min.js"><\/script>')</script>

	<!-- Do the same with Lo-Dash.js -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/0.4.2/lodash.min.js"></script>
<script>window._ || document.write('<script src="js/libs/lodash.min.js"><\/script>')</script>

<!-- General Scripts -->
<g:javascript src="mylibs/jquery.hashchange.js"/>
<g:javascript src="mylibs/jquery.idle-timer.js"/>
<g:javascript src="mylibs/jquery.plusplus.js"/>
<g:javascript src="mylibs/jquery.jgrowl.js"/>
<g:javascript src="mylibs/jquery.scrollTo.js"/>
<g:javascript src="mylibs/jquery.ui.touch-punch.js"/>
<g:javascript src="mylibs/jquery.ui.multiaccordion.js"/>
<g:javascript src="mylibs/number-functions.js"/>
		
<!-- Forms -->
<g:javascript src="mylibs/forms/jquery.autosize.js"/>
<g:javascript src="mylibs/forms/jquery.checkbox.js"/>
<g:javascript src="mylibs/forms/jquery.chosen.js"/>
<g:javascript src="mylibs/forms/jquery.cleditor.js"/>
<g:javascript src="mylibs/forms/jquery.colorpicker.js"/>
<g:javascript src="mylibs/forms/jquery.ellipsis.js"/>
<g:javascript src="mylibs/forms/jquery.fileinput.js"/>
<g:javascript src="mylibs/forms/jquery.fullcalendar.js"/>
<g:javascript src="mylibs/forms/jquery.maskedinput.js"/>
<g:javascript src="mylibs/forms/jquery.mousewheel.js"/>
<g:javascript src="mylibs/forms/jquery.placeholder.js"/>
<g:javascript src="mylibs/forms/jquery.mousewheel.js"/>
<g:javascript src="mylibs/forms/jquery.pwdmeter.js"/>
<g:javascript src="mylibs/forms/jquery.ui.datetimepicker.js"/>
<g:javascript src="mylibs/forms/jquery.ui.spinner.js"/>
<g:javascript src="mylibs/forms/jquery.validate.js"/>
<g:javascript src="mylibs/forms/uploader/plupload.js"/>
<g:javascript src="mylibs/forms/uploader/plupload.html5.js"/>
<g:javascript src="mylibs/forms/uploader/plupload.html4.js"/>
<g:javascript src="mylibs/forms/uploader/plupload.flash.js"/>
<g:javascript src="mylibs/forms/uploader/jquery.plupload.queue/jquery.plupload.queue.js"/>
	
<!-- Charts -->
<g:javascript src="mylibs/charts/jquery.flot.js"/>
<g:javascript src="mylibs/charts/jquery.flot.orderBars.js"/>
<g:javascript src="mylibs/charts/jquery.flot.pie.js"/>
<g:javascript src="mylibs/charts/jquery.flot.resize.js"/>

<!-- Explorer -->
<g:javascript src="mylibs/explorer/jquery.elfinder.js"/>

<!-- Fullstats -->
<g:javascript src="mylibs/fullstats/jquery.css-transform.js"/>
<g:javascript src="mylibs/fullstats/jquery.animate-css-rotate-scale.js"/>
<g:javascript src="mylibs/fullstats/jquery.sparkline.js"/>

<!-- Syntax Highlighter -->
<g:javascript src="mylibs/syntaxhighlighter/shCore.js"/>
<g:javascript src="mylibs/syntaxhighlighter/shAutoloader.js"/>

<!-- Dynamic Tables -->
<g:javascript src="mylibs/dynamic-tables/jquery.dataTables.js"/>
<g:javascript src="mylibs/dynamic-tables/jquery.dataTables.tableTools.zeroClipboard.js"/>
<g:javascript src="mylibs/dynamic-tables/jquery.dataTables.tableTools.js"/>

<!-- Gallery -->
<g:javascript src="mylibs/gallery/jquery.fancybox.js"/>

<!-- Tooltips -->
<g:javascript src="mylibs/tooltips/jquery.tipsy.js"/>

<!-- Do not touch! -->
<g:javascript src="mango.js"/>
<g:javascript src="plugins.js"/>
<g:javascript src="script.js"/>

<!-- Your custom JS goes here -->
<g:javascript src="application.js"/>