
#sudo apt install python3-pip
#sudo apt install python3-virtualenv
#virtualenv venv
#source venv/bin/activate
#pip3 install -r ../requirements.txt

cd ..
python3 main.py &
# shellcheck disable=SC2164
cd post_app/
nohup pip3 install -r requirements.txt >> null 2>&1 &
nohup streamlit run app1.py --server.port 30110  >> app1.log 2>&1 &
# shellcheck disable=SC2164
cd ../music_app/
pip3 install -r requirements.txt
streamlit run app2.py --server.port 30120 &
# shellcheck disable=SC2164
cd ../document_app/
pip3 install -r requirements.txt
streamlit run app3.py --server.port 30130 &
