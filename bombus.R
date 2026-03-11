[Workspace loaded from ~/.RData]

Loading required namespace: maftools
> # CRITICAL: Fresh session first
  > Sys.setenv(CURL_CA_BUNDLE = "")
> Sys.setenv(LIBCURL_BUILD = "")
> 
  > # Reinstall curl + rgbif with OpenSSL
  > install.packages("curl", configure.args = "--with-openssl", type = "source")
Installing package into ‘C:/Users/Dr. Ramars Amanchys/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/src/contrib/curl_7.0.0.tar.gz'
Content type 'application/x-gzip' length 731109 bytes (713 KB)
downloaded 713 KB

* installing *source* package 'curl' ...
** this is package 'curl' version '7.0.0'
** package 'curl' successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: 'gcc.exe (GCC) 14.3.0'
Error in curl::curl_fetch_memory(x$url$url, handle = x$url$handle) : 
  SSL peer certificate or SSH remote key was not OK [api.gbif.org]:
  schannel: SEC_E_UNTRUSTED_ROOT (0x80090325) - The certificate chain was issued by an authority that is not trusted.
In addition: Warning message:
  In download.file(url, basename(url), quiet = TRUE) :
  URL 'https://github.com/r-windows/bundles/releases/download/curl-8.14.1/curl-8.14.1-ucrt-x86_64.tar.xz': status was 'SSL peer certificate or SSH remote key was not OK'
Execution halted
make: *** [Makevars.win:18: ../.deps/libcurl] Error 1
ERROR: compilation failed for package 'curl'
* removing 'C:/Users/Dr. Ramars Amanchys/AppData/Local/R/win-library/4.5/curl'
* restoring previous 'C:/Users/Dr. Ramars Amanchys/AppData/Local/R/win-library/4.5/curl'
Warning in install.packages :
  installation of package ‘curl’ had non-zero exit status

The downloaded source packages are in
‘C:\Users\Dr. Ramars Amanchys\AppData\Local\Temp\RtmpILTilY\downloaded_packages’
> install.packages("rgbif")
Installing package into ‘C:/Users/Dr. Ramars Amanchys/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/rgbif_3.8.4.zip'
Content type 'application/zip' length 1493681 bytes (1.4 MB)
downloaded 1.4 MB

package ‘rgbif’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Dr. Ramars Amanchys\AppData\Local\Temp\RtmpILTilY\downloaded_packages
> 
  > # Verify OpenSSL backend
  > curl::curl_version()$ssl_version  # Should say "OpenSSL" not "Schannel"
[1] "(OpenSSL/3.5.0) Schannel"
> 
  > # Test GBIF connection
  > library(rgbif)
> name_backbone(name = "Bombus")$usageKey  # Quick API test
Error in curl::curl_fetch_memory(x$url$url, handle = x$url$handle) : 
  SSL peer certificate or SSH remote key was not OK [api.gbif.org]:
  schannel: SEC_E_UNTRUSTED_ROOT (0x80090325) - The certificate chain was issued by an authority that is not trusted.

> # Update these if you haven't recently
  > install.packages(c("rgbif", "dplyr", "ggplot2"))
Error in install.packages : Updating loaded packages
> 
  > # SSL FIX: Force TLS 1.2 or 1.3 and refresh config
  > library(httr)
> set_config(config(ssl_verifypeer = 0L)) # Only use as a last resort if errors persist
> # Better fix: Update your system's curl and openssl libraries
  Restarting R session...
> install.packages(c("rgbif", "dplyr", "ggplot2"))
Installing packages into ‘C:/Users/Dr. Ramars Amanchys/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
also installing the dependencies ‘rlang’, ‘vctrs’

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/rlang_1.1.7.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/vctrs_0.7.1.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/rgbif_3.8.4.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/dplyr_1.2.0.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/ggplot2_4.0.2.zip'
package ‘rlang’ successfully unpacked and MD5 sums checked
package ‘vctrs’ successfully unpacked and MD5 sums checked
package ‘rgbif’ successfully unpacked and MD5 sums checked
package ‘dplyr’ successfully unpacked and MD5 sums checked
package ‘ggplot2’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Dr. Ramars Amanchys\AppData\Local\Temp\RtmpSaE1Jj\downloaded_packages
Loading required namespace: maftools
> options(gbif_user = "soummya_sree28")
> options(gbif_pwd = "soummyasree@28")
> options(gbif_email = "madishettisoummyasree@gmail.com")
> library(rgbif)
> library(dplyr)
Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union
> 
  > # 1. Get the Taxon Key for Genus Bombus
  > taxon_key <- name_backbone(name = "Bombus", rank = "genus")$usageKey
Error in curl::curl_fetch_memory(x$url$url, handle = x$url$handle) : 
  SSL peer certificate or SSH remote key was not OK [api.gbif.org]:
  schannel: SEC_E_UNTRUSTED_ROOT (0x80090325) - The certificate chain was issued by an authority that is not trusted.

> > options(gbif_user = "soummya_sree")
Error: unexpected '>' in ">"

> options(gbif_user = "soummya_sree28")> options(gbif_pwd = "soummyasree@28")> options(gbif_email = "madishettisoummyasree@gmail.com")
Error: unexpected '>' in "options(gbif_user = "soummya_sree28")> options(gbif_pwd = "soummyasree@28")>"

>  options(gbif_user = "soummya_sree28")> options(gbif_pwd = "soummyasree@28")> options(gbif_email = "madishettisoummyasree@gmail.com")
Error: unexpected '>' in " options(gbif_user = "soummya_sree28")> options(gbif_pwd = "soummyasree@28")>"

> View(chr_lengths)
> View(chr_lengths)
> options(gbif_email = "madishettisoummyasree@gmail.com")
> options(gbif_user = "soummya_sree")
> options(gbif_pwd = "soummyasree@28")
> options(gbif_email = "madishettisoummyasree@gmail.com")
> library(rgbif)
> library(dplyr)
> 
  > # 1. Get the Taxon Key for Genus Bombus
  > taxon_key <- name_backbone(name = "Bombus", rank = "genus")$usageKey
Error in curl::curl_fetch_memory(x$url$url, handle = x$url$handle) : 
  SSL peer certificate or SSH remote key was not OK [api.gbif.org]:
  schannel: SEC_E_UNTRUSTED_ROOT (0x80090325) - The certificate chain was issued by an authority that is not trusted.

> # 1. Load curl
  > library(curl)
Using libcurl 8.14.1 with Schannel
> library(httr)
Attaching package: ‘httr’

The following object is masked from ‘package:curl’:
  
  handle_reset
> 
  > # 2. Force R to use a different SSL backend (if on Windows)
  > # This often bypasses the "UNTRUSTED_ROOT" error
  > set_config(config(ssl_verifypeer = 0L)) 
> 
  > # 3. Alternative: Point to a specific CA Bundle (Highly Recommended)
  > # If you have the 'certabr' or 'openssl' package, this usually works:
  > httr::set_config(config(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))
> library(rgbif)
> library(dplyr)
> 
  > # Verify connection
  > # If this returns a 200, you are good to go!
  > curl::curl_fetch_memory("https://api.gbif.org/v1/occurrence/search")
Error in curl::curl_fetch_memory("https://api.gbif.org/v1/occurrence/search") : 
  SSL peer certificate or SSH remote key was not OK [api.gbif.org]:
  schannel: SEC_E_UNTRUSTED_ROOT (0x80090325) - The certificate chain was issued by an authority that is not trusted.

> library(curl)
> library(httr)
> library(rgbif)
> 
  > # This overrides the global curl handle to ignore SSL verification
  > set_config(config(ssl_verifypeer = 0L, ssl_verifyhost = 0L))
> 
  > # TEST: This should now return a list without an error
  > test <- curl_fetch_memory("https://api.gbif.org/v1/occurrence/search")
Error in curl_fetch_memory("https://api.gbif.org/v1/occurrence/search") : 
  SSL peer certificate or SSH remote key was not OK [api.gbif.org]:
  schannel: SEC_E_UNTRUSTED_ROOT (0x80090325) - The certificate chain was issued by an authority that is not trusted.

> library(curl)
> library(httr)
> library(rgbif)
> 
  > # 1. Force R to use the built-in CA bundle instead of Windows Schannel
  > # This is the most reliable way to fix SEC_E_UNTRUSTED_ROOT
  > ca_path <- system.file("CurlSSL", "cacert.pem", package = "RCurl")
> if (ca_path == "") ca_path <- curl::curl_ca_bundle() # Backup location
> 
  > options(curl_interrupt = TRUE) # Keeps R responsive
> httr::set_config(config(cainfo = ca_path, ssl_verifypeer = 0L))
> 
  > # 2. TEST CONNECTION
  > # If this returns '200', the door is open.
  > test_req <- curl::curl_fetch_memory("https://api.gbif.org/v1/occurrence/search")
Error in curl::curl_fetch_memory("https://api.gbif.org/v1/occurrence/search") : 
  SSL peer certificate or SSH remote key was not OK [api.gbif.org]:
  schannel: SEC_E_UNTRUSTED_ROOT (0x80090325) - The certificate chain was issued by an authority that is not trusted.

> library(curl)
> library(httr)
> 
  > # Force R to use the built-in CA bundle instead of Windows Schannel
  > # This is the most direct way to resolve SEC_E_UNTRUSTED_ROOT
  > options(download.file.method = "libcurl")
> httr::set_config(config(ssl_verifypeer = 0L, ssl_verifyhost = 0L))
> 
  > # TEST CONNECTION: 
  > # If this returns 200, the 'gate' is open.
  > test <- curl_fetch_memory("https://api.gbif.org/v1/occurrence/search")
Error in curl_fetch_memory("https://api.gbif.org/v1/occurrence/search") : 
  SSL peer certificate or SSH remote key was not OK [api.gbif.org]:
  schannel: SEC_E_UNTRUSTED_ROOT (0x80090325) - The certificate chain was issued by an authority that is not trusted.

> # 1. Install/Load the 'curl' package specifically
  > if (!require("curl")) install.packages("curl")
> library(curl)
> 
  > # 2. FORCE the SSL backend to OpenSSL (bypasses Windows Schannel)
  > # This is the most common fix for SEC_E_UNTRUSTED_ROOT on Windows
  > if (.Platform$OS.type == "windows") {
    +     set_config(config(ssl_verifypeer = 0L, ssl_verifyhost = 0L))
    +     # This tells curl to use the internal bundle rather than the system one
      +     options(curl_interrupt = TRUE)
    + }
> 
  > # 3. TEST AGAIN with a direct curl handle
  > h <- new_handle()
> handle_setopt(h, ssl_verifypeer = FALSE)
> test_conn <- curl_fetch_memory("https://api.gbif.org/v1/occurrence/search", handle = h)
> 
  > # If this prints 200, we have finally broken through:
  > print(test_conn$status_code)
[1] 200
> library(rgbif)
> library(dplyr)
> 
  > # 1. Define the parameters
  > # Bounding Box (WKT Polygon) covering the Himalayan arc (70E-105E, 25N-40N)
  > himalaya_wkt <- "POLYGON((70 25, 105 25, 105 40, 70 40, 70 25))"
> 
  > # 2. Fetch the Data
  > # This pulls data directly into R. Limit set to 3000 to ensure 
  > # we have ~2000 after cleaning.
  > occ_results <- occ_data(
    +     scientificName = "Bombus",
    +     geometry = himalaya_wkt,
    +     hasCoordinate = TRUE,
    +     year = "1970,2026",
    +     basisOfRecord = c("HUMAN_OBSERVATION", "PRESERVED_SPECIMEN"),
    +     limit = 3000
    + )
Error in curl::curl_fetch_memory(x$url$url, handle = x$url$handle) : 
  SSL peer certificate or SSH remote key was not OK [api.gbif.org]:
  schannel: SEC_E_UNTRUSTED_ROOT (0x80090325) - The certificate chain was issued by an authority that is not trusted.

> library(rgbif)
> library(dplyr)
> library(httr)
> 
  > # Force global settings for all subsequent requests
  > set_config(config(ssl_verifypeer = 0L, ssl_verifyhost = 0L))
> options(download.file.method = "libcurl")
> # 1. Define the Himalayan Arc (WKT Polygon)
  > # Approx: 70-100 Longitude, 25-38 Latitude
  > himalaya_wkt <- "POLYGON((70 25, 100 25, 100 38, 70 38, 70 25))"
> 
  > # 2. Fetch the Data
  > # We use occ_data because it's synchronous and bypasses the download queue
  > occ_results <- occ_data(
    +     scientificName = "Bombus",
    +     geometry = himalaya_wkt,
    +     hasCoordinate = TRUE,
    +     year = "1970,2026",
    +     basisOfRecord = c("HUMAN_OBSERVATION", "PRESERVED_SPECIMEN"),
    +     limit = 3000
    + )
Error in curl::curl_fetch_memory(x$url$url, handle = x$url$handle) : 
  SSL peer certificate or SSH remote key was not OK [api.gbif.org]:
  schannel: SEC_E_UNTRUSTED_ROOT (0x80090325) - The certificate chain was issued by an authority that is not trusted.

> library(curl)
> library(httr)
> library(rgbif)
> 
  > # Force R to use the internal 'curl' certificate bundle instead of Windows
  > # This bypasses the SEC_E_UNTRUSTED_ROOT error entirely.
  > set_config(config(cainfo = curl::curl_ca_bundle(), ssl_verifypeer = 0L))
Error: 'curl_ca_bundle' is not an exported object from 'namespace:curl'

> library(httr)
> library(rgbif)
> library(dplyr)
> 
  > # 1. This tells the underlying network library to stop checking certificates
  > set_config(config(ssl_verifypeer = FALSE, ssl_verifyhost = FALSE))
> 
  > # 2. Check the connection manually one last time
  > # If this says 200, we are golden.
  > test_req <- GET("https://api.gbif.org/v1/occurrence/search")
> status_code(test_req)
[1] 200
> # Define the Himalayan Arc (70E to 102E, 26N to 38N)
  > himalaya_wkt <- "POLYGON((70 26, 102 26, 102 38, 70 38, 70 26))"
> 
  > # Fetch exactly what you need
  > # We pull 3000 to ensure we have ~2000 after cleaning
  > raw_bees <- occ_data(
    +     scientificName = "Bombus",
    +     geometry = himalaya_wkt,
    +     hasCoordinate = TRUE,
    +     year = "1970,2026",
    +     basisOfRecord = c("HUMAN_OBSERVATION", "PRESERVED_SPECIMEN"),
    +     limit = 3000
    + )
Error in curl::curl_fetch_memory(x$url$url, handle = x$url$handle) : 
  SSL peer certificate or SSH remote key was not OK [api.gbif.org]:
  schannel: SEC_E_UNTRUSTED_ROOT (0x80090325) - The certificate chain was issued by an authority that is not trusted.

> library(dplyr)
> library(ggplot2)
> library(sf)
Error in library(sf) : there is no package called ‘sf’

> install.packages("sf")
Installing package into ‘C:/Users/Dr. Ramars Amanchys/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
Warning in install.packages :
  unable to access index for repository https://cran.rstudio.com/src/contrib:
  cannot open URL 'https://cran.rstudio.com/src/contrib/PACKAGES'
Warning in install.packages :
  package ‘sf’ is not available for this version of R

A version of this package for your version of R might be available elsewhere,
see the ideas at
https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
Warning in install.packages :
  
  unable to access index for repository https://cran.rstudio.com/bin/windows/contrib/4.5:
  cannot open URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/PACKAGES'
> install.packages("rnaturalearth")
Installing package into ‘C:/Users/Dr. Ramars Amanchys/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
Warning in install.packages :
  unable to access index for repository https://cran.rstudio.com/src/contrib:
  cannot open URL 'https://cran.rstudio.com/src/contrib/PACKAGES'
Warning in install.packages :
  package ‘rnaturalearth’ is not available for this version of R

A version of this package for your version of R might be available elsewhere,
see the ideas at
https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
Warning in install.packages :
  unable to access index for repository https://cran.rstudio.com/bin/windows/contrib/4.5:
  cannot open URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/PACKAGES'
> install.packages("rnaturalearthdata")
Installing package into ‘C:/Users/Dr. Ramars Amanchys/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
Warning in install.packages :
  unable to access index for repository https://cran.rstudio.com/src/contrib:
  cannot open URL 'https://cran.rstudio.com/src/contrib/PACKAGES'
Warning in install.packages :
  package ‘rnaturalearthdata’ is not available for this version of R

A version of this package for your version of R might be available elsewhere,
see the ideas at
https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
Warning in install.packages :
  unable to access index for repository https://cran.rstudio.com/bin/windows/contrib/4.5:
  cannot open URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/PACKAGES'

> library(dplyr)
> library(ggplot2)
> 
  > # 1. Load your local data from the pen drive
  > # Using the path you provided earlier
  > my_path <- "D:/GBIF Bombus/occurrence.txt" 
> df <- read.delim(my_path, sep = "\t", stringsAsFactors = FALSE, quote = "")
> 
  > # 2. Basic Cleaning 
  > # (Filtering for Himalaya coordinates and the year range 1970-2026)
  > clean_bees <- df %>%
  +     select(species, decimalLatitude, decimalLongitude, year, countryCode) %>%
  +     filter(!is.na(decimalLatitude), !is.na(decimalLongitude)) %>%
  +     filter(year >= 1970) %>%
  +     # Narrowing the geographic window to the Himalayan Arc
  +     filter(decimalLongitude > 70 & decimalLongitude < 105,
               +            decimalLatitude > 24 & decimalLatitude < 38)
> 
  > # 3. Use the built-in world map (No download required)
  > world_map <- map_data("world")
ℹ The package "maps" is required for `map_data()`.
✖ Would you like to install it?
  
  1: Yes
2: No

Selection: 
  Enter an item from the menu, or 0 to exit
Selection: # 4. Create Figure 1
  Enter an item from the menu, or 0 to exit
Selection: fig1 <- ggplot() +
  Enter an item from the menu, or 0 to exit
Selection:     # Draw the background map using polygons
  Enter an item from the menu, or 0 to exit
Selection:     geom_polygon(data = world_map, aes(x = long, y = lat, group = group), 
                            Enter an item from the menu, or 0 to exit
                            Selection:                  fill = "#f2f2f2", color = "#d9d9d9") +
  Enter an item from the menu, or 0 to exit
Selection:     # Plot the bumblebee occurrences
  Enter an item from the menu, or 0 to exit
Selection:     geom_point(data = clean_bees, 
                          Enter an item from the menu, or 0 to exit
                          Selection:                aes(x = decimalLongitude, y = decimalLatitude, color = species), 
                          Enter an item from the menu, or 0 to exit
                          Selection:                alpha = 0.5, size = 1.2) +
  Enter an item from the menu, or 0 to exit
Selection:     # Zoom specifically to the Himalayan Arc
  Enter an item from the menu, or 0 to exit
Selection:     coord_fixed(xlim = c(70, 105), ylim = c(24, 38), ratio = 1.1) +
  Enter an item from the menu, or 0 to exit
Selection:     theme_minimal() +
  Enter an item from the menu, or 0 to exit
Selection:     theme(
  Enter an item from the menu, or 0 to exit
  Selection:         legend.position = "none", # Hide legend if it's too long
  Enter an item from the menu, or 0 to exit
  Selection:         panel.background = element_rect(fill = "aliceblue", color = NA),
  Enter an item from the menu, or 0 to exit
  Selection:         grid.major = element_line(color = "white")
  Enter an item from the menu, or 0 to exit
  Selection:     ) +
  Enter an item from the menu, or 0 to exit
Selection:     labs(
  Enter an item from the menu, or 0 to exit
  Selection:         title = "Figure 1: Bombus Occurrence Map - Himalayan Arc",
  Enter an item from the menu, or 0 to exit
  Selection:         subtitle = paste("Spatial coverage from 1970–2026 | n =", nrow(clean_bees), "records"),
  Enter an item from the menu, or 0 to exit
  Selection:         x = "Longitude", 
  Enter an item from the menu, or 0 to exit
  Selection:         y = "Latitude"
  Enter an item from the menu, or 0 to exit
  Selection:     )
Enter an item from the menu, or 0 to exit
Selection: 
  Enter an item from the menu, or 0 to exit
Selection: # Show the plot
  Enter an item from the menu, or 0 to exit
Selection: print(fig1)
Enter an item from the menu, or 0 to exit
Selection: 
  Enter an item from the menu, or 0 to exit
Selection: # 5. Save it directly to your D: drive
  Enter an item from the menu, or 0 to exit
Selection: ggsave("D:/GBIF Bombus/Figure_1_Occurrence_Map.png", fig1, width = 10, height = 6, dpi = 300)
Enter an item from the menu, or 0 to exit
Selection: 1
Installing package into ‘C:/Users/Dr. Ramars Amanchys/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
Warning: unable to access index for repository https://cran.rstudio.com/src/contrib:
  cannot open URL 'https://cran.rstudio.com/src/contrib/PACKAGES'
Warning: unable to access index for repository https://cran.rstudio.com/bin/windows/contrib/4.5:
  cannot open URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/PACKAGES'
Error in loadNamespace(x) : there is no package called ‘maps’
In addition: Warning message:
  package ‘maps’ is not available for this version of R

A version of this package for your version of R might be available elsewhere,
see the ideas at
https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages 

> Installing package into ‘C:/Users/Dr. Ramars Amanchys/AppData/Local/R/win-library/4.5’
Error: unexpected symbol in "Installing package"

> library(dplyr)
> library(ggplot2)
> 
  > # 1. Load data from your pen drive
  > # We use read.delim because the 'Simple' GBIF download is a tab-separated file
  > df <- read.delim("D:/GBIF Bombus/occurrence.txt", sep = "\t", stringsAsFactors = FALSE)
> 
  > # 2. Clean and Filter
  > # We only want records with coordinates within the 1970-2026 range
  > clean_bees <- df %>%
  +     select(species, decimalLatitude, decimalLongitude, year) %>%
  +     filter(!is.na(decimalLatitude), !is.na(decimalLongitude)) %>%
  +     filter(year >= 1970 & year <= 2026) %>%
  +     # Focus the 'camera' on the Himalayan Arc coordinates
  +     filter(decimalLongitude > 70 & decimalLongitude < 105,
               +            decimalLatitude > 24 & decimalLatitude < 38)
> 
  > # 3. Plot Figure 1
  > # Even without a background map, the points will trace the shape of the mountains
  > fig1 <- ggplot(clean_bees, aes(x = decimalLongitude, y = decimalLatitude)) +
  +     # Points colored by species; alpha makes overlapping points visible
  +     geom_point(aes(color = species), alpha = 0.4, size = 1.5) +
  +     # Fix the aspect ratio so the map isn't stretched
  +     coord_fixed(ratio = 1.1) +
  +     theme_minimal() +
  +     theme(
    +         legend.position = "none", # Hide legend if there are too many species
    +         panel.grid.major = element_line(color = "gray90"),
    +         plot.title = element_text(face = "bold")
    +     ) +
  +     labs(
    +         title = "Figure 1: Bombus Occurrence Map (Himalayan Arc)",
    +         subtitle = paste("Spatial coverage from 1970-2026 | n =", nrow(clean_bees)),
    +         x = "Longitude (°E)", 
    +         y = "Latitude (°N)"
    +     )
> 
  > # 4. Save the result to your D: drive
  > ggsave("D:/GBIF Bombus/Figure1_Himalaya_Map.png", fig1, width = 10, height = 6)
> 
  > # Show a quick preview
  > print(fig1)
> library(dplyr)
> library(ggplot2)
> 
  > # 1. Load your local data
  > df <- read.delim("D:/GBIF Bombus/occurrence.txt", sep = "\t", stringsAsFactors = FALSE)
> 
  > # 2. Clean Data
  > clean_bees <- df %>%
  +     filter(!is.na(decimalLatitude), !is.na(decimalLongitude), year >= 1970) %>%
  +     filter(decimalLongitude > 70 & decimalLongitude < 105,
               +            decimalLatitude > 25 & decimalLatitude < 38)
> 
  > # 3. Create the "Himalayan Arc" Layer (Manual Tectonic Backbone)
  > # These coordinates approximate the Main Central Thrust (MCT) arc
  > himalayan_arc <- data.frame(
    +     lon = c(72, 75, 78, 81, 84, 87, 90, 93, 96, 98),
    +     lat = c(35, 34, 32, 30, 28.5, 27.8, 27.5, 27.4, 28, 29)
    + )
> 
  > # 4. Plot with Juxtaposed Layers
  > fig1 <- ggplot() +
  +     # LAYER 1: The Geological/Tectonic Arc (The "Backbone")
  +     geom_line(data = himalayan_arc, aes(x = lon, y = lat), 
                  +               color = "darkred", size = 1.2, linetype = "dashed", alpha = 0.5) +
  +     # Add a subtle label for the Arc
  +     annotate("text", x = 85, y = 27, label = "Himalayan Arc (MCT/MBT)", 
                 +              color = "darkred", fontface = "italic", size = 3) +
  +     
  +     # LAYER 2: The Bombus Dots
  +     geom_point(data = clean_bees, 
                   +                aes(x = decimalLongitude, y = decimalLatitude, color = species), 
                   +                alpha = 0.4, size = 1.5) +
  +     
  +     # Styling
  +     coord_fixed(ratio = 1.1, xlim = c(72, 100), ylim = c(25, 36)) +
  +     theme_minimal() +
  +     theme(
    +         legend.position = "none",
    +         panel.background = element_rect(fill = "#f9f9f9", color = NA),
    +         panel.grid.major = element_line(color = "white")
    +     ) +
  +     labs(
    +         title = "Figure 1: Bombus Distribution Juxtaposed on Himalayan Arc",
    +         subtitle = "Points: GBIF Occurrences (1970-2026) | Red Line: Approximate Tectonic Front",
    +         x = "Longitude (°E)", y = "Latitude (°N)"
    +     )
Warning message:
  Using `size` aesthetic for lines was deprecated in ggplot2 3.4.0.
ℹ Please use `linewidth` instead.
This warning is displayed once per session.
Call warnings()lifecycle::last_lifecycle_warnings() to see where this warning was generated. 
> 
  > # Show and Save
  > print(fig1)
> ggsave("D:/GBIF Bombus/Figure1_Tectonic_Context.png", fig1, width = 10, height = 5)
> library(dplyr)
> library(ggplot2)
> 
  > # 1. Load your local data
  > df <- read.delim("D:/GBIF Bombus/occurrence.txt", sep = "\t", stringsAsFactors = FALSE)
> 
  > # 2. Advanced Clean (Exclude obvious outliers outside the arc)
  > clean_bees <- df %>%
  +     filter(!is.na(decimalLatitude), !is.na(decimalLongitude), year >= 1970) %>%
  +     filter(decimalLongitude > 72 & decimalLongitude < 98,
               +            decimalLatitude > 26 & decimalLatitude < 36)
> 
  > # 3. Define Tectonic Zones (Manual Digitization)
  > # This mimics the "Wu" and "Bilham" maps you referenced
  > # Frontal Arc (Approx MBT/MFT)
  > frontal_arc <- data.frame(
    +     lon = c(72, 75, 78, 81, 84, 88, 92, 96, 97),
    +     lat = c(33, 32.5, 30, 28.5, 27.5, 26.5, 26.5, 27.5, 28.5)
    + )
> 
  > # High Himalayan Arc (Approx MCT/High Peaks)
  > high_arc <- data.frame(
    +     lon = c(73, 76, 79, 82, 85, 89, 93, 97, 98),
    +     lat = c(35.5, 34.5, 32, 30.5, 29.5, 28.5, 28.5, 29.5, 30.5)
    + )
> 
  > # 4. Create Publication-Ready Map
  > fig1 <- ggplot() +
  +     # ZONE 1: Lesser Himalaya Shading (The area between the arcs)
  +     geom_ribbon(aes(x = frontal_arc$lon, 
                        +                     ymin = frontal_arc$lat, 
                        +                     ymax = high_arc$lat[1:nrow(frontal_arc)]), 
                    +                 fill = "gray90", alpha = 0.5) +
  +     
  +     # LAYER 2: Major Fault Lines (Tectonic Context)
  +     geom_line(data = frontal_arc, aes(x = lon, y = lat), 
                  +               color = "black", size = 0.8) + # MBT
  +     geom_line(data = high_arc, aes(x = lon, y = lat), 
                  +               color = "black", size = 0.8, linetype = "dashed") + # MCT
  +     
  +     # LAYER 3: Bombus Occurrences
  +     # Using 'species' to color, but grouped by density
  +     geom_point(data = clean_bees, 
                   +                aes(x = decimalLongitude, y = decimalLatitude, color = species), 
                   +                alpha = 0.6, size = 1.2) +
  +     
  +     # Annotations for publication
  +     annotate("text", x = 80, y = 28, label = "Indo-Gangetic Plain", size = 3, color = "gray40") +
  +     annotate("text", x = 85, y = 32, label = "Tibetan Plateau", size = 3, color = "gray40") +
  +     annotate("text", x = 92, y = 27.2, label = "Himalayan Arc (MBT)", size = 2.5, angle = -5) +
  +     
  +     # Layout & Scaling
  +     coord_fixed(ratio = 1.1, xlim = c(72, 98), ylim = c(26, 36)) +
  +     theme_bw() +
  +     theme(
    +         legend.position = "none", # Legend usually goes in a separate table for pub
    +         panel.grid.major = element_blank(),
    +         panel.grid.minor = element_blank(),
    +         axis.title = element_text(size = 12, face = "bold"),
    +         plot.title = element_text(size = 14, hjust = 0.5)
    +     ) +
  +     labs(
    +         title = "Figure 1: Bombus Distribution & Himalayan Tectonic Framework",
    +         x = "Longitude (°E)", 
    +         y = "Latitude (°N)"
    +     )
> 
  > # 5. Output for npj Natural Hazards
  > print(fig1)
> ggsave("D:/GBIF Bombus/Figure1_Publication_Arc.pdf", fig1, width = 10, height = 5) 
> # Note: Saving as .pdf is better for publication as it's a vector format.
  > library(dplyr)
> library(ggplot2)
> 
  > # 1. Load your local data from the D: drive
  > df <- read.delim("D:/GBIF Bombus/occurrence.txt", sep = "\t", stringsAsFactors = FALSE)
> 
  > # 2. Refined Cleaning
  > # We'll calculate a 'Density' score to make the points look more professional
  > clean_bees <- df %>%
  +     filter(!is.na(decimalLatitude), !is.na(decimalLongitude), year >= 1970) %>%
  +     filter(decimalLongitude > 72 & decimalLongitude < 98,
               +            decimalLatitude > 26 & decimalLatitude < 36)
> 
  > # 3. Create the Tectonic "Hazard" Layers
  > # Main Boundary Thrust (The toe of the mountains)
  > mbt <- data.frame(
    +     x = c(72, 75, 78, 81, 84, 88, 92, 96, 97.5),
    +     y = c(33, 32.5, 30.2, 28.8, 27.6, 26.8, 26.7, 27.8, 29)
    + )
> 
  > # Main Central Thrust (The high-elevation boundary)
  > mct <- data.frame(
    +     x = c(73, 76, 79, 82, 85, 89, 93, 97, 98.5),
    +     y = c(35.2, 34.2, 32.2, 30.6, 29.3, 28.6, 28.5, 29.6, 30.8)
    + )
> 
  > # 4. THE FINAL PUBLICATION PLOT
  > final_plot <- ggplot() +
  +     # LAYER 1: The Orogenic Wedge (Shaded area between MBT and MCT)
  +     geom_ribbon(aes(x = mbt$x, ymin = mbt$y, ymax = mct$y[1:9]), 
                    +                 fill = "#e0e0e0", alpha = 0.5) +
  +     
  +     # LAYER 2: Tectonic Hazard Lines
  +     geom_line(data = mbt, aes(x = x, y = y), color = "black", size = 1.1) + # The Front
  +     geom_line(data = mct, aes(x = x, y = y), color = "#d73027", size = 1, linetype = "dotdash") + # The High Arc
  +     
  +     # LAYER 3: The Data (Bombus Occurrences)
  +     # Using a 'hot' color scale to signify biological hotspots in a hazard zone
  +     geom_point(data = clean_bees, 
                   +                aes(x = decimalLongitude, y = decimalLatitude, color = year), 
                   +                alpha = 0.7, size = 1.8, shape = 16) +
  +     scale_color_gradientn(colors = c("#fee08b", "#fdae61", "#f46d43", "#a50026")) +
  +     
  +     # LAYER 4: Annotations (NPJ Style)
  +     annotate("label", x = 75, y = 35.5, label = "NW Himalaya", size = 3, fontface = "bold") +
  +     annotate("label", x = 85, y = 29.5, label = "Central Gap", size = 3, fontface = "bold", fill = "white") +
  +     annotate("label", x = 94, y = 29.5, label = "Eastern Syntax", size = 3, fontface = "bold") +
  +     annotate("text", x = 84, y = 26.5, label = "Main Boundary Thrust (MBT)", size = 2.5, fontface = "italic") +
  +     
  +     # Final Polishing
  +     coord_fixed(ratio = 1.1, xlim = c(73, 97), ylim = c(26, 36)) +
  +     theme_minimal() +
  +     theme(
    +         panel.background = element_rect(fill = "white", color = "black"),
    +         panel.grid.major = element_line(color = "gray95"),
    +         legend.position = "right",
    +         axis.title = element_text(face = "bold"),
    +         plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    +         plot.subtitle = element_text(size = 11, hjust = 0.5, color = "gray30")
    +     ) +
  +     labs(
    +         title = "Himalayan Bombus Distribution vs. Tectonic Fronts",
    +         subtitle = "Interpreted Hazard Zones juxtaposed with Biological Occurrence Data (1970-2026)",
    +         x = "Longitude (°E)", y = "Latitude (°N)",
    +         color = "Collection Year"
    +     )
> 
  > # 5. The "Go Buddy Go" Output
  > print(final_plot)
> ggsave("D:/GBIF Bombus/Figure1_FINAL_PUBLICATION.pdf", final_plot, width = 12, height = 6, device = "pdf")
> library(dplyr)
> library(ggplot2)
> 
  > # 1. Load data from D: drive
  > df <- read.delim("D:/GBIF Bombus/occurrence.txt", sep = "\t", stringsAsFactors = FALSE)
> 
  > # 2. Setup Tectonic MBT (Main Boundary Thrust) Coordinates
  > mbt_coords <- data.frame(
    +     mbt_lon = c(72, 75, 78, 81, 84, 88, 92, 96, 97.5),
    +     mbt_lat = c(33, 32.5, 30.2, 28.8, 27.6, 26.8, 26.7, 27.8, 29)
    + )
> 
  > # 3. Calculate "Distance to Fault" for every bee
  > # This function finds the minimum distance from a bee to any point on the MBT line
  > calc_dist <- function(lon, lat) {
    +     dists <- sqrt((mbt_coords$mbt_lon - lon)^2 + (mbt_coords$mbt_lat - lat)^2)
    +     return(min(dists))
    + }
> 
  > # 4. Process the data
  > bee_hazards <- df %>%
  +     filter(!is.na(decimalLatitude), !is.na(decimalLongitude), year >= 1970) %>%
  +     # Filter to the Himalayan footprint
  +     filter(decimalLongitude > 72 & decimalLongitude < 98,
               +            decimalLatitude > 26 & decimalLatitude < 36) %>%
  +     rowwise() %>%
  +     mutate(dist_to_mbt = calc_dist(decimalLongitude, decimalLatitude)) %>%
  +     ungroup()
> 
  > # 5. GENERATE THE "FUNKY" PUBLICATION FIGURE
  > # We will size the points by their year and color them by proximity to the fault
  > final_fig <- ggplot(bee_hazards) +
  +     # Background "Hazard Zone"
  +     annotate("rect", xmin=72, xmax=98, ymin=26, ymax=30, fill="#fff5f0", alpha=0.5) +
  +     
  +     # The Tectonic Line
  +     geom_line(data = mbt_coords, aes(x = mbt_lon, y = mbt_lat), 
                  +               color = "black", size = 1.5, alpha = 0.8) +
  +     
  +     # The Bees (Colored by "Danger Proximity")
  +     geom_point(aes(x = decimalLongitude, y = decimalLatitude, 
                       +                    color = dist_to_mbt, size = year), 
                   +                alpha = 0.7) +
  +     
  +     # Styling for npj Natural Hazards
  +     scale_color_gradient(low = "#e31a1c", high = "#feb24c", name = "Dist. to MBT") +
  +     scale_size_continuous(range = c(1, 3), guide = "none") +
  +     coord_fixed(ratio = 1.1) +
  +     theme_minimal() +
  +     theme(
    +         panel.grid.major = element_line(color = "gray90"),
    +         axis.title = element_text(face = "bold"),
    +         plot.title = element_text(size = 16, family = "serif")
    +     ) +
  +     labs(
    +         title = "Figure 1: Bombus Niche Segregation within the Himalayan Frontal Thrust",
    +         subtitle = "Analysis of biological occurrences relative to active tectonic strain zones",
    +         x = "Longitude (°E)", y = "Latitude (°N)"
    +     )
> 
  > # Save the final vector PDF
  > ggsave("D:/GBIF Bombus/Figure1_Hazard_Analysis.pdf", final_fig, width = 12, height = 6)
> 
  > # 6. PRINT YOUR STATS FOR THE PAPER
  > mbt_threshold <- 1.0 # approx 100km in degrees
> near_fault <- sum(bee_hazards$dist_to_mbt < mbt_threshold)
> percent_near <- round((near_fault / nrow(bee_hazards)) * 100, 1)
> 
  > cat("--- MANUSCRIPT STATISTICS ---\n")
--- MANUSCRIPT STATISTICS ---
  > cat("Total Himalayan Records Analyzed:", nrow(bee_hazards), "\n")
Total Himalayan Records Analyzed: 148 
> cat("Percentage of species within 1° of the MBT fault line:", percent_near, "%\n")
Percentage of species within 1° of the MBT fault line: 14.2 %
> cat("Mean Longitude of occurrence arc:", round(mean(bee_hazards$decimalLongitude), 2), "\n")
Mean Longitude of occurrence arc: 81.98 
> # Metadata for Publication
  > cat("--- GEOSPATIAL METADATA ---\n")
--- GEOSPATIAL METADATA ---
  > cat("Bounding Box: 72°E-98°E, 26°N-36°N\n")
Bounding Box: 72°E-98°E, 26°N-36°N
> cat("Coordinate Reference: WGS84 (Decimal Degrees)\n")
Coordinate Reference: WGS84 (Decimal Degrees)
> cat("Color Palette: ColorBrewer YlOrRd (4-class)\n")
Color Palette: ColorBrewer YlOrRd (4-class)
> cat("Distance Metric: Euclidean Proximity to Digitized MBT\n")

Distance Metric: Euclidean Proximity to Digitized MBT
library(dplyr)
library(ggplot2)
library(tidyr)

# 1. Load your processed 'bee_hazards' data (The 148 filtered records)
# This assumes you ran the previous proximity code successfully.

# 2. Advanced Statistical Grouping by Species
# We calculate 'Occurrence Count' and 'Median Distance to Fault'
species_risk_data <- bee_hazards %>%
  group_by(species) %>%
  summarise(
    occurrence_count = n(),
    median_dist_to_mbt = median(dist_to_mbt),
    # Calculate a "risk percentage" (records < 1 degree from fault)
    high_risk_prop = sum(dist_to_mbt < 1.0) / n()
  ) %>%
  # Filter out rare species (singletons) to make the plot clean
  filter(occurrence_count > 1) %>%
  # Sort by count for better visualization
  arrange(desc(occurrence_count))

# 3. GENERATE THE RISK PROFILE VISUALIZATION
risk_profile_fig <- ggplot(species_risk_data) +
  # Create "Risk zones" (Shaded background)
  annotate("rect", xmin=0, xmax=1.0, ymin=0, ymax=Inf, fill="#fff5f0", alpha=0.5) +
  annotate("rect", xmin=1.0, xmax=2.0, ymin=0, ymax=Inf, fill="#f9f9f9", alpha=0.5) +
  
  # Plot the species as points
  # Size = Occurrence Count, Color = Proximity to Danger
  geom_point(aes(x = median_dist_to_mbt, y = reorder(species, occurrence_count), 
                 size = occurrence_count, color = median_dist_to_mbt), alpha = 0.8) +
  
  # Labels and text annotations
  geom_text(aes(x = median_dist_to_mbt, y = reorder(species, occurrence_count), 
                label = paste0("n=", occurrence_count)), 
            hjust = -0.3, size = 3, color = "gray20") +
  
  # Styling for npj Natural Hazards
  scale_size_continuous(range = c(2, 6), guide = "none") +
  scale_color_gradient(low = "#e31a1c", high = "#feb24c", name = "Median Dist. to MBT") +
  
  scale_x_continuous(limits = c(0, 3.5), breaks = seq(0, 3.5, by=0.5)) +
  
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 9, face = "italic"),
    axis.title = element_text(face = "bold"),
    plot.title = element_text(size = 14, hjust = 0.5),
    panel.grid.major.y = element_blank(),
    legend.position = "right"
  ) +
  labs(
    title = "Figure 6: Himalayan Bombus Species-Specific Seismic Risk Profiles",
    subtitle = "Analysis of n=148 records against the Main Boundary Thrust (MBT) hazard front",
    x = "Median Euclidean Distance to MBT (approx. degrees)",
    y = "Species (Grouped by Total Occurrences)"
  )

# Output for Publication
print(risk_profile_fig)
ggsave("D:/GBIF Bombus/Figure6_Species_Risk.pdf", risk_profile_fig, width = 11, height = 7, device = "pdf")
