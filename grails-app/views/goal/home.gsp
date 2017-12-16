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
    <%-- Header is just the title of the site --%>
    <header id="top">
        <!-- TODO: design -->
        <h1>Bucket List</h1>
    </header>

    <%-- Navigation allows the user to navigate to the anchor point of each topic --%>
    <nav>
        <ul>
            <g:each var="thema" in="${topics}">
                <a href="#${thema}"><li>${thema}</li></a>
            </g:each>
        </ul>
    </nav>

    <%-- Here starts the real content --%>
    <main>
        <%-- Iteration over each of the existing topics --%>
        <g:each in="${topics}" var="thema" class="topic">

            <div class="topic">
                <%-- Titel of each topic with a corresponding id, so that you can navigate to it with top navigation --%>
                <h2 id="${thema}">${thema}</h2>

                <%-- Iteration over each of the goals that belong to this topic --%>
                <g:each in="${goals}" var="ziel">
                    <g:if test="${ziel.goalTopic == thema}">

                        <%-- One article makes one goal element --%>
                        <article class="${ziel.goalReached}">
                            <%-- Goal picture --%>
                            <div class="goalpicture">
                            </div>

                            <%-- Goal triangle (design element) with buttons --%>
                            <div class="goaltriangle">
                                <g:if test="${ziel.goalReached == false}">
                                    <div class="buttonreached">R</div>
                                </g:if>
                                <div class="buttonedit">B</div>
                            </div>

                            <%-- Goal properties, such as priority, deadline and description --%>
                            <div class="goalproperties">
                                <div class="goaldata">
                                    <p>Prio: ${ziel.goalPriority}</p>
                                    <p><g:formatDate format="dd-MM-yyyy" date="${ziel.goalDeadline}" /></p>
                                </div>
                                ${ziel.goalDescription}
                            </div>
                        </article>

                    </g:if>
                </g:each>

                <%-- Button to navigate to the top of the site at the end of each topic section --%>
                <a href="#top"><p class="buttontop">nach oben</p></a>
            </div>

        </g:each>
    </main>

</body>
</html>
