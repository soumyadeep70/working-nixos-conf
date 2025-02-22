{ ... }:

{
  services.upower = {
    enable = true;
    criticalPowerAction = "Hibernate";
  };
  
  services.cpupower-gui.enable = true;
}