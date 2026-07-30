package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Response;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.SDKInfo;

/* loaded from: classes.dex */
public final class SDKInfoHandler extends RequestHandler2 {

    /* renamed from: do, reason: not valid java name */
    public final SDKInfo f8815do;

    public SDKInfoHandler(SDKInfo sDKInfo) {
        this.f8815do = sDKInfo;
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    /* renamed from: do */
    public final void mo5027do(DefaultRequest defaultRequest, AmazonClientException amazonClientException) {
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    /* renamed from: for */
    public final void mo5028for(DefaultRequest defaultRequest) {
        defaultRequest.m4975do("x-amzn-ClientSDKVersion", String.format("%s", this.f8815do.toString()));
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    /* renamed from: if */
    public final void mo5029if(DefaultRequest defaultRequest, Response response) {
    }
}
