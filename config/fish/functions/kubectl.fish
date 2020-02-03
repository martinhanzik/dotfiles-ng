function ktoken
  set name $argv[1]
  if set -q $argv
    set name mhanzik
  end
  k get secret (kubectl get serviceaccounts $name -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 -D
end
