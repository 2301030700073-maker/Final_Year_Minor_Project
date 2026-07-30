package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* loaded from: classes.dex */
public class GetCredentialsForIdentityResultJsonUnmarshaller implements Unmarshaller<GetCredentialsForIdentityResult, JsonUnmarshallerContext> {
    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: do */
    public final GetCredentialsForIdentityResult mo5142do(JsonUnmarshallerContext jsonUnmarshallerContext) {
        JsonUnmarshallerContext jsonUnmarshallerContext2 = jsonUnmarshallerContext;
        GetCredentialsForIdentityResult getCredentialsForIdentityResult = new GetCredentialsForIdentityResult();
        AwsJsonReader awsJsonReader = jsonUnmarshallerContext2.f9028do;
        awsJsonReader.mo5207try();
        while (awsJsonReader.hasNext()) {
            String mo5203do = awsJsonReader.mo5203do();
            if (mo5203do.equals("IdentityId")) {
                SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.m5157if().getClass();
                getCredentialsForIdentityResult.f8988break = jsonUnmarshallerContext2.f9028do.mo5204for();
            } else if (mo5203do.equals("Credentials")) {
                if (CredentialsJsonUnmarshaller.f8994do == null) {
                    CredentialsJsonUnmarshaller.f8994do = new CredentialsJsonUnmarshaller();
                }
                CredentialsJsonUnmarshaller.f8994do.getClass();
                getCredentialsForIdentityResult.f8989do = CredentialsJsonUnmarshaller.m5141if(jsonUnmarshallerContext2);
            } else {
                awsJsonReader.mo5206new();
            }
        }
        awsJsonReader.mo5205if();
        return getCredentialsForIdentityResult;
    }
}
