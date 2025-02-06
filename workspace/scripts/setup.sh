# Create necessary directories
mkdir -p workspace/{docs,logs,data,scripts}
cd workspace

# Create initial files 
touch data/theData.txt
touch docs/document.docx 
touch logs/log.txt 
touch scripts/script.sh

# Add content to documents
cd docs
echo content of document 1 > doc1.docx
echo document 2 content > doc2.docx
echo doc 3 > doc3.docx

# Add introduction content to welcome.txt
echo "introduction ..." > welcome.txt

# Merge document files into summary.txt
cat doc1.docx doc2.docx > summary.txt
cd ..

# Search for the term "document" in summary.txt and store results
grep "document" docs/summary.txt > logs/search_results.txt

# Copy and move files between directories
cp docs/summary.txt logs/
mv docs/doc2.docx logs/

# Change ownership of the data directory (root:adm)
sudo chown root:adm data

