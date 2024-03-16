<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"></meta>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
        <title>XML test</title>
        <!-- <link rel="stylesheet" href="style.css"></link> -->
        <link rel="stylesheet" href="css/material-design-light.css"></link>
        <link rel="stylesheet" href="style.css"></link>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"></link>
      </head>

      <script>
        function displayForm () {
          document.querySelector(".dark-cover").classList.add("show");
          document.querySelector("form").classList.add("show");
        }
        function undisplayForm () {
          document.querySelector(".dark-cover").classList.remove("show");
          document.querySelector("form").classList.remove("show");
        }
      </script>

      <body>
        <h2>Students</h2>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Age</th>
            <th>School</th>
          </tr>

          <xsl:for-each select="student/client">
            <tr>
              <td>
                <xsl:value-of select="name"/>
              </td>
              <td>
                <xsl:value-of select="age"/>
              </td>
              <td>
                <xsl:value-of select="school"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <button class="FAB button button-filled" onclick="displayForm()">
          <i class="fa-solid fa-plus"></i>Add</button>


        <div class="dark-cover"></div>
        <form>
          <div class="card card-elevated">
            <h1>Add New Entry</h1>
            <div class="field-text field-text-outlined" style="background:var(--md-sys-color-background)">
              <label class="field-text-label" for="text">Name</label>
              <input class="field-text-input" type="text" id="text" placeholder=" "></input>
            </div>
            <div class="field-text field-text-outlined" style="background:var(--md-sys-color-background)">
              <label class="field-text-label" for="text">Age</label>
              <input class="field-text-input" type="text" id="text" placeholder=" "></input>
            </div>
            <div class="field-text field-text-outlined" style="background:var(--md-sys-color-background)">
              <label class="field-text-label" for="text">School</label>
              <input class="field-text-input" type="text" id="text" placeholder=" "></input>
            </div>
            <span class="button-group">
              <button type="button" class="button button-text" onclick="undisplayForm()">Cancel</button>
              <button type="button" class="button button-filled" onclick="undisplayForm()">Submit</button>
            </span>
          </div>
        </form>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet> 