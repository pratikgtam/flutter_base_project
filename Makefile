
# Usage example: 
#make generate_feature \
feature=affiliateLink \
repository=affiliateLink \
view=affiliateLink \
cubit=affiliateLink

generate_feature:
	dart run scripts/generate_feature/generate_feature.dart \
		--feature=$(feature) \
		--repository=$(repository) \
		--view=$(view) \
		--cubit=$(cubit)
	dart format .
	make build_runner