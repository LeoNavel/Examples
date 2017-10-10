\Layout("DefaultLayout")
\Title("For statements")

<h1>For statements</h1>

<h2>For &lt;elementVariable&gt; in &lt;arrayVariable: [Any]&gt; { </h2>
Iterates over elements in array. Current element is stored in elementVariable
<pre>
    &lt;ul&gt;
        \\for name in names {
            &lt;li&gt;\\(name)&lt;/li&gt;
        \\}
    &lt;/ul&gt;
</pre>
<ul>
    \for name in names {
        <li>\(name)</li>
    \}
</ul>

<h2>For (&lt;key&gt;, &lt;value&gt;) in &lt;dictionaryVariable: [String: Any]&gt; { </h2>
Iterates over elements in dictionary. Stores element key to key variable and value to value
<pre>
    &lt;ul&gt;
        \\for (name, salary) in salaries {
            &lt;li&gt;\\(name)&lt; - \\(salary)/li&gt;
        \\}
    &lt;/ul&gt;
</pre>
<ul>
    \for (name, salary) in salaries {
        <li>\(name) - \(salary)</li>
    \}
</ul>


