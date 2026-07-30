package defpackage;

import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public class Ow {

    /* renamed from: do, reason: not valid java name */
    public static final Ow f2691do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Logger f2692do;

    /* JADX WARN: Removed duplicated region for block: B:7:0x0037  */
    static {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Ow.<clinit>():void");
    }

    /* renamed from: if, reason: not valid java name */
    public static ArrayList m1704if(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC3538py enumC3538py = (EnumC3538py) list.get(i);
            if (enumC3538py != EnumC3538py.HTTP_1_0) {
                arrayList.add(enumC3538py.f15023break);
            }
        }
        return arrayList;
    }

    /* renamed from: break, reason: not valid java name */
    public Object mo1705break() {
        if (f2692do.isLoggable(Level.FINE)) {
            return new Throwable("response.body().close()");
        }
        return null;
    }

    /* renamed from: case */
    public void mo902case(SSLSocket sSLSocket, String str, List<EnumC3538py> list) {
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean mo1706catch(String str) {
        return true;
    }

    /* renamed from: class, reason: not valid java name */
    public void mo1707class(int i, String str, Throwable th) {
        f2692do.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    /* renamed from: const, reason: not valid java name */
    public void mo1708const(Object obj, String str) {
        if (obj == null) {
            str = Cpublic.m7816case(str, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        mo1707class(5, str, (Throwable) obj);
    }

    /* renamed from: do, reason: not valid java name */
    public void mo1709do(SSLSocket sSLSocket) {
    }

    /* renamed from: else, reason: not valid java name */
    public void mo1710else(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        socket.connect(inetSocketAddress, i);
    }

    /* renamed from: for, reason: not valid java name */
    public AbstractC3134j6 mo1711for(X509TrustManager x509TrustManager) {
        return new C2730f5(mo1713new(x509TrustManager));
    }

    /* renamed from: goto, reason: not valid java name */
    public SSLContext mo1712goto() {
        if ("1.7".equals(System.getProperty("java.specification.version"))) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No TLS provider", e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public GI mo1713new(X509TrustManager x509TrustManager) {
        return new C2848h5(x509TrustManager.getAcceptedIssuers());
    }

    /* renamed from: this */
    public String mo903this(SSLSocket sSLSocket) {
        return null;
    }

    public final String toString() {
        return getClass().getSimpleName();
    }

    /* renamed from: try, reason: not valid java name */
    public void mo1714try(SSLSocketFactory sSLSocketFactory) {
    }
}
