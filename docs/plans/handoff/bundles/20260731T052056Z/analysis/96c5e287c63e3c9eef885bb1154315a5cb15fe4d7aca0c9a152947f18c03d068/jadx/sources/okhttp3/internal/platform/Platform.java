package okhttp3.internal.platform;

import android.os.Build;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.KeyStore;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.platform.android.AndroidLog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Platform {
    public static final Logger logger;
    public static volatile Platform platform;

    static {
        try {
            for (Map.Entry entry : AndroidLog.knownLoggers.entrySet()) {
                AndroidLog.enableLogging((String) entry.getKey(), (String) entry.getValue());
            }
        } catch (RuntimeException e) {
            System.err.println("Possibly running android unit test without robolectric");
            e.printStackTrace();
        } catch (UnsatisfiedLinkError e2) {
            System.err.println("Possibly running android unit test without robolectric");
            e2.printStackTrace();
        }
        Platform android10Platform = Android10Platform.isSupported ? new Android10Platform() : null;
        if (android10Platform == null) {
            android10Platform = AndroidPlatform.isSupported ? new AndroidPlatform() : null;
        }
        if (android10Platform == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Build.VERSION.SDK_INT, "Expected Android API level 21+ but was ");
        } else {
            platform = android10Platform;
            logger = Logger.getLogger(OkHttpClient.class.getName());
        }
    }

    public static X509TrustManager platformTrustManager() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        trustManagers.getClass();
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                return (X509TrustManager) trustManager;
            }
        }
        String arrays = Arrays.toString(trustManagers);
        arrays.getClass();
        ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) "Unexpected default trust managers: ".concat(arrays));
        return null;
    }

    public abstract Headers.Companion buildCertificateChainCleaner(X509TrustManager x509TrustManager);

    public abstract void configureTlsExtensions(SSLSocket sSLSocket, String str, List list);

    public void connectSocket(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        inetSocketAddress.getClass();
        socket.connect(inetSocketAddress, i);
    }

    public abstract String getSelectedProtocol(SSLSocket sSLSocket);

    public Object getStackTraceForCloseable() {
        if (logger.isLoggable(Level.FINE)) {
            return new Throwable("response.body().close()");
        }
        return null;
    }

    public abstract boolean isCleartextTrafficPermitted(String str);

    public abstract void log(String str, int i, Throwable th);

    public void logCloseableLeak(String str, Object obj) {
        if (obj == null) {
            str = str.concat(" To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        log(str, 5, (Throwable) obj);
    }

    public abstract SSLContext newSSLContext();

    public final String toString() {
        return getClass().getSimpleName();
    }
}
