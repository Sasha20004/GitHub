git add .
git commit -am "Slava Bogy"
git push 
git clone git@gitlab.com:pristov1/gitlab.git
touch /root/gitlab/hosts
cd "GitHub"
git checkout dev
git clone git@github.com:Sasha20004/GitHub.git -b dev
echo 20.206.81.26 > /root/gitlab/hosts
ansible-playbook -i /root/gitlab/hosts /root/gitlab/playbook.yml
git checkout feature
git clone git@github.com:Sasha20004/GitHub.git -b feature
echo 20.100.168.208 > /root/gitlab/hosts
ansible-playbook -i /root/gitlab/hosts /root/gitlab/playbook.yml
