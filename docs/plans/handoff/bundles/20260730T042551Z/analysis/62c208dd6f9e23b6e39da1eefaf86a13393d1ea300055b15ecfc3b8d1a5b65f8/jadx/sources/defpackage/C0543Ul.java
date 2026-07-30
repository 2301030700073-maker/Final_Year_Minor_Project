package defpackage;

import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* renamed from: Ul, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0543Ul {

    /* renamed from: do, reason: not valid java name */
    public final D7 f3968do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<Certificate> f3969do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EnumC4088zH f3970do;

    /* renamed from: if, reason: not valid java name */
    public final List<Certificate> f3971if;

    public C0543Ul(EnumC4088zH enumC4088zH, D7 d7, List<Certificate> list, List<Certificate> list2) {
        this.f3970do = enumC4088zH;
        this.f3968do = d7;
        this.f3969do = list;
        this.f3971if = list2;
    }

    /* renamed from: do, reason: not valid java name */
    public static C0543Ul m2465do(SSLSession sSLSession) {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        if ("SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        D7 m349do = D7.m349do(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        if ("NONE".equals(protocol)) {
            throw new IOException("tlsVersion == NONE");
        }
        EnumC4088zH m8790do = EnumC4088zH.m8790do(protocol);
        try {
            certificateArr = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            certificateArr = null;
        }
        List m2136final = certificateArr != null ? SJ.m2136final(certificateArr) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new C0543Ul(m8790do, m349do, m2136final, localCertificates != null ? SJ.m2136final(localCertificates) : Collections.emptyList());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0543Ul)) {
            return false;
        }
        C0543Ul c0543Ul = (C0543Ul) obj;
        return this.f3970do.equals(c0543Ul.f3970do) && this.f3968do.equals(c0543Ul.f3968do) && this.f3969do.equals(c0543Ul.f3969do) && this.f3971if.equals(c0543Ul.f3971if);
    }

    public final int hashCode() {
        return this.f3971if.hashCode() + ((this.f3969do.hashCode() + ((this.f3968do.hashCode() + ((this.f3970do.hashCode() + 527) * 31)) * 31)) * 31);
    }
}
