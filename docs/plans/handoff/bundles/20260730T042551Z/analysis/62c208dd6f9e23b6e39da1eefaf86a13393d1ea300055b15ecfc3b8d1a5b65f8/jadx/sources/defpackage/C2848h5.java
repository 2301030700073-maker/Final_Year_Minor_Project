package defpackage;

import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.security.auth.x500.X500Principal;

/* renamed from: h5, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2848h5 implements GI {

    /* renamed from: do, reason: not valid java name */
    public final LinkedHashMap f13253do = new LinkedHashMap();

    public C2848h5(X509Certificate... x509CertificateArr) {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Set set = (Set) this.f13253do.get(subjectX500Principal);
            if (set == null) {
                set = new LinkedHashSet(1);
                this.f13253do.put(subjectX500Principal, set);
            }
            set.add(x509Certificate);
        }
    }

    @Override // defpackage.GI
    /* renamed from: do */
    public final X509Certificate mo723do(X509Certificate x509Certificate) {
        Set<X509Certificate> set = (Set) this.f13253do.get(x509Certificate.getIssuerX500Principal());
        if (set == null) {
            return null;
        }
        for (X509Certificate x509Certificate2 : set) {
            try {
                x509Certificate.verify(x509Certificate2.getPublicKey());
                return x509Certificate2;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C2848h5) && ((C2848h5) obj).f13253do.equals(this.f13253do);
    }

    public final int hashCode() {
        return this.f13253do.hashCode();
    }
}
