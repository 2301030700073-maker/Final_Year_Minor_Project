package defpackage;

import com.facebook.internal.security.CertificateUtil;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;

/* renamed from: j7, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3135j7 {

    /* renamed from: do, reason: not valid java name */
    public static final C3135j7 f13638do = new C3135j7(new LinkedHashSet(new ArrayList()), null);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3134j6 f13639do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<Cdo> f13640do;

    /* renamed from: j7$do, reason: invalid class name */
    public static final class Cdo {
        public final boolean equals(Object obj) {
            if (!(obj instanceof Cdo)) {
                return false;
            }
            ((Cdo) obj).getClass();
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    public C3135j7(Set<Cdo> set, AbstractC3134j6 abstractC3134j6) {
        this.f13640do = set;
        this.f13639do = abstractC3134j6;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m7038if(X509Certificate x509Certificate) {
        if (!(x509Certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        StringBuilder sb = new StringBuilder("sha256/");
        try {
            sb.append(C3488p6.m7785super(MessageDigest.getInstance("SHA-256").digest(C3488p6.m7785super(x509Certificate.getPublicKey().getEncoded()).f14882do)).mo2896do());
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    public final void m7039do(String str, List<Certificate> list) {
        List emptyList = Collections.emptyList();
        Iterator<Cdo> it = this.f13640do.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw null;
        }
        if (emptyList.isEmpty()) {
            return;
        }
        AbstractC3134j6 abstractC3134j6 = this.f13639do;
        if (abstractC3134j6 != 0) {
            list = abstractC3134j6.mo2081if(str, list);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (emptyList.size() > 0) {
                ((Cdo) emptyList.get(0)).getClass();
                throw null;
            }
        }
        StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i2);
            sb.append("\n    ");
            sb.append(m7038if(x509Certificate));
            sb.append(": ");
            sb.append(x509Certificate.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(CertificateUtil.DELIMITER);
        int size3 = emptyList.size();
        for (int i3 = 0; i3 < size3; i3++) {
            Cdo cdo = (Cdo) emptyList.get(i3);
            sb.append("\n    ");
            sb.append(cdo);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C3135j7) {
            C3135j7 c3135j7 = (C3135j7) obj;
            if (SJ.m2131catch(this.f13639do, c3135j7.f13639do) && this.f13640do.equals(c3135j7.f13640do)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        AbstractC3134j6 abstractC3134j6 = this.f13639do;
        return this.f13640do.hashCode() + ((abstractC3134j6 != null ? abstractC3134j6.hashCode() : 0) * 31);
    }
}
