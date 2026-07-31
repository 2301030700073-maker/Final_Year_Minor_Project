package coil3.intercept;

import coil3.Image;
import coil3.ImageLoader;
import coil3.decode.DataSource;
import coil3.memory.MemoryCacheService;
import coil3.request.RequestService;
import coil3.util.Logger;
import coil3.util.SystemCallbacks;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EngineInterceptor implements Interceptor {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "EngineInterceptor";
    private final ImageLoader imageLoader;
    private final Logger logger;
    private final MemoryCacheService memoryCacheService;
    private final RequestService requestService;
    private final SystemCallbacks systemCallbacks;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class ExecuteResult {
        private final DataSource dataSource;
        private final String diskCacheKey;
        private final Image image;
        private final boolean isSampled;

        public ExecuteResult(Image image, boolean z, DataSource dataSource, String str) {
            this.image = image;
            this.isSampled = z;
            this.dataSource = dataSource;
            this.diskCacheKey = str;
        }

        public static /* synthetic */ ExecuteResult copy$default(ExecuteResult executeResult, Image image, boolean z, DataSource dataSource, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                image = executeResult.image;
            }
            if ((i & 2) != 0) {
                z = executeResult.isSampled;
            }
            if ((i & 4) != 0) {
                dataSource = executeResult.dataSource;
            }
            if ((i & 8) != 0) {
                str = executeResult.diskCacheKey;
            }
            return executeResult.copy(image, z, dataSource, str);
        }

        public final Image component1() {
            return this.image;
        }

        public final boolean component2() {
            return this.isSampled;
        }

        public final DataSource component3() {
            return this.dataSource;
        }

        public final String component4() {
            return this.diskCacheKey;
        }

        public final ExecuteResult copy(Image image, boolean z, DataSource dataSource, String str) {
            return new ExecuteResult(image, z, dataSource, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ExecuteResult)) {
                return false;
            }
            ExecuteResult executeResult = (ExecuteResult) obj;
            return Intrinsics.areEqual(this.image, executeResult.image) && this.isSampled == executeResult.isSampled && this.dataSource == executeResult.dataSource && Intrinsics.areEqual(this.diskCacheKey, executeResult.diskCacheKey);
        }

        public final DataSource getDataSource() {
            return this.dataSource;
        }

        public final String getDiskCacheKey() {
            return this.diskCacheKey;
        }

        public final Image getImage() {
            return this.image;
        }

        public int hashCode() {
            int hashCode = (this.dataSource.hashCode() + (((this.image.hashCode() * 31) + (this.isSampled ? 1231 : 1237)) * 31)) * 31;
            String str = this.diskCacheKey;
            return hashCode + (str == null ? 0 : str.hashCode());
        }

        public final boolean isSampled() {
            return this.isSampled;
        }

        public String toString() {
            return "ExecuteResult(image=" + this.image + ", isSampled=" + this.isSampled + ", dataSource=" + this.dataSource + ", diskCacheKey=" + this.diskCacheKey + ")";
        }
    }

    public EngineInterceptor(ImageLoader imageLoader, SystemCallbacks systemCallbacks, RequestService requestService, Logger logger) {
        this.imageLoader = imageLoader;
        this.systemCallbacks = systemCallbacks;
        this.requestService = requestService;
        this.logger = logger;
        this.memoryCacheService = new MemoryCacheService(imageLoader, requestService, logger);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:10:0x0090). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object decode(coil3.fetch.SourceFetchResult r8, coil3.ComponentRegistry r9, coil3.request.ImageRequest r10, java.lang.Object r11, coil3.request.Options r12, coil3.EventListener r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.intercept.EngineInterceptor.decode(coil3.fetch.SourceFetchResult, coil3.ComponentRegistry, coil3.request.ImageRequest, java.lang.Object, coil3.request.Options, coil3.EventListener, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0199, code lost:
    
        if (r1 == r12) goto L63;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0113 A[Catch: all -> 0x0077, TRY_LEAVE, TryCatch #2 {all -> 0x0077, blocks: (B:36:0x006d, B:38:0x0108, B:40:0x0113), top: B:35:0x006d }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013f A[Catch: all -> 0x0050, TryCatch #0 {all -> 0x0050, blocks: (B:20:0x0049, B:22:0x013a, B:42:0x011d, B:47:0x013f, B:49:0x0144, B:50:0x01a6, B:51:0x01ab), top: B:8:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00ff  */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(coil3.request.ImageRequest r16, java.lang.Object r17, coil3.request.Options r18, coil3.EventListener r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.intercept.EngineInterceptor.execute(coil3.request.ImageRequest, java.lang.Object, coil3.request.Options, coil3.EventListener, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0083 -> B:10:0x0087). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fetch(coil3.ComponentRegistry r8, coil3.request.ImageRequest r9, java.lang.Object r10, coil3.request.Options r11, coil3.EventListener r12, kotlin.coroutines.Continuation r13) {
        /*
            r7 = this;
            boolean r0 = r13 instanceof coil3.intercept.EngineInterceptor$fetch$1
            if (r0 == 0) goto L13
            r0 = r13
            coil3.intercept.EngineInterceptor$fetch$1 r0 = (coil3.intercept.EngineInterceptor$fetch$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.intercept.EngineInterceptor$fetch$1 r0 = new coil3.intercept.EngineInterceptor$fetch$1
            r0.<init>(r7, r13)
        L18:
            java.lang.Object r13 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L4e
            if (r1 != r3) goto L48
            int r8 = r0.I$0
            java.lang.Object r9 = r0.L$5
            coil3.fetch.Fetcher r9 = (coil3.fetch.Fetcher) r9
            java.lang.Object r10 = r0.L$4
            coil3.EventListener r10 = (coil3.EventListener) r10
            java.lang.Object r11 = r0.L$3
            coil3.request.Options r11 = (coil3.request.Options) r11
            java.lang.Object r12 = r0.L$2
            java.lang.Object r1 = r0.L$1
            coil3.request.ImageRequest r1 = (coil3.request.ImageRequest) r1
            java.lang.Object r4 = r0.L$0
            coil3.ComponentRegistry r4 = (coil3.ComponentRegistry) r4
            kotlin.ResultKt.throwOnFailure(r13)
            r6 = r0
            r0 = r8
            r8 = r4
            r4 = r6
            r6 = r1
            r1 = r9
            r9 = r6
            r6 = r12
            r12 = r10
            r10 = r6
            goto L87
        L48:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r2
        L4e:
            kotlin.ResultKt.throwOnFailure(r13)
            r13 = 0
        L52:
            coil3.ImageLoader r1 = r7.imageLoader
            kotlin.Pair r13 = r8.newFetcher(r10, r11, r1, r13)
            if (r13 == 0) goto La6
            java.lang.Object r1 = r13.first
            coil3.fetch.Fetcher r1 = (coil3.fetch.Fetcher) r1
            java.lang.Object r13 = r13.second
            java.lang.Number r13 = (java.lang.Number) r13
            int r13 = r13.intValue()
            int r13 = r13 + r3
            r12.fetchStart(r9, r1, r11)
            r0.L$0 = r8
            r0.L$1 = r9
            r0.L$2 = r10
            r0.L$3 = r11
            r0.L$4 = r12
            r0.L$5 = r1
            r0.I$0 = r13
            r0.label = r3
            java.lang.Object r4 = r1.fetch(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L83
            return r5
        L83:
            r6 = r0
            r0 = r13
            r13 = r4
            r4 = r6
        L87:
            coil3.fetch.FetchResult r13 = (coil3.fetch.FetchResult) r13
            r12.fetchEnd(r9, r1, r11, r13)     // Catch: java.lang.Throwable -> L92
            if (r13 == 0) goto L8f
            return r13
        L8f:
            r13 = r0
            r0 = r4
            goto L52
        L92:
            r7 = move-exception
            boolean r8 = r13 instanceof coil3.fetch.SourceFetchResult
            if (r8 == 0) goto L9a
            r2 = r13
            coil3.fetch.SourceFetchResult r2 = (coil3.fetch.SourceFetchResult) r2
        L9a:
            if (r2 == 0) goto La5
            coil3.decode.ImageSource r8 = r2.getSource()
            if (r8 == 0) goto La5
            coil3.util.UtilsKt.closeQuietly(r8)
        La5:
            throw r7
        La6:
            java.lang.String r7 = "Unable to create a fetcher that supports: "
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10, r7)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.intercept.EngineInterceptor.fetch(coil3.ComponentRegistry, coil3.request.ImageRequest, java.lang.Object, coil3.request.Options, coil3.EventListener, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    @Override // coil3.intercept.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object intercept(coil3.intercept.Interceptor.Chain r14, kotlin.coroutines.Continuation r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof coil3.intercept.EngineInterceptor$intercept$1
            if (r0 == 0) goto L13
            r0 = r15
            coil3.intercept.EngineInterceptor$intercept$1 r0 = (coil3.intercept.EngineInterceptor$intercept$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.intercept.EngineInterceptor$intercept$1 r0 = new coil3.intercept.EngineInterceptor$intercept$1
            r0.<init>(r13, r15)
        L18:
            java.lang.Object r15 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L34
            if (r1 != r3) goto L2e
            java.lang.Object r13 = r0.L$0
            r14 = r13
            coil3.intercept.Interceptor$Chain r14 = (coil3.intercept.Interceptor.Chain) r14
            kotlin.ResultKt.throwOnFailure(r15)     // Catch: java.lang.Throwable -> L2b
            return r15
        L2b:
            r0 = move-exception
        L2c:
            r13 = r0
            goto L99
        L2e:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r13)
            return r2
        L34:
            kotlin.ResultKt.throwOnFailure(r15)
            coil3.request.ImageRequest r6 = r14.getRequest()     // Catch: java.lang.Throwable -> L96
            java.lang.Object r15 = r6.getData()     // Catch: java.lang.Throwable -> L96
            coil3.size.Size r1 = r14.getSize()     // Catch: java.lang.Throwable -> L96
            coil3.EventListener r9 = coil3.util.UtilsKt.getEventListener(r14)     // Catch: java.lang.Throwable -> L96
            coil3.request.RequestService r4 = r13.requestService     // Catch: java.lang.Throwable -> L96
            coil3.request.Options r8 = r4.options(r6, r1)     // Catch: java.lang.Throwable -> L96
            coil3.size.Scale r4 = r8.getScale()     // Catch: java.lang.Throwable -> L96
            r9.mapStart(r6, r15)     // Catch: java.lang.Throwable -> L96
            coil3.ImageLoader r5 = r13.imageLoader     // Catch: java.lang.Throwable -> L96
            coil3.ComponentRegistry r5 = r5.getComponents()     // Catch: java.lang.Throwable -> L96
            java.lang.Object r7 = r5.map(r15, r8)     // Catch: java.lang.Throwable -> L96
            r9.mapEnd(r6, r7)     // Catch: java.lang.Throwable -> L96
            coil3.memory.MemoryCacheService r15 = r13.memoryCacheService     // Catch: java.lang.Throwable -> L96
            coil3.memory.MemoryCache$Key r10 = r15.newCacheKey(r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L96
            if (r10 == 0) goto L6f
            coil3.memory.MemoryCacheService r15 = r13.memoryCacheService     // Catch: java.lang.Throwable -> L2b
            coil3.memory.MemoryCache$Value r2 = r15.getCacheValue(r6, r10, r1, r4)     // Catch: java.lang.Throwable -> L2b
        L6f:
            if (r2 == 0) goto L78
            coil3.memory.MemoryCacheService r13 = r13.memoryCacheService     // Catch: java.lang.Throwable -> L2b
            coil3.request.SuccessResult r13 = r13.newResult(r14, r6, r10, r2)     // Catch: java.lang.Throwable -> L2b
            return r13
        L78:
            kotlin.coroutines.CoroutineContext r15 = r6.getFetcherCoroutineContext()     // Catch: java.lang.Throwable -> L96
            coil3.intercept.EngineInterceptor$intercept$2 r4 = new coil3.intercept.EngineInterceptor$intercept$2     // Catch: java.lang.Throwable -> L96
            r12 = 0
            r5 = r13
            r11 = r14
            r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L92
            r0.L$0 = r11     // Catch: java.lang.Throwable -> L92
            r0.label = r3     // Catch: java.lang.Throwable -> L92
            java.lang.Object r13 = kotlinx.coroutines.JobKt.withContext(r15, r4, r0)     // Catch: java.lang.Throwable -> L92
            kotlin.coroutines.intrinsics.CoroutineSingletons r14 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r13 != r14) goto L91
            return r14
        L91:
            return r13
        L92:
            r0 = move-exception
            r13 = r0
            r14 = r11
            goto L99
        L96:
            r0 = move-exception
            r11 = r14
            goto L2c
        L99:
            boolean r15 = r13 instanceof java.util.concurrent.CancellationException
            if (r15 != 0) goto La6
            coil3.request.ImageRequest r14 = r14.getRequest()
            coil3.request.ErrorResult r13 = coil3.util.UtilsKt.ErrorResult(r14, r13)
            return r13
        La6:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.intercept.EngineInterceptor.intercept(coil3.intercept.Interceptor$Chain, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
