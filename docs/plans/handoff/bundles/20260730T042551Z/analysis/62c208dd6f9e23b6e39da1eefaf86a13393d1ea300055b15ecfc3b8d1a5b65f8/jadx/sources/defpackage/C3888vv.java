package defpackage;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* renamed from: vv, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3888vv implements HostnameVerifier {

    /* renamed from: do, reason: not valid java name */
    public static final C3888vv f16154do = new C3888vv();

    /* renamed from: do, reason: not valid java name */
    public static ArrayList m8488do(X509Certificate x509Certificate) {
        List<String> m8490if = m8490if(x509Certificate, 7);
        List<String> m8490if2 = m8490if(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(m8490if2.size() + m8490if.size());
        arrayList.addAll(m8490if);
        arrayList.addAll(m8490if2);
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00e9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[LOOP:1: B:14:0x003a->B:43:?, LOOP_END, SYNTHETIC] */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m8489for(java.lang.String r8, java.security.cert.X509Certificate r9) {
        /*
            java.util.regex.Pattern r0 = defpackage.SJ.f3493do
            java.util.regex.Matcher r0 = r0.matcher(r8)
            boolean r0 = r0.matches()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L2b
            r0 = 7
            java.util.List r9 = m8490if(r9, r0)
            int r0 = r9.size()
            r3 = 0
        L18:
            if (r3 >= r0) goto Lea
            java.lang.Object r4 = r9.get(r3)
            java.lang.String r4 = (java.lang.String) r4
            boolean r4 = r8.equalsIgnoreCase(r4)
            if (r4 == 0) goto L28
            goto Le9
        L28:
            int r3 = r3 + 1
            goto L18
        L2b:
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r8 = r8.toLowerCase(r0)
            r0 = 2
            java.util.List r9 = m8490if(r9, r0)
            java.util.Iterator r9 = r9.iterator()
        L3a:
            boolean r0 = r9.hasNext()
            if (r0 == 0) goto Lea
            java.lang.Object r0 = r9.next()
            java.lang.String r0 = (java.lang.String) r0
            if (r8 == 0) goto Le6
            int r3 = r8.length()
            if (r3 == 0) goto Le6
            java.lang.String r3 = "."
            boolean r4 = r8.startsWith(r3)
            if (r4 != 0) goto Le6
            java.lang.String r4 = ".."
            boolean r5 = r8.endsWith(r4)
            if (r5 == 0) goto L60
            goto Le6
        L60:
            if (r0 == 0) goto Le6
            int r5 = r0.length()
            if (r5 == 0) goto Le6
            boolean r5 = r0.startsWith(r3)
            if (r5 != 0) goto Le6
            boolean r4 = r0.endsWith(r4)
            if (r4 == 0) goto L76
            goto Le6
        L76:
            boolean r4 = r8.endsWith(r3)
            if (r4 != 0) goto L81
            java.lang.String r4 = r8.concat(r3)
            goto L82
        L81:
            r4 = r8
        L82:
            boolean r5 = r0.endsWith(r3)
            if (r5 != 0) goto L8c
            java.lang.String r0 = r0.concat(r3)
        L8c:
            java.util.Locale r3 = java.util.Locale.US
            java.lang.String r0 = r0.toLowerCase(r3)
            java.lang.String r3 = "*"
            boolean r3 = r0.contains(r3)
            if (r3 != 0) goto L9f
            boolean r0 = r4.equals(r0)
            goto Le7
        L9f:
            java.lang.String r3 = "*."
            boolean r5 = r0.startsWith(r3)
            if (r5 == 0) goto Le6
            r5 = 42
            int r5 = r0.indexOf(r5, r2)
            r6 = -1
            if (r5 == r6) goto Lb1
            goto Le6
        Lb1:
            int r5 = r4.length()
            int r7 = r0.length()
            if (r5 >= r7) goto Lbc
            goto Le6
        Lbc:
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto Lc3
            goto Le6
        Lc3:
            java.lang.String r0 = r0.substring(r2)
            boolean r3 = r4.endsWith(r0)
            if (r3 != 0) goto Lce
            goto Le6
        Lce:
            int r3 = r4.length()
            int r0 = r0.length()
            int r3 = r3 - r0
            if (r3 <= 0) goto Le4
            int r3 = r3 + (-1)
            r0 = 46
            int r0 = r4.lastIndexOf(r0, r3)
            if (r0 == r6) goto Le4
            goto Le6
        Le4:
            r0 = 1
            goto Le7
        Le6:
            r0 = 0
        Le7:
            if (r0 == 0) goto L3a
        Le9:
            r1 = 1
        Lea:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3888vv.m8489for(java.lang.String, java.security.cert.X509Certificate):boolean");
    }

    /* renamed from: if, reason: not valid java name */
    public static List<String> m8490if(X509Certificate x509Certificate, int i) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            return m8489for(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}
