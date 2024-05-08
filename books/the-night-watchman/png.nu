if (not ("local" | path exists)) { mkdir local }
pdftoppm -png the-night-watchman.pdf out> local/t local/tnw
