<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
        <head>
            <meta charset="UTF-8"/>
            <title>Faktura VAT</title>
             <link rel="stylesheet" href="zadanie3.css"/>
            <style>
                body {
                    font-family: Arial, sans-serif;
                     background-color: #d4e0e8;
                }
                .container {
                    border: 2px solid black;
                    padding: 20px;
                    width: 800px;
                    margin: 0 auto;
                    background-color: #ffffff;
                    border-radius: 8px; 
                    text-align: left; 
                }
                .container h1 {
                    text-align: center;
                }
                table {
                    border-collapse: collapse;
                    width: 100%;
                    margin-top: 15px;
                }
                table, th, td {
                    border: 1px solid black;
                }
                th, td {
                    padding: 6px;
                }
                .right {
                    text-align: right;
                }
            </style>
        </head>

        <body>
        <div class="container">

            <h1>Faktura VAT</h1>

            <p><strong>Numer faktury:</strong> <xsl:value-of select="FakturaVAT/NumerFaktury"/></p>
            <p><strong>Data wystawienia:</strong> <xsl:value-of select="FakturaVAT/DataWystawienia"/></p>

            <div class="two-columns">

                <div class="column">
                    <h2>Sprzedawca</h2>
                    <p>
                        <strong>Nazwa:</strong>
                        <xsl:value-of select="FakturaVAT/Sprzedawca/Nazwa"/><br/>
                        <strong>Adres:</strong>
                        <xsl:value-of select="FakturaVAT/Sprzedawca/Adres"/>
                    </p>
                </div>

                <div class="column">
                    <h2>Nabywca</h2>
                    <p>
                        <strong>Imię:</strong> <xsl:value-of select="FakturaVAT/Nabywca/Imie"/><br/>
                        <strong>Nazwisko:</strong>
                        <xsl:value-of select="FakturaVAT/Nabywca/Nazwisko"/><br/>
                        <strong>Adres:</strong>
                        <xsl:value-of select="FakturaVAT/Nabywca/Adres"/>
                    </p>
                </div>

            </div>


            <h2>Pozycje</h2>

            <table>
                <tr>
                    <th>Lp</th>
                    <th>Nazwa usługi</th>
                    <th>Ilość</th>
                    <th>Cena jednostkowa [PLN]</th>
                    <th>Wartość [PLN]</th>
                </tr>

                <xsl:for-each select="FakturaVAT/Pozycje/Pozycja">
                    <tr>
                        <td><xsl:value-of select="Lp"/></td>
                        <td><xsl:value-of select="NazwaUslugi"/></td>
                        <td><xsl:value-of select="Ilosc"/></td>
                        <td class="right">
                            <xsl:value-of select="format-number(CenaJednostkowa, '0.00')"/>
                        </td>
                        <td class="right">
                            <xsl:value-of select="format-number(Wartosc, '0.00')"/>
                        </td>
                    </tr>
                </xsl:for-each>

                <tr>
                    <td colspan="4" class="right"><strong>Razem:</strong></td>
                    <td class="right">
                        <strong>
                            <xsl:value-of select="format-number(sum(FakturaVAT/Pozycje/Pozycja/Wartosc), '0.00')"/>
                        </strong>
                    </td>
                </tr>
            </table>
        
        </div>
          <a href="index.html" class="back-button">Powrót na stronę główną</a>

        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
