#!/bin/bash

set -e

no_test=0
no_lint=0
stack_opts='--verbosity warn --stack-yaml exercises/stack.yaml'

while (( $# > 0 )); do
   case "$1" in
   	--help)
			printf "run.sh [OPTION]... [TEST FILE]\n"
			printf "options:\n"
			printf "\t--help			Show help\n"
			printf "\t--no-test		Skip tests\n"
			printf "\t--no-lint		Skip linting\n"
			exit 0
      	;;
      --no-test)
			no_test=1
			shift
      	;;
      --no-lint)
			no_lint=1
			shift
			;;
		--profile)
			stack_opts="--profile --force-dirty $stack_opts"
			shift
			;;
		*)
			break
	      ;;
   esac
done

tests=()
if [[ -z "$1" ]]; then
	tests=(exercises/*Test.hs)
else
	pattern='.*Test\.hs'
	if [[ ! "$1" =~ $pattern ]]; then
		printf "Filename: '%s' doesn't match the pattern *Test.hs\n" "$1"
		exit 1
	fi
	tests=("$1")
fi

ormolu_mode="check"
if [[ "$OSTYPE" == "darwin"* ]]; then
	ormolu_mode="inplace"
fi

stack build $stack_opts \
		  --ghc-options "-Wall -Werror"

green='\033[1;32m'
no_color='\033[0m'
for t in "${tests[@]}"; do
	test="$(basename "$t")"

	if (( no_test == 0 )); then
		# profiling https://stackoverflow.com/a/40922201/839733
		printf "Running tests from: %b%s%b\n" "$green" "$test" "$no_color"
		stack runhaskell $stack_opts "$test" --cwd exercises
	fi

	main="${test:0:$((${#test} - 7))}.hs"
	if (( no_lint == 0 )); then
		if [[ -x "$(command -v hlint)" ]]; then
			hlint -p exercises "$main"
		else
			printf "hlint not found"
		fi
		
		if [[ -x "$(command -v ormolu)" ]]; then
			ormolu -m "$ormolu_mode" "exercises/$main"
		else
			printf "ormolu not found"
		fi
	fi
done