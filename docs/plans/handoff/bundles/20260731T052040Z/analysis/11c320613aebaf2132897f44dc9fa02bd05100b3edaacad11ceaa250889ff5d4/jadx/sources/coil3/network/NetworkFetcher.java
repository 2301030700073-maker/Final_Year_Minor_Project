package coil3.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import androidx.work.Data;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.Extras;
import coil3.RealImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.decode.FileImageSource;
import coil3.decode.StaticImageDecoderKt;
import coil3.disk.DiskLruCache;
import coil3.disk.RealDiskCache;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.fetch.Fetcher;
import coil3.intercept.EngineInterceptor$fetch$1;
import coil3.network.internal.UNINITIALIZED;
import coil3.request.CachePolicy;
import coil3.request.Options;
import com.grack.nanojson.JsonBuilder;
import java.io.IOException;
import kotlin.InitializedLazyImpl;
import kotlin.Lazy;
import kotlin.ResultKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.FileSystem;
import okio.Path;
import okio.RealBufferedSource;
import okio.Source;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NetworkFetcher implements Fetcher {
    public final Lazy cacheStrategy;
    public final Lazy concurrentRequestStrategy;
    public final InitializedLazyImpl connectivityChecker;
    public final SynchronizedLazyImpl diskCache;
    public final Lazy networkClient;
    public final Options options;
    public final String url;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Factory implements Fetcher.Factory {
        public final SynchronizedLazyImpl cacheStrategyLazy;
        public final SynchronizedLazyImpl concurrentRequestStrategyLazy;
        public final JsonBuilder connectivityCheckerLazy;
        public final SynchronizedLazyImpl networkClientLazy;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        /* renamed from: coil3.network.NetworkFetcher$Factory$2, reason: invalid class name */
        public final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1 {
            public static final AnonymousClass2 INSTANCE = new AnonymousClass2(1, CloseableKt.class, "ConnectivityChecker", "ConnectivityChecker(Landroid/content/Context;)Lcoil3/network/ConnectivityChecker;", 1);

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Context applicationContext = ((Context) obj).getApplicationContext();
                ConnectivityManager connectivityManager = (ConnectivityManager) applicationContext.getSystemService(ConnectivityManager.class);
                if (connectivityManager != null && StaticImageDecoderKt.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
                    try {
                        return Build.VERSION.SDK_INT > 23 ? new ConnectivityCheckerApi21(connectivityManager, 1) : new ConnectivityCheckerApi21(connectivityManager, 0);
                    } catch (Exception unused) {
                    }
                }
                return ConnectivityChecker.ONLINE;
            }
        }

        public Factory(Function0 function0) {
            UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda0 = new UtilsKt$$ExternalSyntheticLambda0(17);
            AnonymousClass2 anonymousClass2 = AnonymousClass2.INSTANCE;
            UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda02 = new UtilsKt$$ExternalSyntheticLambda0(18);
            this.networkClientLazy = new SynchronizedLazyImpl(function0);
            this.cacheStrategyLazy = ResultKt.lazy(utilsKt$$ExternalSyntheticLambda0);
            JsonBuilder jsonBuilder = new JsonBuilder(8, false);
            jsonBuilder.json = anonymousClass2;
            jsonBuilder.root = UNINITIALIZED.INSTANCE;
            this.connectivityCheckerLazy = jsonBuilder;
            this.concurrentRequestStrategyLazy = ResultKt.lazy(utilsKt$$ExternalSyntheticLambda02);
        }

        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher create(Object obj, Options options, RealImageLoader realImageLoader) {
            Uri uri = (Uri) obj;
            if (!Intrinsics.areEqual(uri.scheme, "http") && !Intrinsics.areEqual(uri.scheme, "https")) {
                return null;
            }
            String str = uri.data;
            SynchronizedLazyImpl synchronizedLazyImpl = this.networkClientLazy;
            SynchronizedLazyImpl synchronizedLazyImpl2 = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(realImageLoader, 24));
            SynchronizedLazyImpl synchronizedLazyImpl3 = this.cacheStrategyLazy;
            JsonBuilder jsonBuilder = this.connectivityCheckerLazy;
            Context context = options.context;
            Object obj2 = jsonBuilder.root;
            UNINITIALIZED uninitialized = UNINITIALIZED.INSTANCE;
            if (obj2 == uninitialized) {
                synchronized (jsonBuilder) {
                    obj2 = jsonBuilder.root;
                    if (obj2 == uninitialized) {
                        Function1 function1 = (Function1) jsonBuilder.json;
                        function1.getClass();
                        Object invoke = function1.invoke(context);
                        jsonBuilder.root = invoke;
                        jsonBuilder.json = null;
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

    /* JADX WARN: Code restructure failed: missing block: B:25:0x01ec, code lost:
    
        if (r0 == r12) goto L91;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01cb A[Catch: Exception -> 0x0051, TryCatch #4 {Exception -> 0x0051, blocks: (B:14:0x004c, B:15:0x01ef, B:21:0x006a, B:22:0x01c7, B:24:0x01cb, B:47:0x0185, B:49:0x018d, B:52:0x019c, B:53:0x01a1, B:54:0x01a2), top: B:8:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x014a A[Catch: Exception -> 0x010c, TryCatch #1 {Exception -> 0x010c, blocks: (B:32:0x0144, B:34:0x014a, B:39:0x0159, B:43:0x0173, B:44:0x0178, B:81:0x00c5, B:83:0x00cc, B:85:0x00da, B:88:0x0110, B:90:0x011c, B:94:0x00f0, B:96:0x00fa, B:98:0x017c, B:99:0x0184), top: B:80:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x018d A[Catch: Exception -> 0x0051, TryCatch #4 {Exception -> 0x0051, blocks: (B:14:0x004c, B:15:0x01ef, B:21:0x006a, B:22:0x01c7, B:24:0x01cb, B:47:0x0185, B:49:0x018d, B:52:0x019c, B:53:0x01a1, B:54:0x01a2), top: B:8:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00cc A[Catch: Exception -> 0x010c, TryCatch #1 {Exception -> 0x010c, blocks: (B:32:0x0144, B:34:0x014a, B:39:0x0159, B:43:0x0173, B:44:0x0178, B:81:0x00c5, B:83:0x00cc, B:85:0x00da, B:88:0x0110, B:90:0x011c, B:94:0x00f0, B:96:0x00fa, B:98:0x017c, B:99:0x0184), top: B:80:0x00c5 }] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$doFetch(coil3.network.NetworkFetcher r18, kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.access$doFetch(coil3.network.NetworkFetcher, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$toImageSource(coil3.network.NetworkFetcher r4, coil3.network.SourceResponseBody r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4.getClass()
            boolean r0 = r6 instanceof coil3.network.NetworkFetcher$toImageSource$1
            if (r0 == 0) goto L16
            r0 = r6
            coil3.network.NetworkFetcher$toImageSource$1 r0 = (coil3.network.NetworkFetcher$toImageSource$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            coil3.network.NetworkFetcher$toImageSource$1 r0 = new coil3.network.NetworkFetcher$toImageSource$1
            r0.<init>(r4, r6)
        L1b:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L37
            if (r1 != r3) goto L31
            java.lang.Object r5 = r0.L$1
            okio.Buffer r5 = (okio.Buffer) r5
            java.lang.Object r0 = r0.L$0
            coil3.network.SourceResponseBody r0 = (coil3.network.SourceResponseBody) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L52
        L31:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            return r2
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            okio.Buffer r6 = new okio.Buffer
            r6.<init>()
            r0.L$0 = r2
            r0.L$1 = r6
            r0.label = r3
            okio.BufferedSource r5 = r5.source
            r5.readAll(r6)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r0) goto L51
            return r0
        L51:
            r5 = r6
        L52:
            okio.FileSystem r4 = r4.getFileSystem()
            coil3.decode.SourceImageSource r6 = new coil3.decode.SourceImageSource
            r6.<init>(r5, r4, r2)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.access$toImageSource(coil3.network.NetworkFetcher, coil3.network.SourceResponseBody, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0269 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x025f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$writeToDiskCache(coil3.network.NetworkFetcher r22, coil3.disk.RealDiskCache.RealSnapshot r23, coil3.network.NetworkResponse r24, coil3.network.NetworkResponse r25, kotlin.coroutines.jvm.internal.ContinuationImpl r26) {
        /*
            Method dump skipped, instructions count: 624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.access$writeToDiskCache(coil3.network.NetworkFetcher, coil3.disk.RealDiskCache$RealSnapshot, coil3.network.NetworkResponse, coil3.network.NetworkResponse, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0053 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getMimeType(java.lang.String r3, java.lang.String r4) {
        /*
            r0 = 0
            if (r4 == 0) goto Ld
            java.lang.String r1 = "text/plain"
            r2 = 0
            boolean r1 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r4, r1, r2)
            if (r1 == 0) goto L54
        Ld:
            boolean r1 = kotlin.text.StringsKt.isBlank(r3)
            if (r1 == 0) goto L15
        L13:
            r1 = r0
            goto L51
        L15:
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
            if (r1 == 0) goto L36
            goto L13
        L36:
            java.util.Locale r1 = java.util.Locale.ROOT
            java.lang.String r3 = r3.toLowerCase(r1)
            r3.getClass()
            kotlin.collections.builders.MapBuilder r1 = coil3.util.MimeTypesKt.mimeTypeData
            java.lang.Object r1 = r1.get(r3)
            java.lang.String r1 = (java.lang.String) r1
            if (r1 != 0) goto L51
            android.webkit.MimeTypeMap r1 = android.webkit.MimeTypeMap.getSingleton()
            java.lang.String r1 = r1.getMimeTypeFromExtension(r3)
        L51:
            if (r1 == 0) goto L54
            return r1
        L54:
            if (r4 == 0) goto L5d
            r3 = 59
            java.lang.String r3 = kotlin.text.StringsKt.substringBefore$default(r4, r3)
            return r3
        L5d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.getMimeType(java.lang.String, java.lang.String):java.lang.String");
    }

    @Override // coil3.fetch.Fetcher
    public final Object fetch(EngineInterceptor$fetch$1 engineInterceptor$fetch$1) {
        UncoordinatedConcurrentRequestStrategy uncoordinatedConcurrentRequestStrategy = (UncoordinatedConcurrentRequestStrategy) this.concurrentRequestStrategy.getValue();
        String str = this.options.diskCacheKey;
        NetworkFetcher$fetch$2 networkFetcher$fetch$2 = new NetworkFetcher$fetch$2(1, this, NetworkFetcher.class, "doFetch", "doFetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0, 0);
        uncoordinatedConcurrentRequestStrategy.getClass();
        return networkFetcher$fetch$2.invoke(engineInterceptor$fetch$1);
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
        Data.Builder builder = new Data.Builder(networkHeaders);
        CachePolicy cachePolicy = options.diskCachePolicy;
        boolean readEnabled = cachePolicy.getReadEnabled();
        boolean z = options.networkCachePolicy.getReadEnabled() && ((ConnectivityChecker) this.connectivityChecker.getValue()).isOnline();
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
        NetworkHeaders networkHeaders2 = new NetworkHeaders(MapsKt__MapsKt.toMap(builder.values));
        if (UriKt.getExtra(options, ImageRequestsKt.httpBodyKey) == null) {
            return new NetworkRequest(this.url, str, networkHeaders2, options.extras);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
        return null;
    }

    public final FileImageSource toImageSource(RealDiskCache.RealSnapshot realSnapshot) {
        DiskLruCache.Snapshot snapshot = realSnapshot.snapshot;
        if (snapshot.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("snapshot is closed");
            return null;
        }
        Path path = (Path) snapshot.entry.cleanFiles.get(1);
        FileSystem fileSystem = getFileSystem();
        String str = this.options.diskCacheKey;
        if (str == null) {
            str = this.url;
        }
        return AppKt.ImageSource$default(path, fileSystem, str, realSnapshot, 16);
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
            Source source = fileSystem.source((Path) snapshot.entry.cleanFiles.get(0));
            source.getClass();
            RealBufferedSource realBufferedSource = new RealBufferedSource(source);
            try {
                networkResponse = UStringsKt.readFrom(realBufferedSource);
                try {
                    realBufferedSource.close();
                    th = null;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                try {
                    realBufferedSource.close();
                } catch (Throwable th4) {
                    ResultKt.addSuppressed(th3, th4);
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
}
