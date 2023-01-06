package utils

import "encoding/json"

// EncodeToJSON 将数据转化为json串
func EncodeToJSON(v interface{}) string {
	b, _ := json.Marshal(v)
	return string(b)
}
