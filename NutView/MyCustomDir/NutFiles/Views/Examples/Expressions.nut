\Layout("DefaultLayout")
\Title("Expressions")

<h1>Expressions</h1>
<pre>
    let data: [String: Any] = [
        "seven": \(seven),
        "name": "\(name)",
        "pi": \(pi),
        "h3": "\(h3)",
        "person": \(person)
    ]
</pre>
<ul>
    <li>escaped value - \\()</li>
    <li>nonescaped value - \\RawValue()</li>
</ul>

<h2>\\(&lt;expression: Any?&gt;)</h2>
Evaluates expression, escape html special characters and result store at position of command.
<pre>
    \\(seven + 4)
    \\(name + "by")
    \\(person.name + " " + person.surname)
    \\("pi is: " + String(pi))
    \\(h3)
</pre>
\(seven + 4) <br>
\(name + "by") <br>
\(person.name + " " + person.surname) <br>
\("pi is: " + String(pi)) <br>
\(h3)

<h2>\\RawValue(&lt;expression: Any?&gt;)</h2>
Evaluates expression, and result store at position of command.
<pre>
    \\(seven + 4)
    \\(name + "by")
    \\(person.name + " " + person.surname)
    \\("pi is: " + String(pi))
    \\(h3)
</pre>
\RawValue(seven + 4) <br>
\RawValue(name + "by") <br>
\RawValue(person.name + " " + person.surname) <br>
\RawValue("pi is: " + String(pi)) <br>
\RawValue(h3)
