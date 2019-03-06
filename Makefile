
.DEFAULT_GOAL := check

localcheck:
	./updateBrew.darwin -verify

localupdate:
	./updateBrew.darwin

localverify: localupdate
	./updateBrew.darwin -verify

localpush: localverify
	git add .
	git commit -m "syncing devel formulas"
	git push origin

check:
	./updateBrew -verify

update:
	./updateBrew

verify: update
	./updateBrew -verify

push: verify
	git add .
	git commit -m "syncing devel formulas"
	git push origin master
