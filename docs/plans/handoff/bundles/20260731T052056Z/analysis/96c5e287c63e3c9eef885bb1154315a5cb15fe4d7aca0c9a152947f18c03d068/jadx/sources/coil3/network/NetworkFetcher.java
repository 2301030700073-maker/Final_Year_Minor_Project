package coil3.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import androidx.compose.animation.core.Animation;
import androidx.work.OperationKt;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.Extras;
import coil3.RealImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.decode.FileImageSource;
import coil3.disk.DiskLruCache;
import coil3.disk.RealDiskCache;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.fetch.Fetcher;
import coil3.intercept.EngineInterceptor$fetch$1;
import coil3.network.NetworkHeaders;
import coil3.network.internal.UNINITIALIZED;
import coil3.request.CachePolicy;
import coil3.request.Options;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.io.IOException;
import kotlin.ExceptionsKt;
import kotlin.InitializedLazyImpl;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlin.uuid.UuidKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.FileSystem;
import okio.Okio__OkioKt;
import okio.Path;
import okio.RealBufferedSource;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NetworkFetcher implements Fetcher {
    public final SynchronizedLazyImpl cacheStrategy;
    public final SynchronizedLazyImpl concurrentRequestStrategy;
    public final InitializedLazyImpl connectivityChecker;
    public final SynchronizedLazyImpl diskCache;
    public final SynchronizedLazyImpl networkClient;
    public final Options options;
    public final String url;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Factory implements Fetcher.Factory {
        public final SynchronizedLazyImpl cacheStrategyLazy;
        public final SynchronizedLazyImpl concurrentRequestStrategyLazy;
        public final AndroidSvg connectivityCheckerLazy;
        public final SynchronizedLazyImpl networkClientLazy;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        /* renamed from: coil3.network.NetworkFetcher$Factory$2, reason: invalid class name */
        public final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1 {
            public static final AnonymousClass2 INSTANCE = new AnonymousClass2(1, OperationKt.class, "ConnectivityChecker", "ConnectivityChecker(Landroid/content/Context;)Lcoil3/network/ConnectivityChecker;", 1);

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Context applicationContext = ((Context) obj).getApplicationContext();
                ConnectivityManager connectivityManager = (ConnectivityManager) applicationContext.getSystemService(ConnectivityManager.class);
                if (connectivityManager != null && FileUtil.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
                    try {
                        return Build.VERSION.SDK_INT > 23 ? new ConnectivityCheckerApi21(connectivityManager, 1) : new ConnectivityCheckerApi21(connectivityManager, 0);
                    } catch (Exception unused) {
                    }
                }
                return ConnectivityChecker.ONLINE;
            }
        }

        public Factory(Function0 function0) {
            UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda0 = new UtilsKt$$ExternalSyntheticLambda0(1);
            AnonymousClass2 anonymousClass2 = AnonymousClass2.INSTANCE;
            UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda02 = new UtilsKt$$ExternalSyntheticLambda0(2);
            this.networkClientLazy = new SynchronizedLazyImpl(function0);
            this.cacheStrategyLazy = ContextsKt.lazy(utilsKt$$ExternalSyntheticLambda0);
            AndroidSvg androidSvg = new AndroidSvg();
            androidSvg.svg = anonymousClass2;
            androidSvg.renderOptions = UNINITIALIZED.INSTANCE;
            this.connectivityCheckerLazy = androidSvg;
            this.concurrentRequestStrategyLazy = ContextsKt.lazy(utilsKt$$ExternalSyntheticLambda02);
        }

        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher create(Object obj, Options options, RealImageLoader realImageLoader) {
            Uri uri = (Uri) obj;
            if (!Intrinsics.areEqual(uri.scheme, "http") && !Intrinsics.areEqual(uri.scheme, "https")) {
                return null;
            }
            String str = uri.data;
            SynchronizedLazyImpl synchronizedLazyImpl = this.networkClientLazy;
            SynchronizedLazyImpl synchronizedLazyImpl2 = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(16, realImageLoader));
            SynchronizedLazyImpl synchronizedLazyImpl3 = this.cacheStrategyLazy;
            AndroidSvg androidSvg = this.connectivityCheckerLazy;
            Context context = options.context;
            Object obj2 = androidSvg.renderOptions;
            UNINITIALIZED uninitialized = UNINITIALIZED.INSTANCE;
            if (obj2 == uninitialized) {
                synchronized (androidSvg) {
                    obj2 = androidSvg.renderOptions;
                    if (obj2 == uninitialized) {
                        Function1 function1 = (Function1) androidSvg.svg;
                        function1.getClass();
                        Object invoke = function1.invoke(context);
                        androidSvg.renderOptions = invoke;
                        androidSvg.svg = null;
                        obj2 = invoke;
                    }
                }
            }
            return new NetworkFetcher(str, options, synchronizedLazyImpl, synchronizedLazyImpl2, synchronizedLazyImpl3, new InitializedLazyImpl(obj2), this.concurrentRequestStrategyLazy);
        }
    }

    public NetworkFetcher(String str, Options options, SynchronizedLazyImpl synchronizedLazyImpl, SynchronizedLazyImpl synchronizedLazyImpl2, SynchronizedLazyImpl synchronizedLazyImpl3, InitializedLazyImpl initializedLazyImpl, SynchronizedLazyImpl synchronizedLazyImpl4) {
        this.url = str;
        this.options = options;
        this.networkClient = synchronizedLazyImpl;
        this.diskCache = synchronizedLazyImpl2;
        this.cacheStrategy = synchronizedLazyImpl3;
        this.connectivityChecker = initializedLazyImpl;
        this.concurrentRequestStrategy = synchronizedLazyImpl4;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0052 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getMimeType(java.lang.String r3, java.lang.String r4) {
        /*
            r0 = 0
            if (r4 == 0) goto Lc
            java.lang.String r1 = "text/plain"
            r2 = 0
            boolean r1 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r4, r1, r2)
            if (r1 == 0) goto L53
        Lc:
            boolean r1 = kotlin.text.StringsKt.isBlank(r3)
            if (r1 == 0) goto L14
        L12:
            r1 = r0
            goto L50
        L14:
            r1 = 35
            java.lang.String r3 = kotlin.text.StringsKt.substringBeforeLast$default(r3, r1)
            r1 = 63
            java.lang.String r3 = kotlin.text.StringsKt.substringBeforeLast$default(r3, r1)
            r1 = 47
            java.lang.String r3 = kotlin.text.StringsKt.substringAfterLast(r1, r3, r3)
            r1 = 46
            java.lang.String r2 = ""
            java.lang.String r3 = kotlin.text.StringsKt.substringAfterLast(r1, r3, r2)
            boolean r1 = kotlin.text.StringsKt.isBlank(r3)
            if (r1 == 0) goto L35
            goto L12
        L35:
            java.util.Locale r1 = java.util.Locale.ROOT
            java.lang.String r3 = r3.toLowerCase(r1)
            r3.getClass()
            kotlin.collections.builders.MapBuilder r1 = coil3.util.MimeTypesKt.mimeTypeData
            java.lang.Object r1 = r1.get(r3)
            java.lang.String r1 = (java.lang.String) r1
            if (r1 != 0) goto L50
            android.webkit.MimeTypeMap r1 = android.webkit.MimeTypeMap.getSingleton()
            java.lang.String r1 = r1.getMimeTypeFromExtension(r3)
        L50:
            if (r1 == 0) goto L53
            return r1
        L53:
            if (r4 == 0) goto L5c
            r3 = 59
            java.lang.String r3 = kotlin.text.StringsKt.substringBefore$default(r4, r3)
            return r3
        L5c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.getMimeType(java.lang.String, java.lang.String):java.lang.String");
    }

    public static void throwIfFailureResponseCode(NetworkResponse networkResponse) {
        int i = networkResponse.code;
        if ((200 > i || i >= 300) && i != 304) {
            throw new HttpException(Animation.CC.m(i, "HTTP "));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x01a5, code lost:
    
        if (r0 == r8) goto L80;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x018a A[Catch: Exception -> 0x003d, TryCatch #1 {Exception -> 0x003d, blocks: (B:14:0x0038, B:15:0x01a8, B:21:0x0048, B:22:0x0186, B:24:0x018a, B:32:0x011b, B:34:0x0121, B:37:0x0148, B:39:0x0150, B:42:0x015f, B:43:0x0164, B:44:0x0165, B:70:0x009b, B:72:0x00a2, B:74:0x00b0, B:77:0x00e4, B:79:0x00f0, B:83:0x00c6, B:85:0x00d0, B:87:0x013f, B:88:0x0146), top: B:8:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0121 A[Catch: Exception -> 0x003d, TryCatch #1 {Exception -> 0x003d, blocks: (B:14:0x0038, B:15:0x01a8, B:21:0x0048, B:22:0x0186, B:24:0x018a, B:32:0x011b, B:34:0x0121, B:37:0x0148, B:39:0x0150, B:42:0x015f, B:43:0x0164, B:44:0x0165, B:70:0x009b, B:72:0x00a2, B:74:0x00b0, B:77:0x00e4, B:79:0x00f0, B:83:0x00c6, B:85:0x00d0, B:87:0x013f, B:88:0x0146), top: B:8:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0150 A[Catch: Exception -> 0x003d, TryCatch #1 {Exception -> 0x003d, blocks: (B:14:0x0038, B:15:0x01a8, B:21:0x0048, B:22:0x0186, B:24:0x018a, B:32:0x011b, B:34:0x0121, B:37:0x0148, B:39:0x0150, B:42:0x015f, B:43:0x0164, B:44:0x0165, B:70:0x009b, B:72:0x00a2, B:74:0x00b0, B:77:0x00e4, B:79:0x00f0, B:83:0x00c6, B:85:0x00d0, B:87:0x013f, B:88:0x0146), top: B:8:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00a2 A[Catch: Exception -> 0x003d, TryCatch #1 {Exception -> 0x003d, blocks: (B:14:0x0038, B:15:0x01a8, B:21:0x0048, B:22:0x0186, B:24:0x018a, B:32:0x011b, B:34:0x0121, B:37:0x0148, B:39:0x0150, B:42:0x015f, B:43:0x0164, B:44:0x0165, B:70:0x009b, B:72:0x00a2, B:74:0x00b0, B:77:0x00e4, B:79:0x00f0, B:83:0x00c6, B:85:0x00d0, B:87:0x013f, B:88:0x0146), top: B:8:0x002e }] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doFetch(kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.doFetch(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // coil3.fetch.Fetcher
    public final Object fetch(EngineInterceptor$fetch$1 engineInterceptor$fetch$1) {
        UncoordinatedConcurrentRequestStrategy uncoordinatedConcurrentRequestStrategy = (UncoordinatedConcurrentRequestStrategy) this.concurrentRequestStrategy.getValue();
        String str = this.options.diskCacheKey;
        uncoordinatedConcurrentRequestStrategy.getClass();
        return doFetch(engineInterceptor$fetch$1);
    }

    public final FileSystem getFileSystem() {
        FileSystem fileSystem;
        RealDiskCache realDiskCache = (RealDiskCache) this.diskCache.getValue();
        return (realDiskCache == null || (fileSystem = realDiskCache.fileSystem) == null) ? this.options.fileSystem : fileSystem;
    }

    public final NetworkRequest newRequest() {
        Extras.Key key = ImageRequestsKt.httpHeadersKey;
        Options options = this.options;
        NetworkHeaders networkHeaders = (NetworkHeaders) UriKt.getExtra(options, key);
        networkHeaders.getClass();
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder(networkHeaders);
        CachePolicy cachePolicy = options.diskCachePolicy;
        boolean readEnabled = cachePolicy.getReadEnabled();
        boolean z = options.networkCachePolicy.getReadEnabled() && ((ConnectivityChecker) this.connectivityChecker.value).isOnline();
        if (!z && readEnabled) {
            builder.set("only-if-cached, max-stale=2147483647");
        } else if (!z || readEnabled) {
            if (!z && !readEnabled) {
                builder.set("no-cache, only-if-cached");
            }
        } else if (cachePolicy.getWriteEnabled()) {
            builder.set("no-cache");
        } else {
            builder.set("no-cache, no-store");
        }
        String str = (String) UriKt.getExtra(options, ImageRequestsKt.httpMethodKey);
        NetworkHeaders networkHeaders2 = new NetworkHeaders(MapsKt__MapsKt.toMap(builder.data));
        if (UriKt.getExtra(options, ImageRequestsKt.httpBodyKey) == null) {
            return new NetworkRequest(this.url, str, networkHeaders2, options.extras);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object toImageSource(coil3.network.SourceResponseBody r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof coil3.network.NetworkFetcher$toImageSource$1
            if (r0 == 0) goto L13
            r0 = r6
            coil3.network.NetworkFetcher$toImageSource$1 r0 = (coil3.network.NetworkFetcher$toImageSource$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.network.NetworkFetcher$toImageSource$1 r0 = new coil3.network.NetworkFetcher$toImageSource$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            okio.Buffer r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L47
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L30:
            kotlin.ResultKt.throwOnFailure(r6)
            okio.Buffer r6 = new okio.Buffer
            r6.<init>()
            r0.L$0 = r6
            r0.label = r3
            okio.BufferedSource r5 = r5.source
            r5.readAll(r6)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            if (r5 != r1) goto L46
            return r1
        L46:
            r5 = r6
        L47:
            okio.FileSystem r4 = r4.getFileSystem()
            coil3.decode.SourceImageSource r4 = kotlin.text.RegexKt.ImageSource$default(r5, r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.toImageSource(coil3.network.SourceResponseBody, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final NetworkResponse toNetworkResponseOrNull(RealDiskCache.RealSnapshot realSnapshot) {
        Throwable th;
        NetworkResponse networkResponse;
        try {
            FileSystem fileSystem = getFileSystem();
            DiskLruCache.Snapshot snapshot = realSnapshot.snapshot;
            if (snapshot.closed) {
                throw new IllegalStateException("snapshot is closed");
            }
            RealBufferedSource buffer = Okio__OkioKt.buffer(fileSystem.source((Path) snapshot.entry.cleanFiles.get(0)));
            try {
                networkResponse = UuidKt.readFrom(buffer);
                try {
                    buffer.close();
                    th = null;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                try {
                    buffer.close();
                } catch (Throwable th4) {
                    ExceptionsKt.addSuppressed(th3, th4);
                }
                th = th3;
                networkResponse = null;
            }
            if (th == null) {
                return networkResponse;
            }
            throw th;
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:142:0x013d, code lost:
    
        if (r4 == r6) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x020f, code lost:
    
        if (kotlin.Unit.INSTANCE == r6) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0211, code lost:
    
        return r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0233 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0229 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x019f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeToDiskCache(coil3.disk.RealDiskCache.RealSnapshot r23, coil3.network.NetworkResponse r24, coil3.network.NetworkResponse r25, kotlin.coroutines.jvm.internal.ContinuationImpl r26) {
        /*
            Method dump skipped, instructions count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.writeToDiskCache(coil3.disk.RealDiskCache$RealSnapshot, coil3.network.NetworkResponse, coil3.network.NetworkResponse, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final FileImageSource toImageSource(RealDiskCache.RealSnapshot realSnapshot) {
        DiskLruCache.Snapshot snapshot = realSnapshot.snapshot;
        if (!snapshot.closed) {
            Path path = (Path) snapshot.entry.cleanFiles.get(1);
            FileSystem fileSystem = getFileSystem();
            String str = this.options.diskCacheKey;
            if (str == null) {
                str = this.url;
            }
            return RegexKt.ImageSource$default(path, fileSystem, str, realSnapshot, 16);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("snapshot is closed");
        return null;
    }
}
