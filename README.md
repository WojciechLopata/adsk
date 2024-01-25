# adsk


Ansible z odpowiednimi serwisami do skonfigurowania środowisk do odpalenie Stronki e-commerce jak i elementy do monitorowania stanu "zdrowia" urządzenia na którym się znajdują
W celu włączenia należy użyć komendy: ansible-playbook -i  host.ini install_all.yaml       nie należy przejmować się tym że ansible playbook się nie zamyka, w nim wywołuje telegraf. 
przez port :3000 można się połączyć z grafaną gdzie jesst tam utworzone automatycznie źródło danych z bazy monitorującej, istnieje też możliwość importu dashboardu nie udało mi się jeszcze tego zautomatyzować (wymagane są podobno jakieś klucze które się zmieniają po postawieniu nowego serwisu) w repozytorium załączony jest dashboard w formacie json który można przeciągnąć i w ciągu kilku sekund sobie samemu zaimportować
