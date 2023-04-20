include "base.thrift"
namespace go rpc.mba

struct Item {
    1: required i64 id,
    2: required string title,
    3: required string content,
    10: optional map<string, string> extra,
}

struct GetItemRequest {
    1: required i64 id,
    255: optional base.Base Base,
}

struct GetItemResponse {
    1: required Item item,
    255: optional base.BaseResp BaseResp
}

service ItemService {
    GetItemResponse GetItem(1: GetItemRequest req)
}
