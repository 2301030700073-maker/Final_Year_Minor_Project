package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.util.Base64;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public abstract class AbstractAWSSigner implements Signer {
    /* renamed from: break, reason: not valid java name */
    public static Date m5000break(int i) {
        Date date = new Date();
        return i != 0 ? new Date(date.getTime() - (i * 1000)) : date;
    }

    /* renamed from: case, reason: not valid java name */
    public static String m5001case(LinkedHashMap linkedHashMap) {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            treeMap.put(HttpUtils.m5190try((String) entry.getKey(), false), HttpUtils.m5190try((String) entry.getValue(), false));
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = treeMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb.append((String) entry2.getKey());
            sb.append("=");
            sb.append((String) entry2.getValue());
            if (it.hasNext()) {
                sb.append("&");
            }
        }
        return sb.toString();
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m5002catch(DefaultRequest defaultRequest) {
        int i = defaultRequest.f8679do;
        AtomicInteger atomicInteger = SDKGlobalConfiguration.f8698do;
        return atomicInteger.get() != 0 ? atomicInteger.get() : i;
    }

    /* renamed from: class, reason: not valid java name */
    public static byte[] m5003class(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes(StringUtils.f9077do));
            return messageDigest.digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static AWSCredentials m5004const(AWSCredentials aWSCredentials) {
        String mo4996if;
        String mo4995do;
        String mo4999for;
        synchronized (aWSCredentials) {
            mo4996if = aWSCredentials.mo4996if();
            mo4995do = aWSCredentials.mo4995do();
            mo4999for = aWSCredentials instanceof AWSSessionCredentials ? ((AWSSessionCredentials) aWSCredentials).mo4999for() : null;
        }
        if (mo4995do != null) {
            mo4995do = mo4995do.trim();
        }
        if (mo4996if != null) {
            mo4996if = mo4996if.trim();
        }
        if (mo4999for != null) {
            mo4999for = mo4999for.trim();
        }
        return aWSCredentials instanceof AWSSessionCredentials ? new BasicSessionCredentials(mo4996if, mo4995do, mo4999for) : new BasicAWSCredentials(mo4996if, mo4995do);
    }

    /* renamed from: else, reason: not valid java name */
    public static String m5005else(String str) {
        return m5007goto(str, true);
    }

    /* renamed from: final, reason: not valid java name */
    public static byte[] m5006final(String str, byte[] bArr) {
        try {
            return m5009super(str.getBytes(StringUtils.f9077do), bArr);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m5007goto(String str, boolean z) {
        if (str == null || str.length() == 0) {
            return "/";
        }
        if (z) {
            str = HttpUtils.m5190try(str, true);
        }
        return str.startsWith("/") ? str : "/".concat(str);
    }

    /* renamed from: new, reason: not valid java name */
    public static InputStream m5008new(DefaultRequest defaultRequest) {
        try {
            InputStream inputStream = defaultRequest.f8683do;
            if (inputStream == null) {
                return new ByteArrayInputStream(new byte[0]);
            }
            if (inputStream instanceof StringInputStream) {
                return inputStream;
            }
            if (inputStream.markSupported()) {
                return defaultRequest.f8683do;
            }
            throw new AmazonClientException("Unable to read request payload to sign request.");
        } catch (Exception e) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e.getMessage(), e);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static byte[] m5009super(byte[] bArr, byte[] bArr2) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(bArr2, "HmacSHA256"));
            return mac.doFinal(bArr);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static String m5010this(DefaultRequest defaultRequest) {
        InputStream m5008new = m5008new(defaultRequest);
        try {
            m5008new.mark(-1);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[5120];
            while (true) {
                int read = m5008new.read(bArr);
                if (read == -1) {
                    byteArrayOutputStream.close();
                    m5008new.reset();
                    return new String(byteArrayOutputStream.toByteArray(), StringUtils.f9077do);
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e.getMessage(), e);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m5011throw(String str, byte[] bArr) {
        try {
            return Base64.m5174do(m5009super(bArr, str.getBytes(StringUtils.f9077do)));
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static String m5012try(DefaultRequest defaultRequest) {
        return HttpUtils.m5185case(defaultRequest) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : m5001case(defaultRequest.f8687do);
    }
}
