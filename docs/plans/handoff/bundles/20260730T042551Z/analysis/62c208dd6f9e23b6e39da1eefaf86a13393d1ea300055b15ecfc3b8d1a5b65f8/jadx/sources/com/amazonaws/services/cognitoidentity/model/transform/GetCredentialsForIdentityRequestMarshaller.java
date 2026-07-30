package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.StringWriter;
import java.util.Map;

/* loaded from: classes.dex */
public class GetCredentialsForIdentityRequestMarshaller {
    /* renamed from: do, reason: not valid java name */
    public static DefaultRequest m5145do(GetCredentialsForIdentityRequest getCredentialsForIdentityRequest) {
        DefaultRequest defaultRequest = new DefaultRequest(getCredentialsForIdentityRequest, "AmazonCognitoIdentity");
        defaultRequest.m4975do("X-Amz-Target", "AWSCognitoIdentityService.GetCredentialsForIdentity");
        defaultRequest.f8681do = HttpMethodName.POST;
        defaultRequest.f8684do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter m5217if = JsonUtils.m5217if(stringWriter);
            m5217if.mo5213new();
            if (getCredentialsForIdentityRequest.f8986break != null) {
                m5217if.mo5211for("IdentityId");
                m5217if.mo5214try(getCredentialsForIdentityRequest.f8986break);
            }
            if (getCredentialsForIdentityRequest.m5139do() != null) {
                m5217if.mo5211for("Logins");
                m5217if.mo5213new();
                for (Map.Entry<String, String> entry : getCredentialsForIdentityRequest.m5139do().entrySet()) {
                    if (entry.getValue() != null) {
                        m5217if.mo5211for(entry.getKey());
                        m5217if.mo5214try(entry.getValue());
                    }
                }
                m5217if.mo5208case();
            }
            m5217if.mo5208case();
            m5217if.close();
            String stringWriter2 = stringWriter.toString();
            byte[] bytes = stringWriter2.getBytes(StringUtils.f9077do);
            defaultRequest.f8683do = new StringInputStream(stringWriter2);
            defaultRequest.m4975do("Content-Length", Integer.toString(bytes.length));
            defaultRequest.m4975do("Content-Type", "application/x-amz-json-1.0");
            return defaultRequest;
        } catch (Throwable th) {
            throw new AmazonClientException("Unable to marshall request to JSON: " + th.getMessage(), th);
        }
    }
}
