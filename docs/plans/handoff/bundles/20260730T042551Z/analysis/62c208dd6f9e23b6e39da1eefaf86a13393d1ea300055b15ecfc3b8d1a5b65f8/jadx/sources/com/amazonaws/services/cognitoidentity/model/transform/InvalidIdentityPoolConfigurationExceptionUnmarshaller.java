package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.InvalidIdentityPoolConfigurationException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* loaded from: classes.dex */
public class InvalidIdentityPoolConfigurationExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidIdentityPoolConfigurationExceptionUnmarshaller() {
        super(InvalidIdentityPoolConfigurationException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: for */
    public final AmazonServiceException mo5142do(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        InvalidIdentityPoolConfigurationException invalidIdentityPoolConfigurationException = (InvalidIdentityPoolConfigurationException) super.mo5142do(jsonErrorResponse);
        invalidIdentityPoolConfigurationException.f8656catch = "InvalidIdentityPoolConfigurationException";
        return invalidIdentityPoolConfigurationException;
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    /* renamed from: if */
    public final boolean mo5144if(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.f8768if.equals("InvalidIdentityPoolConfigurationException");
    }
}
