package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.InvalidParameterException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* loaded from: classes.dex */
public class InvalidParameterExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidParameterExceptionUnmarshaller() {
        super(InvalidParameterException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: for */
    public final AmazonServiceException mo5142do(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        InvalidParameterException invalidParameterException = (InvalidParameterException) super.mo5142do(jsonErrorResponse);
        invalidParameterException.f8656catch = "InvalidParameterException";
        return invalidParameterException;
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    /* renamed from: if */
    public final boolean mo5144if(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.f8768if.equals("InvalidParameterException");
    }
}
