package org.wikipedia.dataclient.okhttp;

import android.os.Build;
import coil3.network.NetworkHeaders;
import java.io.File;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
import kotlin.text.StringsKt;
import okhttp3.Cache;
import okhttp3.CacheControl;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.internal.platform.Platform;
import okhttp3.logging.HttpLoggingInterceptor;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class OkHttpConnectionFactory {
    public static final CacheControl CACHE_CONTROL_FORCE_NETWORK;
    public static final CacheControl CACHE_CONTROL_MAX_STALE;
    public static final CacheControl CACHE_CONTROL_NONE;
    public static final Cache NET_CACHE;
    public static final OkHttpClient client;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static {
        HttpLoggingInterceptor.Level level;
        TimeUnit.SECONDS.getClass();
        CACHE_CONTROL_FORCE_NETWORK = new CacheControl(false, false, 0, -1, false, false, false, -1, -1, false, false, false, null);
        CACHE_CONTROL_MAX_STALE = new CacheControl(false, false, -1, -1, false, false, false, Integer.MAX_VALUE, -1, false, false, false, null);
        CACHE_CONTROL_NONE = new CacheControl(false, false, -1, -1, false, false, false, -1, -1, false, false, false, null);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        NET_CACHE = new Cache(new File(Jsoup.getInstance().getCacheDir(), "okhttp-cache"));
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        if (NetworkHeaders.Builder.INSTANCE == null) {
            try {
                Prefs prefs = Prefs.INSTANCE;
                NetworkHeaders.Builder.INSTANCE = new NetworkHeaders.Builder(new LinkedHashMap(Prefs.getCookies()));
            } catch (Exception e) {
                L.logRemoteErrorIfProd(e);
            }
        }
        NetworkHeaders.Builder builder2 = NetworkHeaders.Builder.INSTANCE;
        if (builder2 == null) {
            builder2 = new NetworkHeaders.Builder(new LinkedHashMap());
            NetworkHeaders.Builder.INSTANCE = builder2;
        }
        builder.cookieJar = builder2;
        builder.cache = NET_CACHE;
        builder.readTimeout();
        builder.interceptors.add(new TestStubInterceptor(6));
        builder.networkInterceptors.add(new TestStubInterceptor(1));
        builder.interceptors.add(new TestStubInterceptor(2));
        builder.interceptors.add(new TestStubInterceptor(3));
        builder.interceptors.add(new TestStubInterceptor(4));
        builder.interceptors.add(new TestStubInterceptor(0));
        builder.interceptors.add(new TestStubInterceptor(5));
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        Prefs prefs2 = Prefs.INSTANCE;
        String string = PrefsIoUtil.getString(R.string.preference_key_retrofit_log_level, null);
        if (string != null) {
            switch (string.hashCode()) {
                case 2044322:
                    if (string.equals("BODY")) {
                        level = HttpLoggingInterceptor.Level.BODY;
                        break;
                    }
                    level = HttpLoggingInterceptor.Level.NONE;
                    break;
                case 2402104:
                    if (string.equals("NONE")) {
                        level = HttpLoggingInterceptor.Level.NONE;
                        break;
                    }
                    level = HttpLoggingInterceptor.Level.NONE;
                    break;
                case 62970894:
                    if (string.equals("BASIC")) {
                        level = HttpLoggingInterceptor.Level.BASIC;
                        break;
                    }
                    level = HttpLoggingInterceptor.Level.NONE;
                    break;
                case 1513290598:
                    if (string.equals("HEADERS")) {
                        level = HttpLoggingInterceptor.Level.HEADERS;
                        break;
                    }
                    level = HttpLoggingInterceptor.Level.NONE;
                    break;
                default:
                    level = HttpLoggingInterceptor.Level.NONE;
                    break;
            }
        } else {
            level = (StringsKt.contains("org.wikipedia", "beta", false) || StringsKt.contains("org.wikipedia", "alpha", false) || !StringsKt.contains("org.wikipedia", "dev", false)) ? HttpLoggingInterceptor.Level.NONE : HttpLoggingInterceptor.Level.BASIC;
        }
        level.getClass();
        httpLoggingInterceptor.level = level;
        builder.interceptors.add(httpLoggingInterceptor);
        if (Build.VERSION.SDK_INT < 24) {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            DefaultSocket defaultSocket = new DefaultSocket(5);
            Platform platform = Platform.platform;
            Platform.platform.getClass();
            X509TrustManager platformTrustManager = Platform.platformTrustManager();
            ArrayList arrayList = (ArrayList) defaultSocket.source;
            X509Certificate[] acceptedIssuers = platformTrustManager.getAcceptedIssuers();
            Collections.addAll(arrayList, Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
            WikipediaApp wikipediaApp2 = WikipediaApp.instance;
            Certificate generateCertificate = certificateFactory.generateCertificate(Jsoup.getInstance().getResources().openRawResource(R.raw.isrg_root_x1));
            generateCertificate.getClass();
            ((ArrayList) defaultSocket.source).add((X509Certificate) generateCertificate);
            Certificate generateCertificate2 = certificateFactory.generateCertificate(Jsoup.getInstance().getResources().openRawResource(R.raw.isrg_root_x2));
            generateCertificate2.getClass();
            ((ArrayList) defaultSocket.source).add((X509Certificate) generateCertificate2);
            FormBody.Builder build = defaultSocket.build();
            SSLContext newSSLContext = Platform.platform.newSSLContext();
            newSSLContext.init(new KeyManager[]{(X509KeyManager) build.names}, new TrustManager[]{(X509TrustManager) build.values}, new SecureRandom());
            SSLSocketFactory socketFactory = newSSLContext.getSocketFactory();
            socketFactory.getClass();
            X509TrustManager x509TrustManager = (X509TrustManager) build.values;
            if (!socketFactory.equals(builder.sslSocketFactoryOrNull) || !x509TrustManager.equals(builder.x509TrustManagerOrNull)) {
                builder.routeDatabase = null;
            }
            builder.sslSocketFactoryOrNull = socketFactory;
            builder.certificateChainCleaner = Platform.platform.buildCertificateChainCleaner(x509TrustManager);
            builder.x509TrustManagerOrNull = x509TrustManager;
        }
        client = new OkHttpClient(builder);
    }
}
