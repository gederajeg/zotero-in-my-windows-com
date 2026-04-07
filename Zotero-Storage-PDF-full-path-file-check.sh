find /c/Users/GRajeg/Zotero -type f -name "*.pdf" > /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/Zotero-Storage-PDF-path.txt

wc -l Zotero-Storage-PDF-path.txt # count the number of lines in a text file

# copying PDF from Zotero storage
xargs -a Zotero-Storage-PDF-path.txt -d '\n' cp -t /d/zotero-pdf

ls /d/zotero-pdf -1 | wc -l

# get the list of file in flash drive and save to computer
ls /d/zotero-pdf -R | grep "\.pdf$" > /c/Users/GRajeg/OneDrive\ -\ Nexus365/Documents/zotero-in-my-windows-com/zotero-pdf-in-flash-drive.txt

# compare files in the flash drive vs. in the computer
comm -3 <(sort Zotero-Storage-PDF-file-MASTER.txt) <(sort zotero-pdf-in-flash-drive.txt)

# now we need a script to compare what has been in the zotero-pdf directory in the flash drive vs.
# and what is added later in the laptop zotero storage.
# then we only list or copy the newly added pdf into the flash drive

