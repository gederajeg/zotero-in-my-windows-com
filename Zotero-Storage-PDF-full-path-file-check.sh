# STEP 4
## get the full file path of the PDF in the zotero storage and save it into "Zotero-Storage-PDF-path.txt"
find /c/Users/GRajeg/Zotero -type f -name "*.pdf" > /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-path.txt

## count the number of lines in a text file
wc -l Zotero-Storage-PDF-path.txt 

## compare (i) the (potentially newly added) PDFs in the MASTER list with the (ii) current PDFs in flash drive with from the last update
comm -3 <(sort Zotero-Storage-PDF-file-MASTER.txt) <(sort zotero-pdf-in-flash-drive.txt)

## get the file path of the newly added PDFs in the MASTER in the laptop/computer (but not yet available in the flash drive)
## and store the file path into a file called: "Zotero-Storage-PDF-file-path-to-be-copied-to-flash-drive.txt"
## it is these files to be copied/added to the flash drive
comm -3 <(sort Zotero-Storage-PDF-file-MASTER.txt) <(sort zotero-pdf-in-flash-drive.txt) | grep -Fwf - Zotero-Storage-PDF-path.txt > /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-file-path-to-be-copied-to-flash-drive.txt

# STEP 5
## copying PDF from Zotero storage to the Flash Drive
xargs -a Zotero-Storage-PDF-file-path-to-be-copied-to-flash-drive.txt -d '\n' cp -t /d/zotero-pdf

ls /d/zotero-pdf -1 | wc -l
## count the number of lines in a text file
wc -l Zotero-Storage-PDF-path.txt 

# STEP 6
## get the list of file in flash drive and save that list to computer
ls /d/zotero-pdf -R | grep "\.pdf$" > /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/zotero-pdf-in-flash-drive.txt

# compare again files in the flash drive vs. in the computer
comm -3 <(sort Zotero-Storage-PDF-file-MASTER.txt) <(sort zotero-pdf-in-flash-drive.txt)