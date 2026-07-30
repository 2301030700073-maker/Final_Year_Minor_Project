package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.ExternalServiceException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* loaded from: classes.dex */
public class ExternalServiceExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public ExternalServiceExceptionUnmarshaller() {
        super(ExternalServiceException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: for, reason: not valid java name */
    public final AmazonServiceException mo5142do(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        ExternalServiceException externalServiceException = (ExternalServiceException) super.mo5142do(jsonErrorResponse);
        externalServiceException.f8656catch = "ExternalServiceException";
        return externalServiceException;
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    /* renamed from: if, reason: not valid java name */
    public final boolean mo5144if(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.f8768if.equals("ExternalServiceException");
    }
}
