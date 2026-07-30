package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.security.CertificateUtil;
import defpackage.Cif;
import defpackage.Creturn;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class HttpRequestFactory {
    /* renamed from: do, reason: not valid java name */
    public static HttpRequest m5046do(DefaultRequest defaultRequest) {
        String str;
        boolean z = true;
        String m5188if = HttpUtils.m5188if(defaultRequest.f8685do.toString(), defaultRequest.f8684do, true);
        String m5187for = HttpUtils.m5187for(defaultRequest);
        HttpMethodName httpMethodName = defaultRequest.f8681do;
        boolean z2 = defaultRequest.f8683do != null;
        HttpMethodName httpMethodName2 = HttpMethodName.POST;
        if ((httpMethodName == httpMethodName2) && !z2) {
            z = false;
        }
        if (m5187for != null && z) {
            m5188if = Creturn.m7982new(m5188if, "?", m5187for);
        }
        HashMap hashMap = new HashMap();
        URI uri = defaultRequest.f8685do;
        String host = uri.getHost();
        if (HttpUtils.m5189new(uri)) {
            StringBuilder m6916goto = Cif.m6916goto(host, CertificateUtil.DELIMITER);
            m6916goto.append(uri.getPort());
            host = m6916goto.toString();
        }
        hashMap.put("Host", host);
        for (Map.Entry entry : defaultRequest.f8686do.entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue());
        }
        if (hashMap.get("Content-Type") == null || ((String) hashMap.get("Content-Type")).isEmpty()) {
            hashMap.put("Content-Type", "application/x-www-form-urlencoded; charset=" + StringUtils.m5191do("UTF-8"));
        }
        InputStream inputStream = defaultRequest.f8683do;
        if (httpMethodName == HttpMethodName.PATCH) {
            hashMap.put("X-HTTP-Method-Override", "PATCH");
            httpMethodName = httpMethodName2;
        }
        if (httpMethodName == httpMethodName2 && defaultRequest.f8683do == null && m5187for != null) {
            byte[] bytes = m5187for.getBytes(StringUtils.f9077do);
            inputStream = new ByteArrayInputStream(bytes);
            hashMap.put("Content-Length", String.valueOf(bytes.length));
        }
        if ((httpMethodName == httpMethodName2 || httpMethodName == HttpMethodName.PUT) && ((str = (String) hashMap.get("Content-Length")) == null || str.isEmpty())) {
            if (inputStream != null) {
                throw new AmazonClientException("Unknown content-length");
            }
            hashMap.put("Content-Length", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        if (hashMap.get("Accept-Encoding") == null) {
            hashMap.put("Accept-Encoding", "gzip");
        }
        return new HttpRequest(httpMethodName.toString(), URI.create(m5188if), hashMap, inputStream);
    }
}
