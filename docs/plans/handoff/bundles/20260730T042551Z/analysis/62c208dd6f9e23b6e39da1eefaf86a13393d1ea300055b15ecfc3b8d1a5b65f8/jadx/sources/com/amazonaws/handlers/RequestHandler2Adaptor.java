package com.amazonaws.handlers;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Response;

/* loaded from: classes.dex */
final class RequestHandler2Adaptor extends RequestHandler2 {

    /* renamed from: do, reason: not valid java name */
    public final RequestHandler f8739do;

    public RequestHandler2Adaptor(RequestHandler requestHandler) {
        if (requestHandler == null) {
            throw new IllegalArgumentException();
        }
        this.f8739do = requestHandler;
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    /* renamed from: do */
    public final void mo5027do(DefaultRequest defaultRequest, AmazonClientException amazonClientException) {
        this.f8739do.m5026if();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof RequestHandler2Adaptor) {
            return this.f8739do.equals(((RequestHandler2Adaptor) obj).f8739do);
        }
        return false;
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    /* renamed from: for */
    public final void mo5028for(DefaultRequest defaultRequest) {
        this.f8739do.m5025for();
    }

    public final int hashCode() {
        return this.f8739do.hashCode();
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    /* renamed from: if */
    public final void mo5029if(DefaultRequest defaultRequest, Response response) {
        this.f8739do.m5024do();
    }
}
