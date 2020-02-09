cd $HOME;
sudo git clone http://github.com/Michael-Masas/todo;
sudo helm repo add stable 'https://kubernetes-charts.storage.googleapis.com';
sudo helm repo update;
sudo helm plugin install https://github.com/chartmuseum/helm-push;
sudo helm install chartmuseum stable/chartmuseum -f chartmuesum_values.yaml;
sudo helm repo add chartmuseum http://$(sudo minikube ip):33785;
sudo helm repo update;
sudo helm package ./todo;
sudo helm push ./todo chartmuseum;
