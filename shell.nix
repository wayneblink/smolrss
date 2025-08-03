{
  pkgs ? import <nixpkgs> { },
}:

let
  pg = pkgs.postgresql_15;
in
pkgs.mkShell {
  name = "dev-shell";

  nativeBuildInputs = with pkgs.buildPackages; [
    go
    goose
    pg
    sqlc
  ];

  PGDATA = "${toString ./.}/.pg";
  PGHOST = "${toString ./.}/.pg/run";
  PGDATABASE = "smolrss";
}
