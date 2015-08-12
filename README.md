# An external CSV data connection for Excel

The .xlsx file is a minimal Excel document with an external data connection to
a URL.  The URL should point to a UTF-8 encoded, CSV which uses double quotes
for quoting values.  Data is imported into the "External data" sheet.

To fetch the data, select the "External data" sheet and click the Refresh
button in the Data ribbon.  Alternatively, click Data → Refresh Data from the
menus.

Fetched data will be cached in the document after the first refresh.  It will
not be refreshed automatically.

If a refresh fails, click the Retry button; it often works on the second try.

For best results, never modify the "External data" sheet and instead do all
your custom work in other sheets.  Pivot tables and formulas can refer to data
in the "External data" sheet without any problem.  You may need to check your
data source ranges after refresh to make sure they were updated (usually they
are).

# Modifying the URL

The provided file is just an example.  To modify the URL used, edit the
`sourceFile` attribute in the `xl/connections.xml` file.  After doing so,
rebuild the .xlsx by running `make`.

# Why?

This kind of external data connection is not possible to setup just using the
Office 2011 for Mac interface, though Excel supports such connections.  It
appears to be configurable on Windows due to the tight integration of Explorer
and Internet Explorer that allows you to paste in a URL as a file path.
