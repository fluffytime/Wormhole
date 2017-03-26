#VID - Virtual Import Directory for project
VID=github.com/fluffytime/wormhole
#Variables
all: protos

protos: auth/auth.pb.go

auth/auth.pb.go: auth/auth.proto
#protoc --go_out=plugins=grpc,Mshared/shared.proto=$(VID)/shared:. $<
	protoc --go_out=. auth/auth.proto
	go install ./auth/