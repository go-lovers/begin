package dao

type User struct {
}

func UserInstance() *User {
	return new(User)
}
