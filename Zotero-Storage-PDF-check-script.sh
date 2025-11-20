ls /c/Users/GRajeg/Zotero -R | grep "\.pdf$" > /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-file.txt

diff --brief <(sort Zotero-Storage-PDF-file.txt) <(sort Zotero-Storage-PDF-file-MASTER.txt)

# cmp -s "Zotero-Storage-PDF-file.txt" "Zotero-Storage-PDF-file-MASTER.txt"

comm -3 "Zotero-Storage-PDF-file.txt" "Zotero-Storage-PDF-file-MASTER.txt"

comm -3 <(sort Zotero-Storage-PDF-file.txt) <(sort Zotero-Storage-PDF-file-MASTER.txt)

cp /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-file.txt /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-file-MASTER.txt
