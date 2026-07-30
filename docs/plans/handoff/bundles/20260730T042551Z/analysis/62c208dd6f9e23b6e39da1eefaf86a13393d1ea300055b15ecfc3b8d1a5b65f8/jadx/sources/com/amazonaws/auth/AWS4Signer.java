package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.internal.SdkDigestInputStream;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import com.facebook.internal.security.CertificateUtil;
import defpackage.C4122zt;
import defpackage.Cif;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class AWS4Signer extends AbstractAWSSigner implements ServiceAwareSigner, RegionAwareSigner {

    /* renamed from: do, reason: not valid java name */
    public static final Log f8700do = LogFactory.getLog(AWS4Signer.class);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f8701do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f8702do = true;

    /* renamed from: if, reason: not valid java name */
    public String f8703if;

    public static class HeaderSigningResult {

        /* renamed from: do, reason: not valid java name */
        public final byte[] f8704do;

        public HeaderSigningResult(byte[] bArr) {
            this.f8704do = bArr;
        }

        /* renamed from: do, reason: not valid java name */
        public final byte[] m4992do() {
            byte[] bArr = this.f8704do;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static String m4987import(DefaultRequest defaultRequest) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(defaultRequest.f8686do.keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (m4988native(str)) {
                if (sb.length() > 0) {
                    sb.append(";");
                }
                sb.append(StringUtils.m5191do(str));
            }
        }
        return sb.toString();
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m4988native(String str) {
        return str.equalsIgnoreCase("date") || str.equalsIgnoreCase("Content-MD5") || str.equalsIgnoreCase("host") || str.startsWith("x-amz") || str.startsWith("X-Amz");
    }

    @Override // com.amazonaws.auth.ServiceAwareSigner
    /* renamed from: do, reason: not valid java name */
    public final void mo4989do(String str) {
        this.f8701do = str;
    }

    @Override // com.amazonaws.auth.RegionAwareSigner
    /* renamed from: for, reason: not valid java name */
    public final void mo4990for(String str) {
        this.f8703if = str;
    }

    @Override // com.amazonaws.auth.Signer
    /* renamed from: if */
    public final void mo4986if(DefaultRequest defaultRequest, AWSCredentials aWSCredentials) {
        InputStream m5008new;
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials m5004const = AbstractAWSSigner.m5004const(aWSCredentials);
        if (m5004const instanceof AWSSessionCredentials) {
            defaultRequest.m4975do("x-amz-security-token", ((AWSSessionCredentials) m5004const).mo4999for());
        }
        String host = defaultRequest.f8685do.getHost();
        if (HttpUtils.m5189new(defaultRequest.f8685do)) {
            StringBuilder m6916goto = Cif.m6916goto(host, CertificateUtil.DELIMITER);
            m6916goto.append(defaultRequest.f8685do.getPort());
            host = m6916goto.toString();
        }
        defaultRequest.m4975do("Host", host);
        long time = AbstractAWSSigner.m5000break(AbstractAWSSigner.m5002catch(defaultRequest)).getTime();
        String m5179do = DateUtils.m5179do("yyyyMMdd", new Date(time));
        URI uri = defaultRequest.f8685do;
        String str = this.f8703if;
        if (str == null) {
            str = AwsHostNameUtils.m5173do(uri.getHost(), this.f8701do);
        }
        String str2 = m5179do + "/" + str + "/" + m4991while(defaultRequest.f8685do) + "/aws4_request";
        if (HttpUtils.m5185case(defaultRequest)) {
            String m5187for = HttpUtils.m5187for(defaultRequest);
            m5008new = m5187for == null ? new ByteArrayInputStream(new byte[0]) : new ByteArrayInputStream(m5187for.getBytes(StringUtils.f9077do));
        } else {
            m5008new = AbstractAWSSigner.m5008new(defaultRequest);
        }
        m5008new.mark(-1);
        try {
            SdkDigestInputStream sdkDigestInputStream = new SdkDigestInputStream(m5008new, MessageDigest.getInstance("SHA-256"));
            while (sdkDigestInputStream.read(new byte[1024]) > -1) {
            }
            String m5176do = BinaryUtils.m5176do(sdkDigestInputStream.getMessageDigest().digest());
            try {
                m5008new.reset();
                String m5179do2 = DateUtils.m5179do("yyyyMMdd'T'HHmmss'Z'", new Date(time));
                defaultRequest.m4975do("X-Amz-Date", m5179do2);
                HashMap hashMap = defaultRequest.f8686do;
                if (hashMap.get("x-amz-content-sha256") != null && ((String) defaultRequest.m4980new().get("x-amz-content-sha256")).equals("required")) {
                    defaultRequest.m4975do("x-amz-content-sha256", m5176do);
                }
                String str3 = m5004const.mo4996if() + "/" + str2;
                URI uri2 = defaultRequest.f8685do;
                String str4 = this.f8703if;
                if (str4 == null) {
                    str4 = AwsHostNameUtils.m5173do(uri2.getHost(), this.f8701do);
                }
                String m4991while = m4991while(defaultRequest.f8685do);
                String str5 = m5179do + "/" + str4 + "/" + m4991while + "/aws4_request";
                String m5186do = HttpUtils.m5186do(defaultRequest.m4977for().getPath(), defaultRequest.m4978goto());
                StringBuilder sb = new StringBuilder();
                sb.append(defaultRequest.m4982try().toString());
                sb.append("\n");
                sb.append(AbstractAWSSigner.m5007goto(m5186do, this.f8702do));
                sb.append("\n");
                sb.append(AbstractAWSSigner.m5012try(defaultRequest));
                sb.append("\n");
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(hashMap.keySet());
                Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
                StringBuilder sb2 = new StringBuilder();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str6 = (String) it.next();
                    if (m4988native(str6)) {
                        Iterator it2 = it;
                        String str7 = str3;
                        String replaceAll = StringUtils.m5191do(str6).replaceAll("\\s+", " ");
                        String str8 = (String) hashMap.get(str6);
                        sb2.append(replaceAll);
                        sb2.append(CertificateUtil.DELIMITER);
                        if (str8 != null) {
                            sb2.append(str8.replaceAll("\\s+", " "));
                        }
                        sb2.append("\n");
                        it = it2;
                        str3 = str7;
                    }
                }
                sb.append(sb2.toString());
                sb.append("\n");
                sb.append(m4987import(defaultRequest));
                sb.append("\n");
                sb.append(m5176do);
                String sb3 = sb.toString();
                String m6908case = Cif.m6908case("AWS4 Canonical Request: '\"", sb3, "\"");
                Log log = f8700do;
                log.debug(m6908case);
                String str9 = "AWS4-HMAC-SHA256\n" + m5179do2 + "\n" + str5 + "\n" + BinaryUtils.m5176do(AbstractAWSSigner.m5003class(sb3));
                log.debug("AWS4 String to Sign: '\"" + str9 + "\"");
                String str10 = "AWS4" + m5004const.mo4995do();
                Charset charset = StringUtils.f9077do;
                HeaderSigningResult headerSigningResult = new HeaderSigningResult(AbstractAWSSigner.m5009super(str9.getBytes(charset), AbstractAWSSigner.m5006final("aws4_request", AbstractAWSSigner.m5006final(m4991while, AbstractAWSSigner.m5006final(str4, AbstractAWSSigner.m5006final(m5179do, str10.getBytes(charset)))))));
                String m8824for = C4122zt.m8824for("Credential=", str3);
                String str11 = "SignedHeaders=" + m4987import(defaultRequest);
                String str12 = "Signature=" + BinaryUtils.m5176do(headerSigningResult.m4992do());
                StringBuilder m6919this = Cif.m6919this("AWS4-HMAC-SHA256 ", m8824for, ", ", str11, ", ");
                m6919this.append(str12);
                defaultRequest.m4975do("Authorization", m6919this.toString());
            } catch (IOException e) {
                throw new AmazonClientException("Unable to reset stream after calculating AWS4 signature", e);
            }
        } catch (Exception e2) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e2.getMessage(), e2);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public final String m4991while(URI uri) {
        String str = this.f8701do;
        if (str != null) {
            return str;
        }
        Pattern pattern = AwsHostNameUtils.f9068do;
        String host = uri.getHost();
        if (!host.endsWith(".amazonaws.com")) {
            throw new IllegalArgumentException(Cif.m6908case("Cannot parse a service name from an unrecognized endpoint (", host, ")."));
        }
        String substring = host.substring(0, host.indexOf(".amazonaws.com"));
        return (substring.endsWith(".s3") || AwsHostNameUtils.f9068do.matcher(substring).matches()) ? "s3" : substring.indexOf(46) == -1 ? substring : substring.substring(0, substring.indexOf(46));
    }
}
