package main

import (
	"context"
	"github.com/cloudwego/hertz/pkg/app"
	"rpc-mba/constants"
	"time"
)

import "github.com/cloudwego/hertz/pkg/app/server"

func main() {
	h := server.Default()
	h.GET("/ping", func(c context.Context, ctx *app.RequestContext) {
		ctx.String(constants.StatusOk, "ping:%+v", time.Now())
	})
	h.Spin()
}
