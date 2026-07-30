package com.amazonaws.auth;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.regions.Region;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient;
import com.amazonaws.services.cognitoidentity.model.Credentials;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityResult;
import com.amazonaws.services.cognitoidentity.model.ResourceNotFoundException;
import com.amazonaws.services.securitytoken.model.AssumeRoleWithWebIdentityRequest;
import java.util.Date;
import java.util.HashMap;

/* loaded from: classes.dex */
public class CognitoCredentialsProvider implements AWSCredentialsProvider {

    /* renamed from: do, reason: not valid java name */
    public final int f8721do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AWSAbstractCognitoIdentityProvider f8722do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public BasicSessionCredentials f8723do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AmazonCognitoIdentityClient f8724do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f8725do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Date f8726do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f8727do;

    /* renamed from: for, reason: not valid java name */
    public final String f8728for;

    /* renamed from: if, reason: not valid java name */
    public final int f8729if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f8730if;

    public CognitoCredentialsProvider() {
        AmazonCognitoIdentityClient amazonCognitoIdentityClient = new AmazonCognitoIdentityClient(new AnonymousAWSCredentials(), new ClientConfiguration());
        this.f8724do = amazonCognitoIdentityClient;
        this.f8730if = null;
        this.f8728for = null;
        this.f8721do = 3600;
        this.f8729if = 500;
        this.f8727do = true;
        this.f8722do = new AWSEnhancedCognitoIdentityProvider(amazonCognitoIdentityClient);
        amazonCognitoIdentityClient.m4959else(Region.m5118for());
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m5019for() {
        if (this.f8723do == null) {
            return true;
        }
        return this.f8726do.getTime() - (System.currentTimeMillis() - ((long) (SDKGlobalConfiguration.f8698do.get() * 1000))) < ((long) (this.f8729if * 1000));
    }

    /* renamed from: if */
    public String mo5016if() {
        throw null;
    }

    /* renamed from: new, reason: not valid java name */
    public final GetCredentialsForIdentityResult m5020new() {
        HashMap hashMap;
        AWSAbstractCognitoIdentityProvider aWSAbstractCognitoIdentityProvider = this.f8722do;
        aWSAbstractCognitoIdentityProvider.m4993for(null);
        String mo4998do = aWSAbstractCognitoIdentityProvider.mo4998do();
        this.f8725do = mo4998do;
        if (mo4998do == null || mo4998do.isEmpty()) {
            hashMap = aWSAbstractCognitoIdentityProvider.f8708do;
        } else {
            hashMap = new HashMap();
            hashMap.put("cognito-identity.amazonaws.com", this.f8725do);
        }
        GetCredentialsForIdentityRequest getCredentialsForIdentityRequest = new GetCredentialsForIdentityRequest();
        getCredentialsForIdentityRequest.f8986break = mo5016if();
        getCredentialsForIdentityRequest.f8987do = hashMap;
        return this.f8724do.m5138this(getCredentialsForIdentityRequest);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5021try() {
        HashMap hashMap;
        GetCredentialsForIdentityResult m5020new;
        AWSAbstractCognitoIdentityProvider aWSAbstractCognitoIdentityProvider = this.f8722do;
        try {
            this.f8725do = aWSAbstractCognitoIdentityProvider.mo4998do();
        } catch (ResourceNotFoundException unused) {
            aWSAbstractCognitoIdentityProvider.m4993for(null);
            this.f8725do = aWSAbstractCognitoIdentityProvider.mo4998do();
        } catch (AmazonServiceException e) {
            if (!e.f8656catch.equals("ValidationException")) {
                throw e;
            }
            aWSAbstractCognitoIdentityProvider.m4993for(null);
            this.f8725do = aWSAbstractCognitoIdentityProvider.mo4998do();
        }
        if (!this.f8727do) {
            String str = this.f8725do;
            HashMap hashMap2 = aWSAbstractCognitoIdentityProvider.f8708do;
            String str2 = hashMap2 != null && hashMap2.size() > 0 ? this.f8728for : this.f8730if;
            AssumeRoleWithWebIdentityRequest assumeRoleWithWebIdentityRequest = new AssumeRoleWithWebIdentityRequest();
            assumeRoleWithWebIdentityRequest.f9011class = str;
            assumeRoleWithWebIdentityRequest.f9009break = str2;
            assumeRoleWithWebIdentityRequest.f9010catch = "ProviderSession";
            assumeRoleWithWebIdentityRequest.f9012do = Integer.valueOf(this.f8721do);
            ((AmazonWebServiceRequest) assumeRoleWithWebIdentityRequest).f8667do.m4983do(CognitoCachingCredentialsProvider.f8716try);
            throw null;
        }
        String str3 = this.f8725do;
        if (str3 == null || str3.isEmpty()) {
            hashMap = aWSAbstractCognitoIdentityProvider.f8708do;
        } else {
            hashMap = new HashMap();
            hashMap.put("cognito-identity.amazonaws.com", str3);
        }
        GetCredentialsForIdentityRequest getCredentialsForIdentityRequest = new GetCredentialsForIdentityRequest();
        getCredentialsForIdentityRequest.f8986break = mo5016if();
        getCredentialsForIdentityRequest.f8987do = hashMap;
        try {
            m5020new = this.f8724do.m5138this(getCredentialsForIdentityRequest);
        } catch (ResourceNotFoundException unused2) {
            m5020new = m5020new();
        } catch (AmazonServiceException e2) {
            if (!e2.f8656catch.equals("ValidationException")) {
                throw e2;
            }
            m5020new = m5020new();
        }
        Credentials credentials = m5020new.f8989do;
        this.f8723do = new BasicSessionCredentials(credentials.f8982break, credentials.f8983catch, credentials.f8984class);
        this.f8726do = credentials.f8985do;
        if (m5020new.f8988break.equals(mo5016if())) {
            return;
        }
        aWSAbstractCognitoIdentityProvider.m4993for(m5020new.f8988break);
    }
}
