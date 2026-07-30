package com.amazonaws.auth;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.DefaultRequest;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.JsonResponseHandler;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient;
import com.amazonaws.services.cognitoidentity.model.GetIdRequest;
import com.amazonaws.services.cognitoidentity.model.GetIdResult;
import com.amazonaws.services.cognitoidentity.model.transform.GetIdRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetIdResultJsonUnmarshaller;
import com.amazonaws.util.AWSRequestMetrics;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class AWSAbstractCognitoIdentityProvider implements AWSIdentityProvider {

    /* renamed from: do, reason: not valid java name */
    public final AmazonCognitoIdentity f8705do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f8706do;

    /* renamed from: if, reason: not valid java name */
    public final String f8710if = null;

    /* renamed from: for, reason: not valid java name */
    public final String f8709for = "us-east-1:188ef2ec-79b7-4afb-9eea-5ed0d9158107";

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f8708do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f8707do = new ArrayList();

    public AWSAbstractCognitoIdentityProvider(AmazonCognitoIdentityClient amazonCognitoIdentityClient) {
        this.f8705do = amazonCognitoIdentityClient;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4993for(String str) {
        String str2 = this.f8706do;
        if (str2 == null || !str2.equals(str)) {
            this.f8706do = str;
            Iterator it = this.f8707do.iterator();
            while (it.hasNext()) {
                ((IdentityChangedListener) it.next()).mo5018do(this.f8706do);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final String m4994if() {
        if (this.f8706do == null) {
            GetIdRequest getIdRequest = new GetIdRequest();
            getIdRequest.f8990break = this.f8710if;
            getIdRequest.f8991catch = this.f8709for;
            getIdRequest.f8992do = this.f8708do;
            ((AmazonWebServiceRequest) getIdRequest).f8667do.m4983do(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            AmazonCognitoIdentityClient amazonCognitoIdentityClient = (AmazonCognitoIdentityClient) this.f8705do;
            ExecutionContext m4960for = amazonCognitoIdentityClient.m4960for(getIdRequest);
            AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ClientExecuteTime;
            AWSRequestMetrics aWSRequestMetrics = m4960for.f8747do;
            aWSRequestMetrics.mo5166case(field);
            AWSRequestMetrics.Field field2 = AWSRequestMetrics.Field.RequestMarshallTime;
            DefaultRequest defaultRequest = null;
            try {
                aWSRequestMetrics.mo5166case(field2);
                try {
                    new GetIdRequestMarshaller();
                    defaultRequest = GetIdRequestMarshaller.m5146do(getIdRequest);
                    defaultRequest.m4971break(aWSRequestMetrics);
                    aWSRequestMetrics.mo5169if(field2);
                    GetIdResult getIdResult = (GetIdResult) amazonCognitoIdentityClient.m5137break(defaultRequest, new JsonResponseHandler(new GetIdResultJsonUnmarshaller()), m4960for).f8696do;
                    amazonCognitoIdentityClient.m4963new(aWSRequestMetrics, defaultRequest, true);
                    String str = getIdResult.f8993break;
                    if (str != null) {
                        m4993for(str);
                    }
                } catch (Throwable th) {
                    aWSRequestMetrics.mo5169if(field2);
                    throw th;
                }
            } catch (Throwable th2) {
                amazonCognitoIdentityClient.m4963new(aWSRequestMetrics, defaultRequest, true);
                throw th2;
            }
        }
        return this.f8706do;
    }
}
