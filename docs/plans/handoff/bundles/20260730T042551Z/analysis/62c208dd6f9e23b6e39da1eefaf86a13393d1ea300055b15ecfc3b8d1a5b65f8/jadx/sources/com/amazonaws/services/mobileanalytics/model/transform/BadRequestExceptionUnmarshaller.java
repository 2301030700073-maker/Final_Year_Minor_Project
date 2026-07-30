package com.amazonaws.services.mobileanalytics.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.mobileanalytics.model.BadRequestException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* loaded from: classes.dex */
public class BadRequestExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public BadRequestExceptionUnmarshaller() {
        super(BadRequestException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: for */
    public final AmazonServiceException mo5142do(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        BadRequestException badRequestException = (BadRequestException) super.mo5142do(jsonErrorResponse);
        badRequestException.f8656catch = "BadRequestException";
        return badRequestException;
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    /* renamed from: if */
    public final boolean mo5144if(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.f8768if.equals("BadRequestException");
    }
}
