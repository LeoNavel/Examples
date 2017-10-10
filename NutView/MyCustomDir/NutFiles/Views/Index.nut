<!-- Index.nut -->
\Layout("DefaultLayout")
\Title("Index page " + String(1))
<h1>This is index</h1>
<p>
    We can set layout with \\Layout("&lt;name&gt;") command. To set page title we use \\Title(&lt;expression: String&gt;) for example \\Title("Index page " + String(1))
</p>
<h2>Subviews</h2>
<p>
    Subviews are reusable parts of code. We can add Subview with \\Subview("&lt;name&gt;") for example \\Subview("MySubview")
    \Subview("MySubview")
</p>
<h1>Examples</h1>
<ul>
\for page in pages {
    <li><a href="/Examples/\(page.id)">\(page.name)</a></li>
\}
</ul>


<!-- End of Index.nut -->

