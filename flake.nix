{
  description = "Raspberry Pi Pico dev environment templates";

  outputs = { self }: {
    templates = {
      c = {
        path = ./c;
        description = "Raspberry Pi Pico C/C++ SDK dev shell";
      };
      python = {
        path = ./python;
        description = "Raspberry Pi Pico Python dev shell";
      };
    };
  };
}
