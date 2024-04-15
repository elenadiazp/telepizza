<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html lang="en">

<head>
    <title>Telepizza</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-sm navbar-light bg-danger">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="img/telepizzalogo.png" class="img-fluid" alt="" /></a>

                <div class="d-flex">
                    <img src="img/work.svg" class="me-3 img-fluid" alt=""/>
                    <img src="img/user.svg" class="me-3 img-fluid" alt=""/>
                    <img src="img/cart.svg" class="me-3 img-fluid" alt=""/>

                </div>

            </div>
        </nav>

    </header>
    <main>
        <div class="container shadow mt-2 mb-2">
         <h4 class="pt-3">Entrantes</h4>
		<xsl:for-each select="entrantes/categoria">
            <p class="text-secondary "><xsl:value-of select="@nombre"/></p>
            <div class="row">
			<xsl:for-each select="entrante">
				<div class="col-lg-4 col-md-6 col-12  mb-2">
                    <div class="card">
                        <img class="card-img-top img-fluid"
                            src="https://images.telepizza.com/vol/es/images/content/productos/new/{imagen}.png"
                            alt="Title" />
                        <div class="card-body">
                            <h4 class="card-title"><xsl:value-of select="@nombre"/></h4>
                            <div class="row justify-content-between">
                                <div class="col"><a href="" class="card-text text-secondary text-decoration-none">Ver
                                        más</a></div>
                                <div class="col text-secondary fw-bold text-end mb-2">
                                <xsl:if test="oferta">
                                    <span class="text-danger me-2">(Oferta)</span>
                                </xsl:if>
                                    <xsl:value-of select="precio"/>€</div>
                            </div>
                            <div class="text-end">
                                <button class="btn btn-danger ">AÑADIR</button>
                            </div>
                        </div>
                    </div>
                </div>
			
                 </xsl:for-each>

            </div>

		</xsl:for-each>	
        </div>

        
    </main>
    <footer class=" bg-danger p-3">
        <p class="text-white text-center">Telepizza-Azarquiel</p>
    </footer>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>

</html>

</xsl:template>
</xsl:stylesheet>