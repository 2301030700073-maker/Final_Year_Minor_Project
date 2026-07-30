package defpackage;

import android.os.Build;
import android.util.Log;
import com.google.android.gms.wearable.WearableStatusCodes;
import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public class S0 extends Ow {

    /* renamed from: do, reason: not valid java name */
    public final Cfor f3258do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2897hw<Socket> f3259do;

    /* renamed from: for, reason: not valid java name */
    public final C2897hw<Socket> f3260for;

    /* renamed from: if, reason: not valid java name */
    public final C2897hw<Socket> f3261if;

    /* renamed from: new, reason: not valid java name */
    public final C2897hw<Socket> f3262new;

    /* renamed from: S0$do, reason: invalid class name */
    public static final class Cdo extends AbstractC3134j6 {

        /* renamed from: do, reason: not valid java name */
        public final Object f3263do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Method f3264do;

        public Cdo(Object obj, Method method) {
            this.f3263do = obj;
            this.f3264do = method;
        }

        public final boolean equals(Object obj) {
            return obj instanceof Cdo;
        }

        public final int hashCode() {
            return 0;
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: if, reason: not valid java name */
        public final List mo2081if(String str, List list) {
            try {
                return (List) this.f3264do.invoke(this.f3263do, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }
    }

    /* renamed from: S0$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final Method f3265do;

        /* renamed from: for, reason: not valid java name */
        public final Method f3266for;

        /* renamed from: if, reason: not valid java name */
        public final Method f3267if;

        public Cfor(Method method, Method method2, Method method3) {
            this.f3265do = method;
            this.f3267if = method2;
            this.f3266for = method3;
        }
    }

    /* renamed from: S0$if, reason: invalid class name */
    public static final class Cif implements GI {

        /* renamed from: do, reason: not valid java name */
        public final Method f3268do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final X509TrustManager f3269do;

        public Cif(X509TrustManager x509TrustManager, Method method) {
            this.f3268do = method;
            this.f3269do = x509TrustManager;
        }

        @Override // defpackage.GI
        /* renamed from: do */
        public final X509Certificate mo723do(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f3268do.invoke(this.f3269do, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
            } catch (IllegalAccessException e) {
                throw SJ.m2134do("unable to get issues and signature", e);
            } catch (InvocationTargetException unused) {
            }
            return null;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cif)) {
                return false;
            }
            Cif cif = (Cif) obj;
            return this.f3269do.equals(cif.f3269do) && this.f3268do.equals(cif.f3268do);
        }

        public final int hashCode() {
            return (this.f3268do.hashCode() * 31) + this.f3269do.hashCode();
        }
    }

    public S0(C2897hw c2897hw, C2897hw c2897hw2, C2897hw c2897hw3, C2897hw c2897hw4) {
        Method method;
        Method method2;
        Method method3;
        try {
            Class<?> cls = Class.forName("dalvik.system.CloseGuard");
            method = cls.getMethod("get", new Class[0]);
            method3 = cls.getMethod("open", String.class);
            method2 = cls.getMethod("warnIfOpen", new Class[0]);
        } catch (Exception unused) {
            method = null;
            method2 = null;
            method3 = null;
        }
        this.f3258do = new Cfor(method, method3, method2);
        this.f3259do = c2897hw;
        this.f3261if = c2897hw2;
        this.f3260for = c2897hw3;
        this.f3262new = c2897hw4;
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m2080final(String str, Class cls, Object obj) {
        try {
            try {
                return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
            } catch (NoSuchMethodException unused) {
                return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
            }
        } catch (NoSuchMethodException unused2) {
            return true;
        }
    }

    @Override // defpackage.Ow
    /* renamed from: break */
    public final Object mo1705break() {
        Cfor cfor = this.f3258do;
        Method method = cfor.f3265do;
        if (method == null) {
            return null;
        }
        try {
            Object invoke = method.invoke(null, new Object[0]);
            cfor.f3267if.invoke(invoke, "response.body().close()");
            return invoke;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // defpackage.Ow
    /* renamed from: case */
    public void mo902case(SSLSocket sSLSocket, String str, List<EnumC3538py> list) {
        if (str != null) {
            this.f3259do.m6845for(new Object[]{Boolean.TRUE}, sSLSocket);
            this.f3261if.m6845for(new Object[]{str}, sSLSocket);
        }
        C2897hw<Socket> c2897hw = this.f3262new;
        if (c2897hw != null) {
            if (c2897hw.m6844do(sSLSocket.getClass()) != null) {
                Object[] objArr = new Object[1];
                U5 u5 = new U5();
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    EnumC3538py enumC3538py = list.get(i);
                    if (enumC3538py != EnumC3538py.HTTP_1_0) {
                        u5.m2338return(enumC3538py.f15023break.length());
                        String str2 = enumC3538py.f15023break;
                        u5.m2340strictfp(0, str2.length(), str2);
                    }
                }
                try {
                    objArr[0] = u5.m2332goto(u5.f3826do);
                    try {
                        c2897hw.m6846if(objArr, sSLSocket);
                    } catch (InvocationTargetException e) {
                        Throwable targetException = e.getTargetException();
                        if (targetException instanceof RuntimeException) {
                            throw ((RuntimeException) targetException);
                        }
                        AssertionError assertionError = new AssertionError("Unexpected exception");
                        assertionError.initCause(targetException);
                        throw assertionError;
                    }
                } catch (EOFException e2) {
                    throw new AssertionError(e2);
                }
            }
        }
    }

    @Override // defpackage.Ow
    /* renamed from: catch */
    public final boolean mo1706catch(String str) {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return m2080final(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return true;
        } catch (IllegalAccessException e) {
            e = e;
            throw SJ.m2134do("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e2) {
            e = e2;
            throw SJ.m2134do("unable to determine cleartext support", e);
        } catch (InvocationTargetException e3) {
            e = e3;
            throw SJ.m2134do("unable to determine cleartext support", e);
        }
    }

    @Override // defpackage.Ow
    /* renamed from: class */
    public final void mo1707class(int i, String str, Throwable th) {
        int min;
        int i2 = i != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            int indexOf = str.indexOf(10, i3);
            if (indexOf == -1) {
                indexOf = length;
            }
            while (true) {
                min = Math.min(indexOf, i3 + WearableStatusCodes.TARGET_NODE_NOT_CONNECTED);
                Log.println(i2, "OkHttp", str.substring(i3, min));
                if (min >= indexOf) {
                    break;
                } else {
                    i3 = min;
                }
            }
            i3 = min + 1;
        }
    }

    @Override // defpackage.Ow
    /* renamed from: const */
    public final void mo1708const(Object obj, String str) {
        Cfor cfor = this.f3258do;
        cfor.getClass();
        boolean z = false;
        if (obj != null) {
            try {
                cfor.f3266for.invoke(obj, new Object[0]);
                z = true;
            } catch (Exception unused) {
            }
        }
        if (z) {
            return;
        }
        mo1707class(5, str, null);
    }

    @Override // defpackage.Ow
    /* renamed from: else */
    public final void mo1710else(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (!SJ.m2148throw(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (ClassCastException e2) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e2;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e2);
            throw iOException;
        } catch (SecurityException e3) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e3);
            throw iOException2;
        }
    }

    @Override // defpackage.Ow
    /* renamed from: for */
    public final AbstractC3134j6 mo1711for(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new Cdo(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.mo1711for(x509TrustManager);
        }
    }

    @Override // defpackage.Ow
    /* renamed from: goto */
    public final SSLContext mo1712goto() {
        boolean z = true;
        try {
            if (Build.VERSION.SDK_INT >= 22) {
                z = false;
            }
        } catch (NoClassDefFoundError unused) {
        }
        if (z) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No TLS provider", e);
        }
    }

    @Override // defpackage.Ow
    /* renamed from: new */
    public final GI mo1713new(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new Cif(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return new C2848h5(x509TrustManager.getAcceptedIssuers());
        }
    }

    @Override // defpackage.Ow
    /* renamed from: this */
    public String mo903this(SSLSocket sSLSocket) {
        C2897hw<Socket> c2897hw = this.f3260for;
        if (c2897hw == null) {
            return null;
        }
        if (!(c2897hw.m6844do(sSLSocket.getClass()) != null)) {
            return null;
        }
        try {
            byte[] bArr = (byte[]) c2897hw.m6846if(new Object[0], sSLSocket);
            if (bArr != null) {
                return new String(bArr, SJ.f3491do);
            }
            return null;
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }
}
