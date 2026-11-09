# STEP 1
# get the current PDFs under the Zotero PDF storage folder and copy the list of these PDFs into ...
# ... the file named "Zotero-Storage-PDF-file.txt"
ls /c/Users/GRajeg/Zotero -R | grep "\.pdf$" > /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-file.txt

# STEP 2
# Compare what is new (in "Zotero-Storage-PDF-file.txt" and what has been recorded in the MASTER file (in "Zotero-Storage-PDF-file-MASTER.txt")
# The MASTER file ("Zotero-Storage-PDF-file-MASTER.txt") records existing PDFs from the last updated zotero storage
# Comparing the MASTER with the existing PDFs from the zotero storage ...
# ... will let us know what addition there is in the zotero storage not available in MASTER file.
# this code below returns bolean-like output if two compared files DIFFER or NOT
diff --brief <(sort Zotero-Storage-PDF-file.txt) <(sort Zotero-Storage-PDF-file-MASTER.txt) 

# cmp -s "Zotero-Storage-PDF-file.txt" "Zotero-Storage-PDF-file-MASTER.txt"

# comm -3 "Zotero-Storage-PDF-file.txt" "Zotero-Storage-PDF-file-MASTER.txt"

# this code below explicitly shows which additional files are not available from the MASTER file
comm -3 <(sort Zotero-Storage-PDF-file.txt) <(sort Zotero-Storage-PDF-file-MASTER.txt) 

# STEP 3
# overwrite the MASTER file list with the current list of PDFs
cp /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-file.txt /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-file-MASTER.txt

# Go to "Zotero-Storage-PDF-full-path-file-check.SH" for the next STEP