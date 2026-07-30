package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.GetIdRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.StringWriter;
import java.util.Map;

/* loaded from: classes.dex */
public class GetIdRequestMarshaller {
    /* renamed from: do, reason: not valid java name */
    public static DefaultRequest m5146do(GetIdRequest getIdRequest) {
        DefaultRequest defaultRequest = new DefaultRequest(getIdRequest, "AmazonCognitoIdentity");
        defaultRequest.m4975do("X-Amz-Target", "AWSCognitoIdentityService.GetId");
        defaultRequest.f8681do = HttpMethodName.POST;
        defaultRequest.f8684do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter m5217if = JsonUtils.m5217if(stringWriter);
            m5217if.mo5213new();
            if (getIdRequest.f8990break != null) {
                m5217if.mo5211for("AccountId");
                m5217if.mo5214try(getIdRequest.f8990break);
            }
            if (getIdRequest.f8991catch != null) {
                m5217if.mo5211for("IdentityPoolId");
                m5217if.mo5214try(getIdRequest.f8991catch);
            }
            if (getIdRequest.m5140do() != null) {
                m5217if.mo5211for("Logins");
                m5217if.mo5213new();
                for (Map.Entry<String, String> entry : getIdRequest.m5140do().entrySet()) {
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
