function onelogin -a profile
	pushd ~/.onelogin
	onelogin-aws-assume-role --onelogin-password HanziQ42!94 -p $profile --cache-saml
	popd
end

function __fish_onelogin_complete_profiles
  jq -r '.profiles | keys[]' ~/.onelogin/onelogin.aws.json
end

complete -f -c onelogin  -a "(__fish_onelogin_complete_profiles)"

