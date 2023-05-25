echo "Build Start"

vercel --yes
pip install -r requirements.txt
vercel --yes
# python3.9 manage.py collectstatic 

# make migrations
python3.9 manage.py migrate 
python3.9 manage.py collectstatic

echo "Build End"