package defpackage;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import org.conscrypt.Conscrypt;

/* renamed from: qa, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3573qa extends Ow {
    /* renamed from: final, reason: not valid java name */
    public static C3573qa m7888final() {
        try {
            Class.forName("org.conscrypt.Conscrypt");
            if (Conscrypt.isAvailable()) {
                return new C3573qa();
            }
            return null;
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static Provider m7889super() {
        return Conscrypt.newProviderBuilder().provideTrustManager().build();
    }

    @Override // defpackage.Ow
    /* renamed from: case */
    public final void mo902case(SSLSocket sSLSocket, String str, List<EnumC3538py> list) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            if (str != null) {
                Conscrypt.setUseSessionTickets(sSLSocket, true);
                Conscrypt.setHostname(sSLSocket, str);
            }
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) Ow.m1704if(list).toArray(new String[0]));
        }
    }

    @Override // defpackage.Ow
    /* renamed from: goto */
    public final SSLContext mo1712goto() {
        try {
            return SSLContext.getInstance("TLSv1.3", m7889super());
        } catch (NoSuchAlgorithmException e) {
            try {
                return SSLContext.getInstance("TLS", m7889super());
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalStateException("No TLS provider", e);
            }
        }
    }

    @Override // defpackage.Ow
    /* renamed from: this */
    public final String mo903this(SSLSocket sSLSocket) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }

    @Override // defpackage.Ow
    /* renamed from: try */
    public final void mo1714try(SSLSocketFactory sSLSocketFactory) {
        if (Conscrypt.isConscrypt(sSLSocketFactory)) {
            Conscrypt.setUseEngineSocket(sSLSocketFactory, true);
        }
    }
}
