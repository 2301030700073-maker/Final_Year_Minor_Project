package com.amazonaws.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;

/* loaded from: classes.dex */
public class JsonErrorUnmarshaller extends AbstractErrorUnmarshaller<JsonErrorResponseHandler.JsonErrorResponse> {
    public JsonErrorUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: for, reason: merged with bridge method [inline-methods] */
    public AmazonServiceException mo5142do(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        String str = jsonErrorResponse.f8767do;
        String str2 = jsonErrorResponse.f8768if;
        if ((str == null || str.isEmpty()) && (str2 == null || str2.isEmpty())) {
            throw new AmazonClientException("Neither error message nor error code is found in the error response payload.");
        }
        AmazonServiceException newInstance = this.f9027do.getConstructor(String.class).newInstance(str);
        newInstance.f8656catch = str2;
        return newInstance;
    }

    /* renamed from: if */
    public boolean mo5144if(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return true;
    }

    public JsonErrorUnmarshaller(Class<? extends AmazonServiceException> cls) {
        super(cls);
    }
}
