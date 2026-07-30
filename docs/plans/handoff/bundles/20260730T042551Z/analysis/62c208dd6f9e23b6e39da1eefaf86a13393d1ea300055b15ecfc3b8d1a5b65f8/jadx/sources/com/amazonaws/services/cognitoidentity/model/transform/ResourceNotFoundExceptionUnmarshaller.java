package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.ResourceNotFoundException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* loaded from: classes.dex */
public class ResourceNotFoundExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public ResourceNotFoundExceptionUnmarshaller() {
        super(ResourceNotFoundException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: for */
    public final AmazonServiceException mo5142do(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        ResourceNotFoundException resourceNotFoundException = (ResourceNotFoundException) super.mo5142do(jsonErrorResponse);
        resourceNotFoundException.f8656catch = "ResourceNotFoundException";
        return resourceNotFoundException;
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    /* renamed from: if */
    public final boolean mo5144if(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.f8768if.equals("ResourceNotFoundException");
    }
}
