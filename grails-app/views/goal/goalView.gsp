<html>
  <head>
    <meta name="layout" content="form"/>
    <title>
      Ziel erfassen
    </title>
  </head>

  <body>
    <form action="/goal/addGoal" method="get">
      <fieldset class="form padded">
        <label>Beschreibung</label>
        <input type="text" name="goalDescription" label="Beschreibung" required="true" model="${goalInstance}" />
        <br />

        <label>Enddatum</label>
        <input type="date" name="goalDeadline" label="Enddatum" model="${goalInstance}" />
        <br />

        <label>Priorität</label>
        <input list="${goalInstance}.goalPriority" name="goalPriority" label="Priorität" model="${goalInstance}" />
        <br />

        <label>Ziel erreicht?</label>
        <input type="checkbox" name="goalReached" label="Ziel erreicht?" model="${goalInstance}" />
        <br />

        <label>Thema</label>
        <input list="${goalInstance}.goalTopic" name="goalTopic" label="Thema" model="${goalInstance}" />
        <br />


        <div>
          <label>&nbsp;</label>
          <input type="submit" value="Hinzufügen"/>
        </div>
      </fieldset>
    </form>
  </body>
</html>

