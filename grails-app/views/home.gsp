<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Bucket List</title>
    <asset:stylesheet src="style.css"/>
    <!-- TODO: nicht benötigte Schriften löschen -->
    <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Petrona">
    <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Indie+Flower">
    <!-- TODO: facivon -->
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>

<body>
    <header>
        <!-- TODO: name of a topic -->
        <h1>Bucket List</h1>
    </header>

    <nav>
        <!-- TODO: jump to topic -->
        <ul>
            <li>Topic 1</li>
            <li>Topic 2</li>
        </ul>
    </nav>

    <main>
        <!-- TODO: repeat over elements -->
        <%-- <g:each in="${[1,2,3]}" var="num">
            <p>Number ${num}</p>
        </g:each>

        <g:each var="person" in="${people}">
            <a href="openBookingsFor?id=${person.id}">${person.name}</a>
        </g:each>

        <g:findAll in="${books}" expr="it.author == 'Stephen King'">
            <p>Title: ${it.title}</p>
        </g:findAll> --%>
        <h2>Topic Name</h2>

        <g:each var="ziel" in="${goals}">
            <article>
                <h3>Ziel</h3>
                ${ziel}
            </article>
        </g:each>
        <article>
            <p>Bild, Beschreibung, Deadline, Prio, beendet</p>
        </article>
        <article>
            <p>Bild, Beschreibung, Deadline, Prio, beendet</p>
        </article>
        <article>
            <p>Bild, Beschreibung, Deadline, Prio, beendet</p>
        </article>
        <article>
            <p>Bild, Beschreibung, Deadline, Prio, beendet</p>
        </article>
    </main>

</body>
</html>
