package org.fdroid.download;

import ch.qos.logback.core.joran.action.Action;
import io.ktor.client.HttpClient;
import io.ktor.client.HttpClientConfig;
import io.ktor.client.HttpClientKt;
import io.ktor.client.engine.HttpClientEngineConfig;
import io.ktor.client.engine.HttpClientEngineFactory;
import io.ktor.client.plugins.HttpTimeout;
import io.ktor.client.plugins.HttpTimeoutKt;
import io.ktor.client.plugins.ResponseException;
import io.ktor.client.plugins.UserAgent;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.request.HttpRequestKt;
import io.ktor.client.request.UtilsKt;
import io.ktor.client.statement.HttpStatement;
import io.ktor.http.HttpHeaders;
import io.ktor.http.HttpMessageBuilder;
import io.ktor.http.HttpMethod;
import io.ktor.http.URLUtilsKt;
import io.ktor.http.Url;
import io.ktor.http.content.NullBody;
import io.ktor.util.reflect.TypeInfoJvmKt;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;
import kotlin.reflect.TypesJVMKt;
import kotlin.text.StringsKt;
import mu.KLogger;
import mu.KotlinLogging;
import okhttp3.Dns;
import okhttp3.HttpUrl;
import org.bouncycastle.asn1.BERTags;

/* compiled from: HttpManager.kt */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 B2\u00020\u0001:\u0001BBi\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\f\b\u0002\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u001d\u001a\u00020\u00152\u0010\b\u0002\u0010\u0005\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0002J$\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003H\u0086@¢\u0006\u0002\u0010#J*\u0010$\u001a\u00020%2\u0006\u0010 \u001a\u00020!2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'2\u0006\u0010(\u001a\u00020)H\u0087@¢\u0006\u0002\u0010*J.\u0010+\u001a\u00020,2\u0006\u0010 \u001a\u00020!2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u0010&\u001a\u00020'H\u0082@¢\u0006\u0002\u00101J$\u00102\u001a\u0002032\u0006\u0010 \u001a\u00020!2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'H\u0080@¢\u0006\u0004\b4\u00105J$\u00106\u001a\u0002072\u0006\u0010 \u001a\u00020!2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'H\u0080@¢\u0006\u0004\b8\u00105J0\u00109\u001a\u00020%2\u0006\u0010/\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u00032\u0010\b\u0002\u0010;\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0086@¢\u0006\u0002\u0010<J$\u0010=\u001a\u00020%2\u000e\u0010\u0005\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.H\u0002J\u0014\u0010>\u001a\u00020%*\u00020?2\u0006\u0010 \u001a\u00020!H\u0002J\f\u0010@\u001a\u00020%*\u00020AH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R.\u0010\u0017\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\u000e\u0010\u0016\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\"\u0010\u001a\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u001c\u0018\u00010\u001bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006C"}, d2 = {"Lorg/fdroid/download/HttpManager;", "", "userAgent", "", "queryString", "proxyConfig", "Ljava/net/Proxy;", "Lio/ktor/client/engine/ProxyConfig;", "customDns", "Lokhttp3/Dns;", "mirrorParameterManager", "Lorg/fdroid/download/MirrorParameterManager;", "highTimeouts", "", "mirrorChooser", "Lorg/fdroid/download/MirrorChooser;", "httpClientEngineFactory", "Lio/ktor/client/engine/HttpClientEngineFactory;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;Lorg/fdroid/download/MirrorParameterManager;ZLorg/fdroid/download/MirrorChooser;Lio/ktor/client/engine/HttpClientEngineFactory;)V", "httpClient", "Lio/ktor/client/HttpClient;", Action.VALUE_ATTRIBUTE, "currentProxy", "getCurrentProxy$download_release", "()Ljava/net/Proxy;", "parameters", "", "Lkotlin/Pair;", "getNewHttpClient", "head", "Lorg/fdroid/download/HeadInfo;", "request", "Lorg/fdroid/download/DownloadRequest;", "eTag", "(Lorg/fdroid/download/DownloadRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "get", "", "skipFirstBytes", "", "receiver", "Lorg/fdroid/download/BytesReceiver;", "(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getHttpStatement", "Lio/ktor/client/statement/HttpStatement;", "mirror", "Lorg/fdroid/download/Mirror;", "url", "Lio/ktor/http/Url;", "(Lorg/fdroid/download/DownloadRequest;Lorg/fdroid/download/Mirror;Lio/ktor/http/Url;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getChannel", "Lio/ktor/utils/io/ByteReadChannel;", "getChannel$download_release", "(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getBytes", "", "getBytes$download_release", "post", "json", "proxy", "(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resetProxyIfNeeded", "basicAuth", "Lio/ktor/http/HttpMessageBuilder;", "addQueryParameters", "Lio/ktor/client/request/HttpRequestBuilder;", "Companion", "download_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public class HttpManager {
    public static final int READ_BUFFER = 8192;
    private static final long TIMEOUT_MILLIS_HIGH = 300000;
    private Proxy currentProxy;
    private final boolean highTimeouts;
    private HttpClient httpClient;
    private final HttpClientEngineFactory httpClientEngineFactory;
    private final MirrorChooser mirrorChooser;
    private final MirrorParameterManager mirrorParameterManager;
    private final List<Pair> parameters;
    private final String userAgent;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KLogger log = KotlinLogging.INSTANCE.logger(new Function0() { // from class: org.fdroid.download.HttpManager$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Unit unit;
            unit = Unit.INSTANCE;
            return unit;
        }
    });

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HttpManager(String userAgent) {
        this(userAgent, null, null, null, null, false, null, null, 254, null);
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HttpManager(String userAgent, String str) {
        this(userAgent, str, null, null, null, false, null, null, 252, null);
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HttpManager(String userAgent, String str, Proxy proxy) {
        this(userAgent, str, proxy, null, null, false, null, null, 248, null);
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HttpManager(String userAgent, String str, Proxy proxy, Dns dns) {
        this(userAgent, str, proxy, dns, null, false, null, null, 240, null);
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HttpManager(String userAgent, String str, Proxy proxy, Dns dns, MirrorParameterManager mirrorParameterManager) {
        this(userAgent, str, proxy, dns, mirrorParameterManager, false, null, null, BERTags.FLAGS, null);
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HttpManager(String userAgent, String str, Proxy proxy, Dns dns, MirrorParameterManager mirrorParameterManager, boolean z) {
        this(userAgent, str, proxy, dns, mirrorParameterManager, z, null, null, 192, null);
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HttpManager(String userAgent, String str, Proxy proxy, Dns dns, MirrorParameterManager mirrorParameterManager, boolean z, MirrorChooser mirrorChooser) {
        this(userAgent, str, proxy, dns, mirrorParameterManager, z, mirrorChooser, null, 128, null);
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        Intrinsics.checkNotNullParameter(mirrorChooser, "mirrorChooser");
    }

    public final Object get(DownloadRequest downloadRequest, BytesReceiver bytesReceiver, Continuation continuation) throws ResponseException, NoResumeException, CancellationException {
        return get$default(this, downloadRequest, null, bytesReceiver, continuation, 2, null);
    }

    public HttpManager(String userAgent, String str, Proxy proxy, Dns dns, MirrorParameterManager mirrorParameterManager, boolean z, MirrorChooser mirrorChooser, HttpClientEngineFactory httpClientEngineFactory) {
        ArrayList arrayList;
        List split$default;
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        Intrinsics.checkNotNullParameter(mirrorChooser, "mirrorChooser");
        Intrinsics.checkNotNullParameter(httpClientEngineFactory, "httpClientEngineFactory");
        this.userAgent = userAgent;
        this.mirrorParameterManager = mirrorParameterManager;
        this.highTimeouts = z;
        this.mirrorChooser = mirrorChooser;
        this.httpClientEngineFactory = httpClientEngineFactory;
        this.httpClient = getNewHttpClient(proxy);
        if (str == null || (split$default = StringsKt.split$default((CharSequence) str, new char[]{'&'}, false, 0, 6, (Object) null)) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(split$default, 10));
            Iterator it = split$default.iterator();
            while (it.hasNext()) {
                List split$default2 = StringsKt.split$default((CharSequence) it.next(), new char[]{'='}, false, 0, 6, (Object) null);
                arrayList.add(new Pair((String) split$default2.get(0), (String) split$default2.get(1)));
            }
        }
        this.parameters = arrayList;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ HttpManager(java.lang.String r8, java.lang.String r9, java.net.Proxy r10, okhttp3.Dns r11, org.fdroid.download.MirrorParameterManager r12, boolean r13, org.fdroid.download.MirrorChooser r14, io.ktor.client.engine.HttpClientEngineFactory r15, int r16, kotlin.jvm.internal.DefaultConstructorMarker r17) {
        /*
            r7 = this;
            r0 = r16
            r1 = r0 & 2
            r2 = 0
            if (r1 == 0) goto L9
            r1 = r2
            goto La
        L9:
            r1 = r9
        La:
            r3 = r0 & 4
            if (r3 == 0) goto L10
            r3 = r2
            goto L11
        L10:
            r3 = r10
        L11:
            r4 = r0 & 8
            if (r4 == 0) goto L17
            r4 = r2
            goto L18
        L17:
            r4 = r11
        L18:
            r5 = r0 & 16
            if (r5 == 0) goto L1d
            goto L1e
        L1d:
            r2 = r12
        L1e:
            r5 = r0 & 32
            if (r5 == 0) goto L24
            r5 = 0
            goto L25
        L24:
            r5 = r13
        L25:
            r6 = r0 & 64
            if (r6 == 0) goto L2f
            org.fdroid.download.MirrorChooserWithParameters r6 = new org.fdroid.download.MirrorChooserWithParameters
            r6.<init>(r2)
            goto L30
        L2f:
            r6 = r14
        L30:
            r0 = r0 & 128(0x80, float:1.8E-43)
            if (r0 == 0) goto L39
            io.ktor.client.engine.HttpClientEngineFactory r0 = org.fdroid.download.HttpManagerKt.getHttpClientEngineFactory(r4)
            goto L3a
        L39:
            r0 = r15
        L3a:
            r9 = r7
            r10 = r8
            r11 = r1
            r12 = r3
            r13 = r4
            r14 = r2
            r15 = r5
            r16 = r6
            r17 = r0
            r9.<init>(r10, r11, r12, r13, r14, r15, r16, r17)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.download.HttpManager.<init>(java.lang.String, java.lang.String, java.net.Proxy, okhttp3.Dns, org.fdroid.download.MirrorParameterManager, boolean, org.fdroid.download.MirrorChooser, io.ktor.client.engine.HttpClientEngineFactory, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* compiled from: HttpManager.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lorg/fdroid/download/HttpManager$Companion;", "", "<init>", "()V", "log", "Lmu/KLogger;", "getLog$download_release", "()Lmu/KLogger;", "READ_BUFFER", "", "TIMEOUT_MILLIS_HIGH", "", "isInvalidHttpUrl", "", "url", "", "download_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KLogger getLog$download_release() {
            return HttpManager.log;
        }

        public final boolean isInvalidHttpUrl(String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return HttpUrl.Companion.parse(url) == null;
        }
    }

    /* renamed from: getCurrentProxy$download_release, reason: from getter */
    public final Proxy getCurrentProxy() {
        return this.currentProxy;
    }

    static /* synthetic */ HttpClient getNewHttpClient$default(HttpManager httpManager, Proxy proxy, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getNewHttpClient");
        }
        if ((i & 1) != 0) {
            proxy = null;
        }
        return httpManager.getNewHttpClient(proxy);
    }

    private final HttpClient getNewHttpClient(final Proxy proxyConfig) {
        this.currentProxy = proxyConfig;
        return HttpClientKt.HttpClient(this.httpClientEngineFactory, new Function1() { // from class: org.fdroid.download.HttpManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit newHttpClient$lambda$4;
                newHttpClient$lambda$4 = HttpManager.getNewHttpClient$lambda$4(proxyConfig, this, (HttpClientConfig) obj);
                return newHttpClient$lambda$4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getNewHttpClient$lambda$4(final Proxy proxy, final HttpManager httpManager, HttpClientConfig HttpClient) {
        Intrinsics.checkNotNullParameter(HttpClient, "$this$HttpClient");
        HttpClient.setFollowRedirects(false);
        HttpClient.setExpectSuccess(true);
        HttpClient.engine(new Function1() { // from class: org.fdroid.download.HttpManager$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit newHttpClient$lambda$4$lambda$1;
                newHttpClient$lambda$4$lambda$1 = HttpManager.getNewHttpClient$lambda$4$lambda$1(proxy, (HttpClientEngineConfig) obj);
                return newHttpClient$lambda$4$lambda$1;
            }
        });
        HttpClient.install(UserAgent.Plugin, new Function1() { // from class: org.fdroid.download.HttpManager$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit newHttpClient$lambda$4$lambda$2;
                newHttpClient$lambda$4$lambda$2 = HttpManager.getNewHttpClient$lambda$4$lambda$2(HttpManager.this, (UserAgent.Config) obj);
                return newHttpClient$lambda$4$lambda$2;
            }
        });
        HttpClient.install(HttpTimeout.Plugin, new Function1() { // from class: org.fdroid.download.HttpManager$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit newHttpClient$lambda$4$lambda$3;
                newHttpClient$lambda$4$lambda$3 = HttpManager.getNewHttpClient$lambda$4$lambda$3(HttpManager.this, proxy, (HttpTimeout.HttpTimeoutCapabilityConfiguration) obj);
                return newHttpClient$lambda$4$lambda$3;
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getNewHttpClient$lambda$4$lambda$1(Proxy proxy, HttpClientEngineConfig engine) {
        Intrinsics.checkNotNullParameter(engine, "$this$engine");
        engine.setPipelining(true);
        engine.setProxy(proxy);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getNewHttpClient$lambda$4$lambda$2(HttpManager httpManager, UserAgent.Config install) {
        Intrinsics.checkNotNullParameter(install, "$this$install");
        install.setAgent(httpManager.userAgent);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getNewHttpClient$lambda$4$lambda$3(HttpManager httpManager, Proxy proxy, HttpTimeout.HttpTimeoutCapabilityConfiguration install) {
        Intrinsics.checkNotNullParameter(install, "$this$install");
        if (httpManager.highTimeouts || ProxyKt.isTor(proxy)) {
            install.setConnectTimeoutMillis(Long.valueOf(TIMEOUT_MILLIS_HIGH));
            install.setSocketTimeoutMillis(Long.valueOf(TIMEOUT_MILLIS_HIGH));
            install.setRequestTimeoutMillis(Long.valueOf(TIMEOUT_MILLIS_HIGH));
        }
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Object head$default(HttpManager httpManager, DownloadRequest downloadRequest, String str, Continuation continuation, int i, Object obj) throws NotFoundException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: head");
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return httpManager.head(downloadRequest, str, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object head(org.fdroid.download.DownloadRequest r6, java.lang.String r7, kotlin.coroutines.Continuation r8) throws org.fdroid.download.NotFoundException {
        /*
            r5 = this;
            boolean r0 = r8 instanceof org.fdroid.download.HttpManager$head$1
            if (r0 == 0) goto L13
            r0 = r8
            org.fdroid.download.HttpManager$head$1 r0 = (org.fdroid.download.HttpManager$head$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.fdroid.download.HttpManager$head$1 r0 = new org.fdroid.download.HttpManager$head$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 != r4) goto L31
            java.lang.Object r6 = r0.L$0
            r7 = r6
            java.lang.String r7 = (java.lang.String) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: io.ktor.client.plugins.ResponseException -> L2f
            goto L4e
        L2f:
            r6 = move-exception
            goto L9b
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r8)
            org.fdroid.download.MirrorChooser r8 = r5.mirrorChooser     // Catch: io.ktor.client.plugins.ResponseException -> L2f
            org.fdroid.download.HttpManager$head$response$1 r2 = new org.fdroid.download.HttpManager$head$response$1     // Catch: io.ktor.client.plugins.ResponseException -> L2f
            r2.<init>(r5, r6, r3)     // Catch: io.ktor.client.plugins.ResponseException -> L2f
            r0.L$0 = r7     // Catch: io.ktor.client.plugins.ResponseException -> L2f
            r0.label = r4     // Catch: io.ktor.client.plugins.ResponseException -> L2f
            java.lang.Object r8 = r8.mirrorRequest(r6, r2, r0)     // Catch: io.ktor.client.plugins.ResponseException -> L2f
            if (r8 != r1) goto L4e
            return r1
        L4e:
            io.ktor.client.statement.HttpResponse r8 = (io.ktor.client.statement.HttpResponse) r8     // Catch: io.ktor.client.plugins.ResponseException -> L2f
            java.lang.Long r6 = io.ktor.http.HttpMessagePropertiesKt.contentLength(r8)
            io.ktor.http.Headers r0 = r8.getHeaders()
            io.ktor.http.HttpHeaders r1 = io.ktor.http.HttpHeaders.INSTANCE
            java.lang.String r2 = r1.getLastModified()
            java.lang.String r0 = r0.get(r2)
            if (r7 == 0) goto L89
            io.ktor.http.Headers r2 = r8.getHeaders()
            java.lang.String r3 = r1.getETag()
            java.lang.String r2 = r2.get(r3)
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r7)
            if (r7 == 0) goto L89
            org.fdroid.download.HeadInfo r7 = new org.fdroid.download.HeadInfo
            io.ktor.http.Headers r8 = r8.getHeaders()
            java.lang.String r1 = r1.getETag()
            java.lang.String r8 = r8.get(r1)
            r1 = 0
            r7.<init>(r1, r8, r6, r0)
            return r7
        L89:
            org.fdroid.download.HeadInfo r7 = new org.fdroid.download.HeadInfo
            io.ktor.http.Headers r8 = r8.getHeaders()
            java.lang.String r1 = r1.getETag()
            java.lang.String r8 = r8.get(r1)
            r7.<init>(r4, r8, r6, r0)
            return r7
        L9b:
            mu.KLogger r7 = org.fdroid.download.HttpManager.log
            org.fdroid.download.HttpManager$$ExternalSyntheticLambda1 r8 = new org.fdroid.download.HttpManager$$ExternalSyntheticLambda1
            r8.<init>()
            r7.warn(r8)
            io.ktor.client.statement.HttpResponse r6 = r6.getResponse()
            io.ktor.http.HttpStatusCode r6 = r6.getStatus()
            io.ktor.http.HttpStatusCode$Companion r7 = io.ktor.http.HttpStatusCode.Companion
            io.ktor.http.HttpStatusCode r7 = r7.getNotFound()
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r7)
            if (r6 != 0) goto Lba
            return r3
        Lba:
            org.fdroid.download.NotFoundException r6 = new org.fdroid.download.NotFoundException
            r6.<init>(r3, r4, r3)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.download.HttpManager.head(org.fdroid.download.DownloadRequest, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object head$lambda$5(ResponseException responseException) {
        return "Error getting HEAD: " + responseException.getResponse().getStatus();
    }

    public static /* synthetic */ Object get$default(HttpManager httpManager, DownloadRequest downloadRequest, Long l, BytesReceiver bytesReceiver, Continuation continuation, int i, Object obj) throws ResponseException, NoResumeException, CancellationException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: get");
        }
        if ((i & 2) != 0) {
            l = null;
        }
        return httpManager.get(downloadRequest, l, bytesReceiver, continuation);
    }

    public final Object get(DownloadRequest downloadRequest, Long l, BytesReceiver bytesReceiver, Continuation continuation) throws ResponseException, NoResumeException, CancellationException {
        Ref$LongRef ref$LongRef = new Ref$LongRef();
        ref$LongRef.element = l != null ? l.longValue() : 0L;
        Object mirrorRequest = this.mirrorChooser.mirrorRequest(downloadRequest, new HttpManager$get$2(this, downloadRequest, ref$LongRef, bytesReceiver, null), continuation);
        return mirrorRequest == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? mirrorRequest : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getHttpStatement(DownloadRequest downloadRequest, Mirror mirror, final Url url, long j, Continuation continuation) {
        resetProxyIfNeeded(downloadRequest.getProxy(), mirror);
        log.debug(new Function0() { // from class: org.fdroid.download.HttpManager$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object httpStatement$lambda$6;
                httpStatement$lambda$6 = HttpManager.getHttpStatement$lambda$6(Url.this);
                return httpStatement$lambda$6;
            }
        });
        HttpClient httpClient = this.httpClient;
        HttpRequestBuilder httpRequestBuilder = new HttpRequestBuilder();
        URLUtilsKt.takeFrom(httpRequestBuilder.getUrl(), url);
        addQueryParameters(httpRequestBuilder);
        basicAuth(httpRequestBuilder, downloadRequest);
        if (mirror.isOnion()) {
            HttpTimeoutKt.timeout(httpRequestBuilder, new Function1() { // from class: org.fdroid.download.HttpManager$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit httpStatement$lambda$8$lambda$7;
                    httpStatement$lambda$8$lambda$7 = HttpManager.getHttpStatement$lambda$8$lambda$7((HttpTimeout.HttpTimeoutCapabilityConfiguration) obj);
                    return httpStatement$lambda$8$lambda$7;
                }
            });
        }
        if (j > 0) {
            UtilsKt.header(httpRequestBuilder, HttpHeaders.INSTANCE.getRange(), "bytes=" + j + "-");
        }
        httpRequestBuilder.setMethod(HttpMethod.Companion.getGet());
        return new HttpStatement(httpRequestBuilder, httpClient);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object getHttpStatement$lambda$6(Url url) {
        return "GET " + url;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getHttpStatement$lambda$8$lambda$7(HttpTimeout.HttpTimeoutCapabilityConfiguration timeout) {
        Intrinsics.checkNotNullParameter(timeout, "$this$timeout");
        timeout.setConnectTimeoutMillis(20000L);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Object getChannel$download_release$default(HttpManager httpManager, DownloadRequest downloadRequest, Long l, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getChannel");
        }
        if ((i & 2) != 0) {
            l = null;
        }
        return httpManager.getChannel$download_release(downloadRequest, l, continuation);
    }

    public final Object getChannel$download_release(DownloadRequest downloadRequest, Long l, Continuation continuation) {
        return this.mirrorChooser.mirrorRequest(downloadRequest, new HttpManager$getChannel$2(this, downloadRequest, l, null), continuation);
    }

    public static /* synthetic */ Object getBytes$download_release$default(HttpManager httpManager, DownloadRequest downloadRequest, Long l, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getBytes");
        }
        if ((i & 2) != 0) {
            l = null;
        }
        return httpManager.getBytes$download_release(downloadRequest, l, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r4v0, types: [org.fdroid.download.HttpManager] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.ByteArrayOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getBytes$download_release(org.fdroid.download.DownloadRequest r5, java.lang.Long r6, kotlin.coroutines.Continuation r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof org.fdroid.download.HttpManager$getBytes$1
            if (r0 == 0) goto L13
            r0 = r7
            org.fdroid.download.HttpManager$getBytes$1 r0 = (org.fdroid.download.HttpManager$getBytes$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.fdroid.download.HttpManager$getBytes$1 r0 = new org.fdroid.download.HttpManager$getBytes$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r5 = r0.L$1
            java.io.Closeable r5 = (java.io.Closeable) r5
            java.lang.Object r6 = r0.L$0
            java.io.ByteArrayOutputStream r6 = (java.io.ByteArrayOutputStream) r6
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L31
            goto L57
        L31:
            r6 = move-exception
            goto L69
        L33:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3b:
            kotlin.ResultKt.throwOnFailure(r7)
            java.io.ByteArrayOutputStream r7 = new java.io.ByteArrayOutputStream
            r7.<init>()
            org.fdroid.download.HttpManager$getBytes$2$1 r2 = new org.fdroid.download.HttpManager$getBytes$2$1     // Catch: java.lang.Throwable -> L67
            r2.<init>()     // Catch: java.lang.Throwable -> L67
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L67
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L67
            r0.label = r3     // Catch: java.lang.Throwable -> L67
            java.lang.Object r5 = r4.get(r5, r6, r2, r0)     // Catch: java.lang.Throwable -> L67
            if (r5 != r1) goto L55
            return r1
        L55:
            r5 = r7
            r6 = r5
        L57:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r7 = 0
            kotlin.io.CloseableKt.closeFinally(r5, r7)
            byte[] r5 = r6.toByteArray()
            java.lang.String r6 = "toByteArray(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            return r5
        L67:
            r6 = move-exception
            r5 = r7
        L69:
            throw r6     // Catch: java.lang.Throwable -> L6a
        L6a:
            r7 = move-exception
            kotlin.io.CloseableKt.closeFinally(r5, r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.download.HttpManager.getBytes$download_release(org.fdroid.download.DownloadRequest, java.lang.Long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object post$default(HttpManager httpManager, String str, String str2, Proxy proxy, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: post");
        }
        if ((i & 4) != 0) {
            proxy = null;
        }
        return httpManager.post(str, str2, proxy, continuation);
    }

    public final Object post(String str, String str2, Proxy proxy, Continuation continuation) {
        resetProxyIfNeeded$default(this, proxy, null, 2, null);
        HttpClient httpClient = this.httpClient;
        HttpRequestBuilder httpRequestBuilder = new HttpRequestBuilder();
        addQueryParameters(httpRequestBuilder);
        HttpRequestKt.url(httpRequestBuilder, str);
        UtilsKt.header(httpRequestBuilder, HttpHeaders.INSTANCE.getContentType(), "application/json; utf-8");
        if (str2 == null) {
            httpRequestBuilder.setBody(NullBody.INSTANCE);
            KType typeOf = Reflection.typeOf(String.class);
            httpRequestBuilder.setBodyType(TypeInfoJvmKt.typeInfoImpl(TypesJVMKt.getJavaType(typeOf), Reflection.getOrCreateKotlinClass(String.class), typeOf));
        } else {
            httpRequestBuilder.setBody(str2);
            KType typeOf2 = Reflection.typeOf(String.class);
            httpRequestBuilder.setBodyType(TypeInfoJvmKt.typeInfoImpl(TypesJVMKt.getJavaType(typeOf2), Reflection.getOrCreateKotlinClass(String.class), typeOf2));
        }
        httpRequestBuilder.setMethod(HttpMethod.Companion.getPost());
        Object execute = new HttpStatement(httpRequestBuilder, httpClient).execute(continuation);
        return execute == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? execute : Unit.INSTANCE;
    }

    static /* synthetic */ void resetProxyIfNeeded$default(HttpManager httpManager, Proxy proxy, Mirror mirror, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resetProxyIfNeeded");
        }
        if ((i & 2) != 0) {
            mirror = null;
        }
        httpManager.resetProxyIfNeeded(proxy, mirror);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetProxyIfNeeded(final Proxy proxyConfig, final Mirror mirror) {
        if (MirrorKt.isLocal(mirror) && proxyConfig != null) {
            if (this.currentProxy != null) {
                log.debug(new Function0() { // from class: org.fdroid.download.HttpManager$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Object resetProxyIfNeeded$lambda$11;
                        resetProxyIfNeeded$lambda$11 = HttpManager.resetProxyIfNeeded$lambda$11(Mirror.this);
                        return resetProxyIfNeeded$lambda$11;
                    }
                });
            }
            proxyConfig = null;
        }
        if (Intrinsics.areEqual(this.currentProxy, proxyConfig)) {
            return;
        }
        log.debug(new Function0() { // from class: org.fdroid.download.HttpManager$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object resetProxyIfNeeded$lambda$12;
                resetProxyIfNeeded$lambda$12 = HttpManager.resetProxyIfNeeded$lambda$12(HttpManager.this, proxyConfig);
                return resetProxyIfNeeded$lambda$12;
            }
        });
        this.httpClient.close();
        this.httpClient = getNewHttpClient(proxyConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object resetProxyIfNeeded$lambda$11(Mirror mirror) {
        return "Forcing mirror to null, because mirror is local: " + mirror;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object resetProxyIfNeeded$lambda$12(HttpManager httpManager, Proxy proxy) {
        return "Switching proxy from [" + httpManager.currentProxy + "] to [" + proxy + "]";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void basicAuth(HttpMessageBuilder httpMessageBuilder, DownloadRequest downloadRequest) {
        if (downloadRequest.getHasCredentials()) {
            String username = downloadRequest.getUsername();
            Intrinsics.checkNotNull(username);
            String password = downloadRequest.getPassword();
            Intrinsics.checkNotNull(password);
            UtilsKt.basicAuth(httpMessageBuilder, username, password);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addQueryParameters(HttpRequestBuilder httpRequestBuilder) {
        List<Pair> list = this.parameters;
        if (list != null) {
            for (Pair pair : list) {
                UtilsKt.parameter(httpRequestBuilder, (String) pair.component1(), (String) pair.component2());
            }
        }
    }
}
