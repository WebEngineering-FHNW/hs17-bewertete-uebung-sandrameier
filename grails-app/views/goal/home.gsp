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
        <!-- TODO: name of a topic? -->
        <h1>Bucket List</h1>
    </header>

    <nav>
        <!-- TODO: jump to topic -->
        <ul>
            <g:each var="thema" in="${topics}">
                <li>${thema}</li>
            </g:each>
        </ul>
    </nav>

    <main>
        <!-- TODO: is repeating over the elements nicer possible? -->
        <%-- <g:findAll in="${books}" expr="it.author == 'Stephen King'">
            <p>Title: ${it.title}</p>
        </g:findAll> --%>
        <g:each in="${topics}" var="thema">
            <h2>${thema}</h2>
            <g:each in="${goals}" var="ziel">
                <g:if test="${ziel.goalTopic == thema}">
                <article>
                    <h3>${ziel.goalTitle}</h3>
                    ${ziel}
                </article>
                </g:if>
            </g:each>
        </g:each>
        <article>
            <p>Bild, Beschreibung, Deadline, Prio, beendet</p>
        </article>
    </main>

</body>
</html>
