package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.Credentials;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* loaded from: classes.dex */
public class CredentialsJsonUnmarshaller implements Unmarshaller<Credentials, JsonUnmarshallerContext> {

    /* renamed from: do, reason: not valid java name */
    public static CredentialsJsonUnmarshaller f8994do;

    /* renamed from: if, reason: not valid java name */
    public static Credentials m5141if(JsonUnmarshallerContext jsonUnmarshallerContext) {
        Credentials credentials = new Credentials();
        AwsJsonReader awsJsonReader = jsonUnmarshallerContext.f9028do;
        awsJsonReader.mo5207try();
        while (awsJsonReader.hasNext()) {
            String mo5203do = awsJsonReader.mo5203do();
            boolean equals = mo5203do.equals("AccessKeyId");
            AwsJsonReader awsJsonReader2 = jsonUnmarshallerContext.f9028do;
            if (equals) {
                SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.m5157if().getClass();
                credentials.f8982break = awsJsonReader2.mo5204for();
            } else if (mo5203do.equals("SecretKey")) {
                SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.m5157if().getClass();
                credentials.f8983catch = awsJsonReader2.mo5204for();
            } else if (mo5203do.equals("SessionToken")) {
                SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.m5157if().getClass();
                credentials.f8984class = awsJsonReader2.mo5204for();
            } else if (mo5203do.equals("Expiration")) {
                if (SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller.f9029do == null) {
                    SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller.f9029do = new SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller();
                }
                SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller.f9029do.getClass();
                credentials.f8985do = SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller.m5156if(jsonUnmarshallerContext);
            } else {
                awsJsonReader.mo5206new();
            }
        }
        awsJsonReader.mo5205if();
        return credentials;
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: do, reason: not valid java name */
    public final /* bridge */ /* synthetic */ Credentials mo5142do(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return m5141if(jsonUnmarshallerContext);
    }
}
