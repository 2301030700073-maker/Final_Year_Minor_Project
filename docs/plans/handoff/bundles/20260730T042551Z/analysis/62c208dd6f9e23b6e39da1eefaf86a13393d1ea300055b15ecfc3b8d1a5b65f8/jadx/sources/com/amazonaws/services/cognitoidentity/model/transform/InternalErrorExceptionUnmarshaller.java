package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.InternalErrorException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* loaded from: classes.dex */
public class InternalErrorExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InternalErrorExceptionUnmarshaller() {
        super(InternalErrorException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: for */
    public final AmazonServiceException mo5142do(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        InternalErrorException internalErrorException = (InternalErrorException) super.mo5142do(jsonErrorResponse);
        internalErrorException.f8656catch = "InternalErrorException";
        return internalErrorException;
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    /* renamed from: if */
    public final boolean mo5144if(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.f8768if.equals("InternalErrorException");
    }
}
