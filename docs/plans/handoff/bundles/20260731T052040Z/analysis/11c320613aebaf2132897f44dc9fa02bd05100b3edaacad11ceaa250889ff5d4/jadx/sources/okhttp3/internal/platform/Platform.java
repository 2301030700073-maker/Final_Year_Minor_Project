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
import net.newpipe.app.AppKt;
import okhttp3.OkHttpClient;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.platform.android.AndroidLog;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2(Build.VERSION.SDK_INT, "Expected Android API level 21+ but was ");
        } else {
            platform = android10Platform;
            logger = Logger.getLogger(OkHttpClient.class.getName());
        }
    }

    public abstract AppKt buildCertificateChainCleaner(X509TrustManager x509TrustManager);

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

    public abstract void log(String str, Throwable th, int i);

    public void logCloseableLeak(Object obj, String str) {
        if (obj == null) {
            str = str.concat(" To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        log(str, (Throwable) obj, 5);
    }

    public abstract SSLContext newSSLContext();

    public final String toString() {
        return getClass().getSimpleName();
    }
}
