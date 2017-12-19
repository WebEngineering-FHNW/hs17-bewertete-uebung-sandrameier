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

    <!-- TODO: Grails header entfernen -->
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
            <a href="#newtopic"><li>neu hinzufügen</li></a>
        </ul>
    </nav>

    <%-- Here starts the real content --%>
    <main>
        <%-- Iteration over each of the existing topics --%>
        <g:each in="${topics}" var="thema" class="topic">

            <div class="topic">
                <%-- Titel of each topic with a corresponding id, so that you can navigate to it with top navigation --%>
                <h2 id="${thema}"><a href="../topic/edit/${thema.id}">
                    <div class="topictitle">${thema}</div>
                    <div class="buttonedittopic"></div>
                </a></h2>

                <%-- Iteration over each of the goals that belong to this topic --%>
                <g:each in="${goals}" var="ziel">
                    <g:if test="${ziel.goalTopic == thema}">

                        <%-- One article makes one goal element --%>
                        <article class="${ziel.goalReached}">
                            <%-- Goal picture: if existing, set picture, if not, set color --%>
                            <g:if test="${ziel.goalImage != null}">
                                <div class="goalpicture" style="background-image: url('../assets/goalImages/${ziel.id}.jpg');">
                                </div>
                            </g:if>
                            <g:else>
                                <div class="goalpicture" style="background-color: #0f144b;">
                                </div>
                            </g:else>

                            <%-- Goal triangle (design element) with buttons --%>
                            <div class="goaltriangle">
                                <%-- Button to mark goal reached / not displayed because button function is missing
                                <g:if test="${ziel.goalReached == false}">
                                    <a href=""><div class="buttonreached">R</div></a>
                                </g:if>
                                --%>

                                <a href="edit/${ziel.id}"><div class="buttoneditgoal"></div></a>
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

                <%-- Article to add a new goal --%>
                <article><a href="create">
                    <div class="buttonaddgoal"></div><br />
                    <p>neues Ziel hinzufügen</p>
                </a></article>

                <%-- Button to navigate to the top of the site at the end of each topic section --%>
                <a href="#top"><p class="buttontop">nach oben</p></a>
            </div>
        </g:each>

        <%-- Topic to add a new topic --%>
        <div class="topic" id="newtopic">
            neues Thema hinzufügen

            <%-- Button to navigate to the top of the site at the end of each topic section --%>
            <a href="#top"><p class="buttontop">nach oben</p></a>
        </div>
    </main>

</body>
</html>
