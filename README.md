# vmc_vpc_subnet_create

The max lifetime for a Single Instance deployment is 30 days from creation, but the reality is most people will/should be using this to test the waters and may only want to spin the SDDC up for a couple of hours a day, run some tests and then destroy it. That obviously has it's disadvantages as well. The main one being that you have to start from scratch every time. Starting from scratch is not really an issue however it was desirable to look for efficiencies during the re-deployment.

Creates a new VPC
Creates a VPC Network
Creates three VPC subnets across different Availability Zones
Associates the three VPN subnets to the main route table
Creates desired security group rules
