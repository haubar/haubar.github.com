<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="utf-8"/>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
				<title><xsl:value-of select="rss/channel/title"/></title>
				{{- with $style := resources.Get "css/main.css" | resources.ExecuteAsTemplate "css/main.css" . | resources.Minify | resources.Fingerprint "sha256"}}
				<link rel="stylesheet"
					href="{{ $style.Permalink }}"
					integrity="{{ $style.Data.Integrity }}"/>
				{{- end }}
				{{- with $style := resources.Get "css/rss.css" | resources.ExecuteAsTemplate "css/rss.css" . | resources.Minify | resources.Fingerprint "sha256"}}
				<link rel="stylesheet"
					href="{{ $style.Permalink }}"
					integrity="{{ $style.Data.Integrity }}"/>
				{{- end }}
			</head>
			<body>
				<header id="page-header">
					<a href="/"><h1><xsl:value-of select="rss/channel/title"/> Feed</h1></a>
					<xsl:for-each select="/rss/channel/description">
						<xsl:if test=". != /rss/channel/title" >
							<p><xsl:value-of select="."/></p>
						</xsl:if>
					</xsl:for-each>
					<p>
							This page is a web feed that's meant to be read by a feed reader
							program.

							If it looks funny in your browser, don't worry: it will look fine in
							your favorite news reader.
							For more information on web feeds, see this
						<a href="https://en.wikipedia.org/wiki/Web_feed">Wikipedia article</a>.
					</p>
				</header>
				<main role="main">
					<xsl:for-each select="rss/channel/item">
						<article>
							<h2><a href="{link}" rel="bookmark"><xsl:value-of select="title"/></a></h2>
							<xsl:value-of disable-output-escaping="yes" select="description"/>
						</article>
					</xsl:for-each>
				</main>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
