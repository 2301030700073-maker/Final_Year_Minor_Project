package org.apache.hc.client5.http.ssl;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultHostnameVerifier implements HostnameVerifier {
    public static final Logger LOG;

    static {
        int i;
        int i2 = LoggerFactory.INITIALIZATION_STATE;
        Logger logger = LoggerFactory.getLogger(DefaultHostnameVerifier.class.getName());
        if (LoggerFactory.DETECT_LOGGER_NAME_MISMATCH) {
            Util.ClassContextSecurityManager classContextSecurityManager = Util.SECURITY_MANAGER;
            Class cls = null;
            if (classContextSecurityManager == null) {
                if (Util.SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED) {
                    classContextSecurityManager = null;
                } else {
                    try {
                        classContextSecurityManager = new Util.ClassContextSecurityManager();
                    } catch (SecurityException unused) {
                        classContextSecurityManager = null;
                    }
                    Util.SECURITY_MANAGER = classContextSecurityManager;
                    Util.SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED = true;
                }
            }
            if (classContextSecurityManager != null) {
                Class[] classContext = classContextSecurityManager.getClassContext();
                String name = Util.class.getName();
                int i3 = 0;
                while (i3 < classContext.length && !name.equals(classContext[i3].getName())) {
                    i3++;
                }
                if (i3 >= classContext.length || (i = i3 + 2) >= classContext.length) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen");
                    return;
                }
                cls = classContext[i];
            }
            if (cls != null && !cls.isAssignableFrom(DefaultHostnameVerifier.class)) {
                Util.report("Detected logger name mismatch. Given name: \"" + logger.getName() + "\"; computed name: \"" + cls.getName() + "\".");
                Util.report("See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
            }
        }
        LOG = logger;
    }

    public static String byteArrayToIPv6(byte[] bArr) {
        if (bArr.length != 16) {
            UriKt$$ExternalSyntheticBUOutline0.m("Invalid byte array length for IPv6 address");
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i += 2) {
            sb.append(String.format("%02x%02x", Byte.valueOf(bArr[i]), Byte.valueOf(bArr[i + 1])));
            if (i < bArr.length - 2) {
                sb.append(":");
            }
        }
        return sb.toString();
    }

    public static String byteArrayToIp(byte[] bArr) {
        if (bArr.length != 4) {
            UriKt$$ExternalSyntheticBUOutline0.m("Invalid byte array length for IPv4 address");
            return null;
        }
        return (bArr[0] & 255) + "." + (bArr[1] & 255) + "." + (bArr[2] & 255) + "." + (bArr[3] & 255);
    }

    public static List getSubjectAltNames(X509Certificate x509Certificate, int i) {
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                Integer num = list.size() >= 2 ? (Integer) list.get(0) : null;
                if (num != null && (num.intValue() == i || -1 == i)) {
                    Object obj = list.get(1);
                    if (obj instanceof String) {
                        arrayList.add(new SubjectName((String) obj, num.intValue()));
                    } else if (obj instanceof byte[]) {
                        byte[] bArr = (byte[]) obj;
                        if (num.intValue() == 7) {
                            if (bArr.length == 4) {
                                arrayList.add(new SubjectName(byteArrayToIp(bArr), num.intValue()));
                            } else if (bArr.length == 16) {
                                arrayList.add(new SubjectName(byteArrayToIPv6(bArr), num.intValue()));
                            }
                        }
                    }
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.EMPTY_LIST;
        }
    }

    public static boolean matchIdentity(String str, String str2) {
        int indexOf = str2.indexOf(42);
        if (indexOf == -1) {
            return str.equalsIgnoreCase(str2);
        }
        String substring = str2.substring(0, indexOf);
        String substring2 = str2.substring(indexOf + 1);
        if ((substring.isEmpty() || str.startsWith(substring)) && (substring2.isEmpty() || str.endsWith(substring2))) {
            return !str.substring(substring.length(), str.length() - substring2.length()).contains(".");
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:162:0x02e5, code lost:
    
        if (r5 == null) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02ef, code lost:
    
        if (r3.name.equalsIgnoreCase("cn") == false) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x02f1, code lost:
    
        r2 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x0058, code lost:
    
        if (org.apache.hc.core5.net.InetAddressUtils.IPV6_STD_PATTERN.matcher(r2).matches() != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x00b2, code lost:
    
        r2 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x006b, code lost:
    
        if (org.apache.hc.core5.net.InetAddressUtils.IPV6_HEX_COMPRESSED_PATTERN.matcher(r2).matches() != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x00b0, code lost:
    
        if (org.apache.hc.core5.net.InetAddressUtils.SCOPE_ID_PATTERN.matcher(r2).matches() != false) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0390  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void verify(java.lang.String r19, java.security.cert.X509Certificate r20) {
        /*
            Method dump skipped, instructions count: 983
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.hc.client5.http.ssl.DefaultHostnameVerifier.verify(java.lang.String, java.security.cert.X509Certificate):void");
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException e) {
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug(e.getMessage(), e);
            }
            return false;
        }
    }
}
