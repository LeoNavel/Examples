\Layout("DefaultLayout")
\Title("Dates")

<h1>Dates</h1>
Date(_:format:)
<ul>
    <li>\\Date(_:)</li>
    <li>\\Date(_:format:)</li>
</ul>

<h2>\\Date(&lt;expression: Double&gt;)</h2>
takes double representation of date and evaluates date in default format set by NutConfig.defaultDateFormat: String { get set }
<pre>
    \\Date(now)
</pre>
\Date(now)

<h2>\\Date(&lt;expression: Double&gt;, format: &lt;expression: String&gt;)</h2>
takes double representation of date and string representation of format and evaluates date
<pre>
    \\Date(now, format: "dd")
    \\Date(now, format: "MM dd YYYY")
    \\Date(now, format: "YY, dd MMM")
</pre>
\Date(now, format: "dd") <br>
\Date(now, format: "MM dd YYYY")<br>
\Date(now, format: "YY, dd MMM")
