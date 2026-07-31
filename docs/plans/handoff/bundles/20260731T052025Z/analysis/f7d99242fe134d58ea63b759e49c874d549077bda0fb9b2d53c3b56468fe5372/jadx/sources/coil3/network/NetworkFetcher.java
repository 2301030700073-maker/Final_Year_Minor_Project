package coil3.network;

import android.content.Context;
import coil3.ImageLoader;
import coil3.Uri;
import coil3.decode.ImageSource;
import coil3.decode.ImageSourceKt;
import coil3.disk.DiskCache;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.fetch.Fetcher;
import coil3.network.NetworkHeaders;
import coil3.network.internal.SingleParameterLazy;
import coil3.network.internal.SingleParameterLazyKt;
import coil3.network.internal.UtilsKt;
import coil3.request.Options;
import coil3.util.MimeTypeMap;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import java.io.IOException;
import kotlin.Deprecated;
import kotlin.InitializedLazyImpl;
import kotlin.Lazy;
import kotlin.ResultKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.Buffer;
import okio.FileSystem;
import okio.Okio;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkFetcher implements Fetcher {
    private final Lazy cacheStrategy;
    private final Lazy concurrentRequestStrategy;
    private final Lazy connectivityChecker;
    private final Lazy diskCache;
    private final Lazy networkClient;
    private final Options options;
    private final String url;

    @Deprecated
    public NetworkFetcher(String str, Options options, Lazy lazy, Lazy lazy2, Lazy lazy3, ConnectivityChecker connectivityChecker) {
        this(str, options, lazy, lazy2, lazy3, new InitializedLazyImpl(connectivityChecker), new InitializedLazyImpl(ConcurrentRequestStrategy.UNCOORDINATED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(19:0|1|(2:3|(16:5|6|7|(3:(1:(1:(4:12|13|14|15)(2:18|19))(6:20|21|22|23|24|(1:26)(1:29)))(4:38|39|40|41)|33|(2:35|36)(1:37))(15:66|67|68|(4:70|(2:80|81)|73|(2:75|(2:77|28)))|82|46|47|48|(1:50)|(6:52|(1:54)|55|56|(3:58|24|(0)(0))|28)|60|55|56|(0)|28)|42|(2:44|45)|46|47|48|(0)|(0)|60|55|56|(0)|28))|87|6|7|(0)(0)|42|(0)|46|47|48|(0)|(0)|60|55|56|(0)|28) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0171, code lost:
    
        if (r15 == r6) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0123, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0124, code lost:
    
        r15 = r0;
        r14 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0033, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0034, code lost:
    
        r15 = r0;
        r14 = r14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0158 A[Catch: Exception -> 0x0033, TryCatch #4 {Exception -> 0x0033, blocks: (B:13:0x002e, B:14:0x0174, B:24:0x0154, B:26:0x0158), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ea A[Catch: Exception -> 0x00ac, TRY_LEAVE, TryCatch #1 {Exception -> 0x00ac, blocks: (B:42:0x00e2, B:44:0x00ea, B:68:0x0070, B:70:0x0077, B:73:0x00b3, B:75:0x00bf, B:78:0x008c, B:80:0x0096), top: B:67:0x0070 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011f A[Catch: Exception -> 0x0123, TryCatch #3 {Exception -> 0x0123, blocks: (B:48:0x0113, B:50:0x011f, B:52:0x0129, B:56:0x0137, B:60:0x0132), top: B:47:0x0113 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0129 A[Catch: Exception -> 0x0123, TryCatch #3 {Exception -> 0x0123, blocks: (B:48:0x0113, B:50:0x011f, B:52:0x0129, B:56:0x0137, B:60:0x0132), top: B:47:0x0113 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v18, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r14v2, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r1v29, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doFetch(kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.doFetch(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final String getDiskCacheKey() {
        String diskCacheKey = this.options.getDiskCacheKey();
        return diskCacheKey == null ? this.url : diskCacheKey;
    }

    private final FileSystem getFileSystem() {
        FileSystem fileSystem;
        DiskCache diskCache = (DiskCache) this.diskCache.getValue();
        return (diskCache == null || (fileSystem = diskCache.getFileSystem()) == null) ? this.options.getFileSystem() : fileSystem;
    }

    private final NetworkRequest newRequest() {
        NetworkHeaders.Builder newBuilder = ImageRequestsKt.getHttpHeaders(this.options).newBuilder();
        boolean readEnabled = this.options.getDiskCachePolicy().getReadEnabled();
        boolean z = this.options.getNetworkCachePolicy().getReadEnabled() && ((ConnectivityChecker) this.connectivityChecker.getValue()).isOnline();
        if (!z && readEnabled) {
            newBuilder.set(UtilsKt.CACHE_CONTROL, "only-if-cached, max-stale=2147483647");
        } else if (!z || readEnabled) {
            if (!z && !readEnabled) {
                newBuilder.set(UtilsKt.CACHE_CONTROL, "no-cache, only-if-cached");
            }
        } else if (this.options.getDiskCachePolicy().getWriteEnabled()) {
            newBuilder.set(UtilsKt.CACHE_CONTROL, "no-cache");
        } else {
            newBuilder.set(UtilsKt.CACHE_CONTROL, "no-cache, no-store");
        }
        return new NetworkRequest(this.url, ImageRequestsKt.getHttpMethod(this.options), newBuilder.build(), ImageRequestsKt.getHttpBody(this.options), this.options.getExtras());
    }

    private final DiskCache.Snapshot readFromDiskCache() {
        DiskCache diskCache;
        if (!this.options.getDiskCachePolicy().getReadEnabled() || (diskCache = (DiskCache) this.diskCache.getValue()) == null) {
            return null;
        }
        return diskCache.openSnapshot(getDiskCacheKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void throwIfFailureResponseCode(NetworkResponse networkResponse) {
        int code = networkResponse.getCode();
        if ((200 > code || code >= 300) && networkResponse.getCode() != 304) {
            throw new HttpException(networkResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object toImageSource(coil3.network.NetworkResponseBody r5, kotlin.coroutines.Continuation r6) {
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
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L30
            if (r1 != r2) goto L29
            java.lang.Object r5 = r0.L$0
            okio.Buffer r5 = (okio.Buffer) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L46
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L30:
            kotlin.ResultKt.throwOnFailure(r6)
            okio.Buffer r6 = new okio.Buffer
            r6.<init>()
            r0.L$0 = r6
            r0.label = r2
            java.lang.Object r5 = r5.writeTo(r6, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r0) goto L45
            return r0
        L45:
            r5 = r6
        L46:
            coil3.decode.ImageSource r4 = r4.toImageSource(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.toImageSource(coil3.network.NetworkResponseBody, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NetworkResponse toNetworkResponseOrNull(DiskCache.Snapshot snapshot) {
        Throwable th;
        NetworkResponse networkResponse;
        try {
            RealBufferedSource buffer = Okio.buffer(getFileSystem().source(snapshot.getMetadata()));
            try {
                networkResponse = CacheNetworkResponse.INSTANCE.readFrom(buffer);
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ef, code lost:
    
        if (r13.writeTo(r10, r15, r6) == r9) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeToDiskCache(coil3.disk.DiskCache.Snapshot r11, coil3.network.NetworkResponse r12, coil3.network.NetworkRequest r13, coil3.network.NetworkResponse r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.writeToDiskCache(coil3.disk.DiskCache$Snapshot, coil3.network.NetworkResponse, coil3.network.NetworkRequest, coil3.network.NetworkResponse, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        return ((ConcurrentRequestStrategy) this.concurrentRequestStrategy.getValue()).apply(getDiskCacheKey(), new NetworkFetcher$fetch$2(this), continuation);
    }

    public final String getMimeType(String str, String str2) {
        String mimeTypeFromUrl;
        if ((str2 == null || StringsKt__StringsJVMKt.startsWith(str2, UtilsKt.MIME_TYPE_TEXT_PLAIN, false)) && (mimeTypeFromUrl = MimeTypeMap.INSTANCE.getMimeTypeFromUrl(str)) != null) {
            return mimeTypeFromUrl;
        }
        if (str2 != null) {
            return StringsKt.substringBefore$default(';', str2);
        }
        return null;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<Uri> {
        private final Lazy cacheStrategyLazy;
        private final Lazy concurrentRequestStrategyLazy;
        private final SingleParameterLazy<Context, ConnectivityChecker> connectivityCheckerLazy;
        private final Lazy networkClientLazy;

        public /* synthetic */ Factory(Function0 function0, Function0 function02, Function1 function1, Function0 function03, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(function0, (i & 2) != 0 ? new UtilsKt$$ExternalSyntheticLambda0(26) : function02, (i & 4) != 0 ? AnonymousClass2.INSTANCE : function1, (i & 8) != 0 ? new UtilsKt$$ExternalSyntheticLambda0(27) : function03);
        }

        private final boolean isApplicable(Uri uri) {
            return Intrinsics.areEqual(uri.getScheme(), "http") || Intrinsics.areEqual(uri.getScheme(), "https");
        }

        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(Uri uri, Options options, ImageLoader imageLoader) {
            if (isApplicable(uri)) {
                return new NetworkFetcher(uri.toString(), options, this.networkClientLazy, new SynchronizedLazyImpl(new K9$$ExternalSyntheticLambda0(3, imageLoader)), this.cacheStrategyLazy, new InitializedLazyImpl(this.connectivityCheckerLazy.get(options.getContext())), this.concurrentRequestStrategyLazy);
            }
            return null;
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        /* renamed from: coil3.network.NetworkFetcher$Factory$2, reason: invalid class name */
        public static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1 {
            public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

            public AnonymousClass2() {
                super(1, ConnectivityCheckerKt.class, "ConnectivityChecker", "ConnectivityChecker(Landroid/content/Context;)Lcoil3/network/ConnectivityChecker;", 1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ConnectivityChecker invoke(Context context) {
                return ConnectivityCheckerKt.ConnectivityChecker(context);
            }
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        /* renamed from: coil3.network.NetworkFetcher$Factory$5, reason: invalid class name */
        public static final /* synthetic */ class AnonymousClass5 extends FunctionReferenceImpl implements Function1 {
            public static final AnonymousClass5 INSTANCE = new AnonymousClass5();

            public AnonymousClass5() {
                super(1, ConnectivityCheckerKt.class, "ConnectivityChecker", "ConnectivityChecker(Landroid/content/Context;)Lcoil3/network/ConnectivityChecker;", 1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ConnectivityChecker invoke(Context context) {
                return ConnectivityCheckerKt.ConnectivityChecker(context);
            }
        }

        public Factory(Function0 function0, Function0 function02, Function1 function1, Function0 function03) {
            this.networkClientLazy = ResultKt.lazy(function0);
            this.cacheStrategyLazy = ResultKt.lazy(function02);
            this.connectivityCheckerLazy = SingleParameterLazyKt.singleParameterLazy(function1);
            this.concurrentRequestStrategyLazy = ResultKt.lazy(function03);
        }

        public /* synthetic */ Factory(Function0 function0, Function0 function02, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(function0, (i & 2) != 0 ? new UtilsKt$$ExternalSyntheticLambda0(28) : function02, (i & 4) != 0 ? AnonymousClass5.INSTANCE : function1);
        }

        @Deprecated
        public /* synthetic */ Factory(Function0 function0, Function0 function02, Function1 function1) {
            this(function0, function02, function1, new UtilsKt$$ExternalSyntheticLambda0(25));
        }
    }

    public NetworkFetcher(String str, Options options, Lazy lazy, Lazy lazy2, Lazy lazy3, Lazy lazy4, Lazy lazy5) {
        this.url = str;
        this.options = options;
        this.networkClient = lazy;
        this.diskCache = lazy2;
        this.cacheStrategy = lazy3;
        this.connectivityChecker = lazy4;
        this.concurrentRequestStrategy = lazy5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageSource toImageSource(DiskCache.Snapshot snapshot) {
        return ImageSourceKt.ImageSource$default(snapshot.getData(), getFileSystem(), getDiskCacheKey(), snapshot, null, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageSource toImageSource(Buffer buffer) {
        return ImageSourceKt.ImageSource$default(buffer, getFileSystem(), null, 4, null);
    }
}
