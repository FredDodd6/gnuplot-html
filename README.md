# gnuplot-html
Showing the process of producing plots from .gp files onto html pages using gnuplot.


  
 ## Required
 - gnuplot
 - html page
 - web server
 - .gp file to plot



### Process

For this example a basic python web server and a simple html page is being used.

## Altering .gp file 
Firstly to plot the .gp file, it must be edited (if it hasnt been already) so that the output is a .js file.
In this case starting with example_gp.gp , we must edit this so the lines :
'''
set terminal png size 1000,400
set output "TestingOut1.png"
'''
 
Are replaced with:
'''
set terminal canvas size 1000,400
set term canvas name 'foo'
set output "foo.js"
'''
So the new terminal type is **canvas** instead of **png**.
Naming the canvas 'foo' (or the title of the plot).
And setting the output to a **.js** file instead of a **.png**.

## producing the Javascript file
Once this has been done, once running gnuplot, the command :
'''
load 'fixed_example_gp.gp'
'''
can be run, which will output the .js file named within 'fixed_example_gp.gp' (or whatever .gp file is used) to the current directory.

## Displaying on html page

The .js file needs to then be moved into the directory of the html page that will display it, and referenced within the html file (an example of a html page which displays this on load is shown below).

'''
<html>
<head><script src="foo.js"></script></head>
<body onload="foo()">
<h1>HEADER</h1>
<canvas id="gp_plot" width="1000" height="400" style="border:1px solid #000000;"></canvas>
<script src="canvastext.js"></script>
<script src="gnuplot_common.js"></script>
</body>
</html>
'''

On line 3 of this html file the function foo() is called from the file foo.js which will contain the plotting function named after the file.
Two other files also need to be referenced 'canvastext.js' and 'gnuplot_common.js', aswell as 'gnuplot_dashedlines.js' if dashed lines are used in the plot.


Then once the html is displayed on the webserver, in this case using 'localhost:8080' (as shown in web_server.py) the plot should be displayed.














