package main

import (
	"context"
	mba "rpc-mba/kitex_gen/rpc/mba"
)

// ItemServiceImpl implements the last service interface defined in the IDL.
type ItemServiceImpl struct{}

// GetItem implements the ItemServiceImpl interface.
func (s *ItemServiceImpl) GetItem(ctx context.Context, req *mba.GetItemRequest) (resp *mba.GetItemResponse, err error) {
	// TODO: Your code here...
	return
}
