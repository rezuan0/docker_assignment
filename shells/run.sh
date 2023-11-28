
#sudo apt install python3-pip
#sudo apt install python3-virtualenv
#virtualenv venv
#source venv/bin/activate
#pip3 install -r ../requirements.txt

python3 main.py &
# shellcheck disable=SC2164
cd post_app/
streamlit run app1.py --server.port 30110 >> ../logs/app1.log 2>&1 &
# shellcheck disable=SC2164
cd ../music_app/
streamlit run app2.py --server.port 30120 >> ../logs/app2.log 2>&1 &
# shellcheck disable=SC2164
cd ../document_app/
streamlit run app3.py --server.port 30130 >> ../logs/app3.log 2>&1 &
