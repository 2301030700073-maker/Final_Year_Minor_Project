package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetIdResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* loaded from: classes.dex */
public class GetIdResultJsonUnmarshaller implements Unmarshaller<GetIdResult, JsonUnmarshallerContext> {
    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: do */
    public final GetIdResult mo5142do(JsonUnmarshallerContext jsonUnmarshallerContext) {
        JsonUnmarshallerContext jsonUnmarshallerContext2 = jsonUnmarshallerContext;
        GetIdResult getIdResult = new GetIdResult();
        AwsJsonReader awsJsonReader = jsonUnmarshallerContext2.f9028do;
        awsJsonReader.mo5207try();
        while (awsJsonReader.hasNext()) {
            if (awsJsonReader.mo5203do().equals("IdentityId")) {
                SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.m5157if().getClass();
                getIdResult.f8993break = jsonUnmarshallerContext2.f9028do.mo5204for();
            } else {
                awsJsonReader.mo5206new();
            }
        }
        awsJsonReader.mo5205if();
        return getIdResult;
    }
}
