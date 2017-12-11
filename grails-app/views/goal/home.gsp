<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Bucket List</title>
    <asset:stylesheet src="style.css"/>
    <!-- TODO: nicht benötigte Schriften löschen -->
    <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Bree+Serif"> <!-- Zwischentitel -->
    <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Raleway"> <!-- Fliesstext -->
    <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Nunito">


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
                <a href="#${thema}"><li>${thema}</li></a>
            </g:each>
        </ul>
    </nav>

    <main>
        <!-- TODO: is repeating over the elements nicer possible? -->
        <%-- <g:findAll in="${books}" expr="it.author == 'Stephen King'">
            <p>Title: ${it.title}</p>
        </g:findAll> --%>
        <g:each in="${topics}" var="thema" class="topic">
            <div class="topic">
            <h2 id="${thema}">${thema}</h2>
            <g:each in="${goals}" var="ziel">
                <g:if test="${ziel.goalTopic == thema}">
                <article class="${ziel.goalReached}">
                    <div class="goalpicture">
                        <!-- <h3>${ziel}</h3> -->
                    </div>
                    <div class="goaltriangle"></div>
                    <div class="goalproperties">
                        ${ziel.goalDescription}
                        ${ziel.goalDeadline}
                        ${ziel.goalPriority}
                    </div>
                </article>
                </g:if>
            </g:each>
            </div>
        </g:each>
    </main>

</body>
</html>
