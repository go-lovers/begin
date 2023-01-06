package controller

import "github.com/gin-gonic/gin"

type Index struct {
}

func IndexInstance() *Index {
	return new(Index)
}

func (i *Index) List(ctx *gin.Context) {

}
