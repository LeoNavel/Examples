\Layout("DefaultLayout")
\Title("If statements")

<h1>If statements</h1>
name == \(name)
<ul>
    <li>if</li>
    <li>else</li>
    <li>else if</li>
    <li>if let</li>
    <li>combinations</li>
</ul>
<h2>if &lt;expression: Bool&gt; { ... \\}</h2>
If expression is true run if block
<pre>
    \\if name == "Tom" {
        &lt;span style="color: red"&gt;Name is Tom&lt;/span&gt;
    \\}

    \\if name != "Tom" {
        &lt;span style="color: blue"&gt;Name is not Tom&lt;/span&gt;
    \\}
</pre>
\if name == "Tom" {
<span style="color: red">Name is Tom</span>
\}

\if name != "Tom" {
<span style="color: blue">Name is not Tom</span>
\}

<h2> \\} else { ... \\}</h2>
If expression is true run if block otherwise run else block
<pre>
    \\if name == "Janny" {
        &lt;span style="color: red"&gt;Name is Janny&lt;/span&gt;
    \\} else {
        &lt;span style="color: blue"&gt;Name is not Janny&lt;/span&gt;
    \\}
</pre>
\if name == "Janny" {
<span style="color: red">Name is Janny</span>
\} else {
<span style="color: blue">Name is not Janny</span>
\}

<h2> \\} else if &lt;expression: Bool&gt; { ... \\}</h2>
If expression is true run elseif block otherwise run else block
<pre>
    \\if name == "Janny" {
    &lt;span style="color: red"&gt;Name is Janny&lt;/span&gt;
    \\} else if name == "Tom" {
    &lt;span style="color: blue"&gt;Name is Tom&lt;/span&gt;
    \\} else {
    &lt;span style="color: green"&gt;Unknown name&lt;/span&gt;
    \\}
</pre>
\if name == "Janny" {
<span style="color: red">Name is Janny</span>
\} else if name == "Tom" {
<span style="color: blue">Name is Tom</span>
\} else {
<span style="color: green">Unknown name</span>
\}

<h2> if let &lt;newVariable&gt; = &lt;variable&gt; { ... \\}</h2>
If variable is not nil store variable value to newVariable and run if block
<pre>
    \\if let personName = name {
    &lt;span style="color: red"&gt;Name is: \(personName)&lt;/span&gt;
    \\} else {
    &lt;span style="color: green"&gt;Unknown name&lt;/span&gt;
    \\}

    \\if let personSurname = surname {
    &lt;span style="color: red"&gt;Surname is: \(personSurname)&lt;/span&gt;
    \\} else {
    &lt;span style="color: green"&gt;Unknown surname&lt;/span&gt;
    \\}
</pre>
\if let personName = name {
<span style="color: red">Name is: \(personName)</span>
\} else {
<span style="color: green">Unknown name</span>
\}
<br>
\if let personSurname = surname {
<span style="color: red">Surname is: \(personSurname)</span>
\} else {
<span style="color: green">Unknown surname</span>
\}

<h2> Combination </h2>
You can combine if statemens same way as in swift
<pre>
    \\if let personName = name {
    &lt;span style="color: red"&gt;Name is: \(personName)&lt;/span&gt;
    \\} else if "asd" + String(1) == "asd2" {
    &lt;span style="color: green"&gt;Else if&lt;/span&gt;
    \\} else {
    &lt;span style="color: blue"&gt;Else block&lt;/span&gt;
    \\}

    \\if let personSurname = surname {
    &lt;span style="color: red"&gt;Surname is: \(personSurname)&lt;/span&gt;
    \\} else {
    &lt;span style="color: green"&gt;Unknown surname&lt;/span&gt;
    \\}
</pre>
\if let personName = name {
<span style="color: red">Name is: \(personName)</span>
\} else if "asd" + String(1) == "asd2" {
<span style="color: green">Else if</span>
\} else {
<span style="color: blue">Else</span>
\}
