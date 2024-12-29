{ pkgs, lib, ... }:

let
  inherit (pkgs.stdenv) isDarwin isLinux isi686 isx86_64 isAarch32 isAarch64;
  vscode-utils = pkgs.vscode-utils;
  merge = lib.attrsets.recursiveUpdate;
in
merge
  (merge
    (merge
      (merge
      {
        "eamodio"."gitlens" = vscode-utils.extensionFromVscodeMarketplace {
          name = "gitlens";
          publisher = "eamodio";
          version = "2024.12.2404";
          sha256 = "0wc0hqaxf5sh9wjsx29mnl6i8bf2jhsi4a1hshwiwm08p6lhg4fv";
        };
        "pkief"."material-icon-theme" = vscode-utils.extensionFromVscodeMarketplace {
          name = "material-icon-theme";
          publisher = "pkief";
          version = "5.16.0";
          sha256 = "0ggwj2y84dyqhzl9kisddx64559bkhnfv94zxz6zcqyfq0vpycng";
        };
        "wakatime"."vscode-wakatime" = vscode-utils.extensionFromVscodeMarketplace {
          name = "vscode-wakatime";
          publisher = "wakatime";
          version = "25.0.0";
          sha256 = "1c5ilsj8zvcrhvh3gb9wbgz8llfkjgxnv39r12a3iyy3fvdg5zlz";
        };
        "github"."github-vscode-theme" = vscode-utils.extensionFromVscodeMarketplace {
          name = "github-vscode-theme";
          publisher = "github";
          version = "6.3.5";
          sha256 = "0jj7bp5iadrm2h75pdn96z0wzygv0sfa93karvlqlwagh2hrvrkl";
        };
        "denoland"."vscode-deno" = vscode-utils.extensionFromVscodeMarketplace {
          name = "vscode-deno";
          publisher = "denoland";
          version = "3.43.1";
          sha256 = "0lna1znrbsdggzp6mx079461p21ngwgqz6mb7i3d0bnpxb844x3a";
        };
        "unifiedjs"."vscode-mdx" = vscode-utils.extensionFromVscodeMarketplace {
          name = "vscode-mdx";
          publisher = "unifiedjs";
          version = "1.8.12";
          sha256 = "0afzx5i6bw7hmm4f8vdvx6a6mx053gmvc0gn78fz94b6fyaijsl7";
        };
        "pkief"."material-product-icons" = vscode-utils.extensionFromVscodeMarketplace {
          name = "material-product-icons";
          publisher = "pkief";
          version = "1.7.1";
          sha256 = "1g75m55fc6nnfazpgmjxc48kw8abv85sglmmmjglwwgwi0di2xlj";
        };
        "vivaxy"."vscode-conventional-commits" = vscode-utils.extensionFromVscodeMarketplace {
          name = "vscode-conventional-commits";
          publisher = "vivaxy";
          version = "1.26.0";
          sha256 = "1n414wwd6my4xjmh55b6l0s8bqadnq35ya1isxvdi6yabapbwg9f";
        };
        "jnoortheen"."nix-ide" = vscode-utils.extensionFromVscodeMarketplace {
          name = "nix-ide";
          publisher = "jnoortheen";
          version = "0.3.5";
          sha256 = "12sg67mn3c8mjayh9d6y8qaky00vrlnwwx58v1f1m4qrbdjqab46";
        };
        "doppler"."doppler-vscode" = vscode-utils.extensionFromVscodeMarketplace {
          name = "doppler-vscode";
          publisher = "doppler";
          version = "0.0.10";
          sha256 = "1cqaxnf45in44i4za36diirgh1q5rkmk27is9h6zgnmgl2i9awa7";
        };
      }
        (lib.attrsets.optionalAttrs (isLinux && (isi686 || isx86_64)) { }))
      (lib.attrsets.optionalAttrs (isLinux && (isAarch32 || isAarch64)) { }))
    (lib.attrsets.optionalAttrs (isDarwin && (isi686 || isx86_64)) { }))
  (lib.attrsets.optionalAttrs (isDarwin && (isAarch32 || isAarch64)) { })
