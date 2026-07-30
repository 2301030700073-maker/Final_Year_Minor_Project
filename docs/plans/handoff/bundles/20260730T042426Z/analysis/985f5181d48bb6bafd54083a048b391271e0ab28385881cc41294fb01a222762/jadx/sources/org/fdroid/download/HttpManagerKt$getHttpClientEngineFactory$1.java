package org.fdroid.download;

import android.util.Log;
import io.ktor.client.engine.HttpClientEngine;
import io.ktor.client.engine.HttpClientEngineFactory;
import io.ktor.client.engine.okhttp.OkHttp;
import io.ktor.client.engine.okhttp.OkHttpConfig;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSessionContext;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ConnectionSpec;
import okhttp3.Dns;
import okhttp3.OkHttpClient;
import okhttp3.internal.tls.OkHostnameVerifier;

/* compiled from: HttpManager.kt */
@Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J#\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0003H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"org/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1", "Lio/ktor/client/engine/HttpClientEngineFactory;", "Lio/ktor/client/engine/okhttp/OkHttpConfig;", "Lkotlin/Function1;", "", "block", "Lio/ktor/client/engine/HttpClientEngine;", "create", "(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/engine/HttpClientEngine;", "", "Lokhttp3/ConnectionSpec;", "connectionSpecs", "Ljava/util/List;", "download_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class HttpManagerKt$getHttpClientEngineFactory$1 implements HttpClientEngineFactory {
    final /* synthetic */ Dns $customDns;
    private final List<ConnectionSpec> connectionSpecs = CollectionsKt.listOf((Object[]) new ConnectionSpec[]{ConnectionSpec.RESTRICTED_TLS, ConnectionSpec.MODERN_TLS, ConnectionSpec.CLEARTEXT});

    HttpManagerKt$getHttpClientEngineFactory$1(Dns dns) {
        this.$customDns = dns;
    }

    @Override // io.ktor.client.engine.HttpClientEngineFactory
    public HttpClientEngine create(final Function1 block) {
        Intrinsics.checkNotNullParameter(block, "block");
        OkHttp okHttp = OkHttp.INSTANCE;
        final Dns dns = this.$customDns;
        return okHttp.create(new Function1() { // from class: org.fdroid.download.HttpManagerKt$getHttpClientEngineFactory$1$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit create$lambda$2;
                create$lambda$2 = HttpManagerKt$getHttpClientEngineFactory$1.create$lambda$2(Function1.this, dns, this, (OkHttpConfig) obj);
                return create$lambda$2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit create$lambda$2(Function1 function1, final Dns dns, final HttpManagerKt$getHttpClientEngineFactory$1 httpManagerKt$getHttpClientEngineFactory$1, final OkHttpConfig create) {
        Intrinsics.checkNotNullParameter(create, "$this$create");
        function1.invoke(create);
        create.config(new Function1() { // from class: org.fdroid.download.HttpManagerKt$getHttpClientEngineFactory$1$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit create$lambda$2$lambda$1;
                create$lambda$2$lambda$1 = HttpManagerKt$getHttpClientEngineFactory$1.create$lambda$2$lambda$1(OkHttpConfig.this, dns, httpManagerKt$getHttpClientEngineFactory$1, (OkHttpClient.Builder) obj);
                return create$lambda$2$lambda$1;
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit create$lambda$2$lambda$1(OkHttpConfig okHttpConfig, Dns dns, HttpManagerKt$getHttpClientEngineFactory$1 httpManagerKt$getHttpClientEngineFactory$1, OkHttpClient.Builder config) {
        Intrinsics.checkNotNullParameter(config, "$this$config");
        if (ProxyKt.isTor(okHttpConfig.getProxy())) {
            config.dns(new NoDns());
        } else if (dns != null) {
            config.dns(dns);
        }
        config.hostnameVerifier(new HostnameVerifier() { // from class: org.fdroid.download.HttpManagerKt$getHttpClientEngineFactory$1$$ExternalSyntheticLambda2
            @Override // javax.net.ssl.HostnameVerifier
            public final boolean verify(String str, SSLSession sSLSession) {
                boolean create$lambda$2$lambda$1$lambda$0;
                create$lambda$2$lambda$1$lambda$0 = HttpManagerKt$getHttpClientEngineFactory$1.create$lambda$2$lambda$1$lambda$0(str, sSLSession);
                return create$lambda$2$lambda$1$lambda$0;
            }
        });
        config.connectionSpecs(httpManagerKt$getHttpClientEngineFactory$1.connectionSpecs);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean create$lambda$2$lambda$1$lambda$0(String str, SSLSession sSLSession) {
        if (sSLSession != null) {
            try {
                SSLSessionContext sessionContext = sSLSession.getSessionContext();
                if (sessionContext != null) {
                    sessionContext.setSessionTimeout(10);
                }
            } catch (NullPointerException e) {
                Log.e("HttpManager", "Error setting session timeout: ", e);
            }
        }
        OkHostnameVerifier okHostnameVerifier = OkHostnameVerifier.INSTANCE;
        Intrinsics.checkNotNull(str);
        Intrinsics.checkNotNull(sSLSession);
        return okHostnameVerifier.verify(str, sSLSession);
    }
}
