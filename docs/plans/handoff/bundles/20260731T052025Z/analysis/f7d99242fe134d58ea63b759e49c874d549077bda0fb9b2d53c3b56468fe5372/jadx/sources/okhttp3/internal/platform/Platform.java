package okhttp3.internal.platform;

import android.os.Build;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import kotlin.uuid.UuidKt;
import okhttp3.OkHttpClient;
import okhttp3.internal.platform.android.AndroidLog;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            throw new IllegalStateException("Expected Android API level 21+ but was " + Build.VERSION.SDK_INT);
        }
        platform = android10Platform;
        logger = Logger.getLogger(OkHttpClient.class.getName());
    }

    public abstract UuidKt buildCertificateChainCleaner(X509TrustManager x509TrustManager);

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

    public abstract void log(int i, String str, Throwable th);

    public void logCloseableLeak(Object obj, String str) {
        if (obj == null) {
            str = str.concat(" To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        log(5, str, (Throwable) obj);
    }

    public abstract SSLContext newSSLContext();

    public final String toString() {
        return getClass().getSimpleName();
    }
}
