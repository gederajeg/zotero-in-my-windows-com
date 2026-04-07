# get the current PDFs under the Zotero folder and copy the list of these PDFs into ...
# the file name Zotero-Storage-PDF-file.txt
ls /c/Users/GRajeg/Zotero -R | grep "\.pdf$" > /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-file.txt

# compare what is new and what has been recorded in the MASTER file
diff --brief <(sort Zotero-Storage-PDF-file.txt) <(sort Zotero-Storage-PDF-file-MASTER.txt)

# cmp -s "Zotero-Storage-PDF-file.txt" "Zotero-Storage-PDF-file-MASTER.txt"

comm -3 "Zotero-Storage-PDF-file.txt" "Zotero-Storage-PDF-file-MASTER.txt"

comm -3 <(sort Zotero-Storage-PDF-file.txt) <(sort Zotero-Storage-PDF-file-MASTER.txt)

# overwrite the MASTER file list with the current list of PDFs
cp /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-file.txt /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-file-MASTER.txt
