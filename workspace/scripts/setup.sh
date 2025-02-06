mkdir -p workspace/{docs,logs,data,scripts}
cd workspace
touch data/theData.txt
touch docs/document.docx 
touch logs/log.txt 
touch scripts/script.sh

cd docs
echo content of documet 1 > doc1.docx
echo document 2 content > doc2.docx
echo doc 3 > doc3.docx
echo "introduction ..." >welcome.txt
cat doc1.docx doc2.docx > summary.txt
cd ..
grep "document" docs/summary.txt > logs/search_results.txt
cp docs/summary.txt logs/
mv docs/doc2.docx logs/
sudo chown root:adm data
chmod 700 scripts/

