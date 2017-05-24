# jenkins
### Author: Erick Davi Morgade Pessanha
### Contact: erickdavi@gmail.com

## intelie-ci 2

## English documentation

> Project/chalenge proposed as a stage of Junior Infrastructure Analyst recruitment from [Intelie](http://www.intelie.com.br/).

### Statement:

> Implement Jenkins, using chef, vagrant and virtualbox as virtual instance.

### Prerequisites:
* Execute the project in a Ubuntu 16.04 enviroment and have root account or administration privileges (sudo).
* Have git and chefdk 0.18.30 instaled in your enviroment to clone the repositorie and execute it.

### Actions executed in the project:

1. Provisioning a Virtual machine with the Virtualbox Hypervisor and Ubuntu 16.04 as a guest OS.
2. Provisioning the software Jenkins with chef solo cookbook, integrated with the Vagrantfile.
3. The first step of chef solo cookbook is download and include jenkins repository key.
4. After that, it replaces the file **/etc/apt/sources.list** that have included the jenkins official repository.
5. Then, the repository cache are updated and the packages openjdk-8-jre-headless and jenkins are instaled.
6. Finally the jenkins is configured to startup as a system service.

### Instructions:

> Execute the commands bellow:
1. sudo su
2. cd ~
3. git clone https://github.com/erickdavi/intelie-ci2.git.
4. cd intelie-ci2
4. vagrant up.
5. Access Jenkins with your browser at the address http://localhost:8080 and manage your instance, opening the file **/var/lib/jenkins/secrets/initialAdminPassword** and use the content of it archive for your first authentication  in Jenkins.

> Note: To manage the instance, access the **/root/intelie-ci2/** directory and execute the command **vagrant ssh**.

### Project filesystem:
.intelie-ci/<br>
├── cookbooks<br>
│   └── jenkins<br>
│       ├── Berksfile<br>
│       ├── chefignore<br>
│       ├── _gitignore<br>
│       ├── _kitchen.yml<br>
│       ├── metadata.rb<br>
│       ├── README.md<br>
│       ├── recipes<br>
│       │   └── **default.rb**<br>
│       ├── spec<br>
│       │   ├── spec_helper.rb<br>
│       │   └── unit<br>
│       │       └── recipes<br>
│       │           └── default_spec.rb<br>
│       ├── templates<br>
│       │   └── **sources.list.erb**<br>
│       └── test<br>
│           └── recipes<br>
│               └── default_test.rb<br>
├── **README.md**<br>
└── **Vagrantfile**<br>

### Final Considerations:

> I feel gratefull by this oportunity and I hope to meet you them soon.
> Erick Davi.

TODO: Enter the cookbook description here.

