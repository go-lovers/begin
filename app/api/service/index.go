package service

type Index struct {
}

func IndexInstance() *Index {
	return new(Index)
}
