# STEP 4
## get the full file path of the PDF in the zotero storage and save it into "Zotero-Storage-PDF-path.txt"
find /c/Users/GRajeg/Zotero -type f -name "*.pdf" > /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-path.txt

## count the number of lines in a text file
wc -l Zotero-Storage-PDF-path.txt 

# STEP 5
## copying PDF from Zotero storage to the Flash Drive
xargs -a Zotero-Storage-PDF-path.txt -d '\n' cp -t /d/zotero-pdf

ls /d/zotero-pdf -1 | wc -l

# STEP 6
## get the list of file in flash drive and save that list to computer
ls /d/zotero-pdf -R | grep "\.pdf$" > /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/zotero-pdf-in-flash-drive.txt

# compare files in the flash drive vs. in the computer
comm -3 <(sort Zotero-Storage-PDF-file-MASTER.txt) <(sort zotero-pdf-in-flash-drive.txt)

# now we need a script to compare what has been in the zotero-pdf directory in the flash drive vs.
# and what is added later in the laptop zotero storage.
# then we only list or copy the newly added pdf into the flash drive

