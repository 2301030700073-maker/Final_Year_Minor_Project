package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.DefaultRequest;
import com.amazonaws.services.securitytoken.model.AssumeRoleWithWebIdentityRequest;
import com.amazonaws.util.StringUtils;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class AssumeRoleWithWebIdentityRequestMarshaller {
    /* renamed from: do, reason: not valid java name */
    public static DefaultRequest m5153do(AssumeRoleWithWebIdentityRequest assumeRoleWithWebIdentityRequest) {
        DefaultRequest defaultRequest = new DefaultRequest(assumeRoleWithWebIdentityRequest, "AWSSecurityTokenService");
        defaultRequest.m4979if("Action", "AssumeRoleWithWebIdentity");
        defaultRequest.m4979if("Version", "2011-06-15");
        String str = assumeRoleWithWebIdentityRequest.f9009break;
        if (str != null) {
            Charset charset = StringUtils.f9077do;
            defaultRequest.m4979if("RoleArn", str);
        }
        String str2 = assumeRoleWithWebIdentityRequest.f9010catch;
        if (str2 != null) {
            Charset charset2 = StringUtils.f9077do;
            defaultRequest.m4979if("RoleSessionName", str2);
        }
        String str3 = assumeRoleWithWebIdentityRequest.f9011class;
        if (str3 != null) {
            Charset charset3 = StringUtils.f9077do;
            defaultRequest.m4979if("WebIdentityToken", str3);
        }
        Integer num = assumeRoleWithWebIdentityRequest.f9012do;
        if (num != null) {
            Charset charset4 = StringUtils.f9077do;
            defaultRequest.m4979if("DurationSeconds", Integer.toString(num.intValue()));
        }
        return defaultRequest;
    }
}
