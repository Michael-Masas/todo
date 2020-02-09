cd $HOME$;
sudo git clone http://github.com/Michael-Masas/todo;
sudo helm repo add stable 'https://kubernetes-charts.storage.googleapis.com';
sudo helm repo update;
helm plugin install https://github.com/chartmuseum/helm-push;
sudo helm package todo;
sudo helm install chartmuseum stable/chartmuseum;
sudo helm delete todo
sudo helm push *todo* chartmuseum;
