{
  description = "Nix Flake Templates";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };
  outputs = { self, nixpkgs }: {
    templates = {
      shell = {
        path = ./shell;
        description = "Simple devShell template with direnv integration and cross-platform setup";
      };
    }; 
    defaultTemplate = self.templates.shell;
  };
}
