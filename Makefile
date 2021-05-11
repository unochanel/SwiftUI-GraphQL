# Generate
.PHONY: generate
generate:
	apollo codegen:generate \
	    --queries=./SwiftUI-GraphQL/Sources/GraphQL/query.graphql \
	    --localSchemaFile=./SwiftUI-GraphQL/Sources/GraphQL/schema.json \
		--target=swift \
		./SwiftUI-GraphQL/Sources/GraphQL/API.swift
