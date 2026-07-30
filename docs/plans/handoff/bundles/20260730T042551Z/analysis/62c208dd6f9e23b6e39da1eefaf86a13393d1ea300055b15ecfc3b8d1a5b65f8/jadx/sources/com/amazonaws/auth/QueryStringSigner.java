package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.Cif;
import j$.util.DesugarTimeZone;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class QueryStringSigner extends AbstractAWSSigner {
    @Override // com.amazonaws.auth.Signer
    /* renamed from: if */
    public final void mo4986if(DefaultRequest defaultRequest, AWSCredentials aWSCredentials) {
        String sb;
        Object obj = SignatureVersion.V2;
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials m5004const = AbstractAWSSigner.m5004const(aWSCredentials);
        defaultRequest.m4979if("AWSAccessKeyId", m5004const.mo4996if());
        defaultRequest.m4979if("SignatureVersion", "2");
        int m5002catch = AbstractAWSSigner.m5002catch(defaultRequest);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        defaultRequest.m4979if("Timestamp", simpleDateFormat.format(AbstractAWSSigner.m5000break(m5002catch)));
        if (m5004const instanceof AWSSessionCredentials) {
            defaultRequest.m4979if("SecurityToken", ((AWSSessionCredentials) m5004const).mo4999for());
        }
        boolean equals = obj.equals(SignatureVersion.V1);
        LinkedHashMap linkedHashMap = defaultRequest.f8687do;
        if (equals) {
            StringBuilder sb2 = new StringBuilder();
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            treeMap.putAll(linkedHashMap);
            for (Map.Entry entry : treeMap.entrySet()) {
                sb2.append((String) entry.getKey());
                sb2.append((String) entry.getValue());
            }
            sb = sb2.toString();
        } else {
            if (!obj.equals(obj)) {
                throw new AmazonClientException("Invalid Signature Version specified");
            }
            defaultRequest.m4979if("SignatureMethod", "HmacSHA256");
            URI uri = defaultRequest.f8685do;
            StringBuilder sb3 = new StringBuilder("POST\n");
            String m5191do = StringUtils.m5191do(uri.getHost());
            if (HttpUtils.m5189new(uri)) {
                StringBuilder m6916goto = Cif.m6916goto(m5191do, CertificateUtil.DELIMITER);
                m6916goto.append(uri.getPort());
                m5191do = m6916goto.toString();
            }
            sb3.append(m5191do);
            sb3.append("\n");
            String path = defaultRequest.f8685do.getPath();
            String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (path != null) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + defaultRequest.f8685do.getPath();
            }
            if (defaultRequest.f8684do != null) {
                if (str.length() > 0 && !str.endsWith("/") && !defaultRequest.f8684do.startsWith("/")) {
                    str = str.concat("/");
                }
                str = str + defaultRequest.f8684do;
            } else if (!str.endsWith("/")) {
                str = str.concat("/");
            }
            if (!str.startsWith("/")) {
                str = "/".concat(str);
            }
            if (str.startsWith("//")) {
                str = str.substring(1);
            }
            sb3.append(str);
            sb3.append("\n");
            sb3.append(AbstractAWSSigner.m5001case(linkedHashMap));
            sb = sb3.toString();
        }
        defaultRequest.m4979if("Signature", AbstractAWSSigner.m5011throw(m5004const.mo4995do(), sb.getBytes(StringUtils.f9077do)));
    }
}
