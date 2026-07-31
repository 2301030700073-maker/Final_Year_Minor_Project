package coil3;

import android.content.Context;
import coil3.EventListener;
import coil3.ImageLoader;
import coil3.disk.DiskCache;
import coil3.intercept.EngineInterceptor;
import coil3.memory.MemoryCache;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.request.RequestService;
import coil3.request.RequestService_androidKt;
import coil3.util.Logger;
import coil3.util.SystemCallbacks;
import coil3.util.SystemCallbacksKt;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Lazy;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealImageLoader implements ImageLoader {
    private static final /* synthetic */ AtomicIntegerFieldUpdater shutdown$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(RealImageLoader.class, "shutdown$volatile");
    private final ComponentRegistry components;
    private final Options options;
    private final RequestService requestService;
    private final CoroutineScope scope;
    private volatile /* synthetic */ int shutdown$volatile;
    private final SystemCallbacks systemCallbacks;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Options {
        private final Context application;
        private final ComponentRegistry componentRegistry;
        private final ImageRequest.Defaults defaults;
        private final Lazy diskCacheLazy;
        private final EventListener.Factory eventListenerFactory;
        private final Logger logger;
        private final Lazy mainCoroutineContextLazy;
        private final Lazy memoryCacheLazy;

        public Options(Context context, ImageRequest.Defaults defaults, Lazy lazy, Lazy lazy2, Lazy lazy3, EventListener.Factory factory, ComponentRegistry componentRegistry, Logger logger) {
            this.application = context;
            this.defaults = defaults;
            this.mainCoroutineContextLazy = lazy;
            this.memoryCacheLazy = lazy2;
            this.diskCacheLazy = lazy3;
            this.eventListenerFactory = factory;
            this.componentRegistry = componentRegistry;
            this.logger = logger;
        }

        public static /* synthetic */ Options copy$default(Options options, Context context, ImageRequest.Defaults defaults, Lazy lazy, Lazy lazy2, Lazy lazy3, EventListener.Factory factory, ComponentRegistry componentRegistry, Logger logger, int i, Object obj) {
            if ((i & 1) != 0) {
                context = options.application;
            }
            if ((i & 2) != 0) {
                defaults = options.defaults;
            }
            if ((i & 4) != 0) {
                lazy = options.mainCoroutineContextLazy;
            }
            if ((i & 8) != 0) {
                lazy2 = options.memoryCacheLazy;
            }
            if ((i & 16) != 0) {
                lazy3 = options.diskCacheLazy;
            }
            if ((i & 32) != 0) {
                factory = options.eventListenerFactory;
            }
            if ((i & 64) != 0) {
                componentRegistry = options.componentRegistry;
            }
            if ((i & 128) != 0) {
                logger = options.logger;
            }
            ComponentRegistry componentRegistry2 = componentRegistry;
            Logger logger2 = logger;
            Lazy lazy4 = lazy3;
            EventListener.Factory factory2 = factory;
            return options.copy(context, defaults, lazy, lazy2, lazy4, factory2, componentRegistry2, logger2);
        }

        public final Context component1() {
            return this.application;
        }

        public final ImageRequest.Defaults component2() {
            return this.defaults;
        }

        public final Lazy component3() {
            return this.mainCoroutineContextLazy;
        }

        public final Lazy component4() {
            return this.memoryCacheLazy;
        }

        public final Lazy component5() {
            return this.diskCacheLazy;
        }

        public final EventListener.Factory component6() {
            return this.eventListenerFactory;
        }

        public final ComponentRegistry component7() {
            return this.componentRegistry;
        }

        public final Logger component8() {
            return this.logger;
        }

        public final Options copy(Context context, ImageRequest.Defaults defaults, Lazy lazy, Lazy lazy2, Lazy lazy3, EventListener.Factory factory, ComponentRegistry componentRegistry, Logger logger) {
            return new Options(context, defaults, lazy, lazy2, lazy3, factory, componentRegistry, logger);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Options)) {
                return false;
            }
            Options options = (Options) obj;
            return Intrinsics.areEqual(this.application, options.application) && Intrinsics.areEqual(this.defaults, options.defaults) && Intrinsics.areEqual(this.mainCoroutineContextLazy, options.mainCoroutineContextLazy) && Intrinsics.areEqual(this.memoryCacheLazy, options.memoryCacheLazy) && Intrinsics.areEqual(this.diskCacheLazy, options.diskCacheLazy) && Intrinsics.areEqual(this.eventListenerFactory, options.eventListenerFactory) && Intrinsics.areEqual(this.componentRegistry, options.componentRegistry) && Intrinsics.areEqual(this.logger, options.logger);
        }

        public final Context getApplication() {
            return this.application;
        }

        public final ComponentRegistry getComponentRegistry() {
            return this.componentRegistry;
        }

        public final ImageRequest.Defaults getDefaults() {
            return this.defaults;
        }

        public final Lazy getDiskCacheLazy() {
            return this.diskCacheLazy;
        }

        public final EventListener.Factory getEventListenerFactory() {
            return this.eventListenerFactory;
        }

        public final Logger getLogger() {
            return this.logger;
        }

        public final Lazy getMainCoroutineContextLazy() {
            return this.mainCoroutineContextLazy;
        }

        public final Lazy getMemoryCacheLazy() {
            return this.memoryCacheLazy;
        }

        public int hashCode() {
            int hashCode = (this.componentRegistry.hashCode() + ((this.eventListenerFactory.hashCode() + ((this.diskCacheLazy.hashCode() + ((this.memoryCacheLazy.hashCode() + ((this.mainCoroutineContextLazy.hashCode() + ((this.defaults.hashCode() + (this.application.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
            Logger logger = this.logger;
            return hashCode + (logger == null ? 0 : logger.hashCode());
        }

        public String toString() {
            return "Options(application=" + this.application + ", defaults=" + this.defaults + ", mainCoroutineContextLazy=" + this.mainCoroutineContextLazy + ", memoryCacheLazy=" + this.memoryCacheLazy + ", diskCacheLazy=" + this.diskCacheLazy + ", eventListenerFactory=" + this.eventListenerFactory + ", componentRegistry=" + this.componentRegistry + ", logger=" + this.logger + ")";
        }
    }

    public RealImageLoader(Options options) {
        CoroutineScope CoroutineScope;
        this.options = options;
        CoroutineScope = RealImageLoaderKt.CoroutineScope(options.getLogger());
        this.scope = CoroutineScope;
        SystemCallbacks SystemCallbacks = SystemCallbacksKt.SystemCallbacks(this);
        this.systemCallbacks = SystemCallbacks;
        RequestService RequestService = RequestService_androidKt.RequestService(this, SystemCallbacks, options.getLogger());
        this.requestService = RequestService;
        options.getMemoryCacheLazy();
        options.getDiskCacheLazy();
        this.components = RealImageLoaderKt.addCommonComponents(RealImageLoader_nonAppleKt.addAppleComponents(RealImageLoader_jvmCommonKt.addJvmComponents(RealImageLoader_androidKt.addAndroidComponents(RealImageLoaderKt.addServiceLoaderComponents(options.getComponentRegistry().newBuilder(), options), options), options), options)).add(new EngineInterceptor(this, SystemCallbacks, RequestService, options.getLogger())).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(10:0|1|(12:(2:3|(17:5|6|7|8|(1:(1:(1:(6:13|14|15|(1:17)(2:21|(1:23)(2:24|25))|18|19)(2:26|27))(11:28|29|30|31|32|33|34|35|36|(5:39|15|(0)(0)|18|19)|38))(3:57|58|59))(6:88|(1:90)(1:105)|91|92|93|(2:95|(3:97|(1:99)|38)(11:100|61|62|(1:82)(1:68)|69|(2:(1:72)(1:74)|73)|75|(1:77)|78|(8:80|31|32|33|34|35|36|(0))|38))(2:101|102))|60|61|62|(1:64)|82|69|(0)|75|(0)|78|(0)|38))|61|62|(0)|82|69|(0)|75|(0)|78|(0)|38)|107|6|7|8|(0)(0)|60|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0042, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x015a A[Catch: all -> 0x0042, TryCatch #1 {all -> 0x0042, blocks: (B:14:0x003d, B:15:0x0154, B:17:0x015a, B:21:0x0165, B:23:0x0169, B:24:0x0177, B:25:0x017c, B:29:0x005b), top: B:8:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0165 A[Catch: all -> 0x0042, TryCatch #1 {all -> 0x0042, blocks: (B:14:0x003d, B:15:0x0154, B:17:0x015a, B:21:0x0165, B:23:0x0169, B:24:0x0177, B:25:0x017c, B:29:0x005b), top: B:8:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x018f A[Catch: all -> 0x019e, TRY_LEAVE, TryCatch #6 {all -> 0x019e, blocks: (B:44:0x018b, B:46:0x018f, B:49:0x01a0, B:50:0x01a3), top: B:43:0x018b }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01a0 A[Catch: all -> 0x019e, TRY_ENTER, TryCatch #6 {all -> 0x019e, blocks: (B:44:0x018b, B:46:0x018f, B:49:0x01a0, B:50:0x01a3), top: B:43:0x018b }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00da A[Catch: all -> 0x00eb, TryCatch #3 {all -> 0x00eb, blocks: (B:62:0x00d4, B:64:0x00da, B:66:0x00e0, B:68:0x00e6, B:69:0x00f1, B:72:0x00f9, B:73:0x00ff, B:75:0x0102, B:77:0x010b, B:78:0x010e), top: B:61:0x00d4 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x010b A[Catch: all -> 0x00eb, TryCatch #3 {all -> 0x00eb, blocks: (B:62:0x00d4, B:64:0x00da, B:66:0x00e0, B:68:0x00e6, B:69:0x00f1, B:72:0x00f9, B:73:0x00ff, B:75:0x0102, B:77:0x010b, B:78:0x010e), top: B:61:0x00d4 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x007d  */
    /* JADX WARN: Type inference failed for: r13v0, types: [coil3.RealImageLoader] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v12, types: [coil3.EventListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v21, types: [coil3.EventListener] */
    /* JADX WARN: Type inference failed for: r3v3, types: [int] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v4, types: [coil3.EventListener] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [coil3.request.ImageRequest] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [coil3.request.RequestDelegate] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(coil3.request.ImageRequest r14, int r15, kotlin.coroutines.Continuation r16) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader.execute(coil3.request.ImageRequest, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final /* synthetic */ int getShutdown$volatile() {
        return this.shutdown$volatile;
    }

    private final void onCancel(ImageRequest imageRequest, EventListener eventListener) {
        Logger logger = this.options.getLogger();
        if (logger != null) {
            Logger.Level level = Logger.Level.Info;
            if (logger.getMinLevel().compareTo(level) <= 0) {
                logger.log("RealImageLoader", level, "🏗 Cancelled - " + imageRequest.getData(), null);
            }
        }
        eventListener.onCancel(imageRequest);
        ImageRequest.Listener listener = imageRequest.getListener();
        if (listener != null) {
            listener.onCancel(imageRequest);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0038, code lost:
    
        if (r8 != null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void onError(coil3.request.ErrorResult r7, coil3.target.Target r8, coil3.EventListener r9) {
        /*
            r6 = this;
            coil3.request.ImageRequest r0 = r7.getRequest()
            coil3.RealImageLoader$Options r6 = r6.options
            coil3.util.Logger r6 = r6.getLogger()
            if (r6 == 0) goto L34
            java.lang.Throwable r1 = r7.getThrowable()
            coil3.util.Logger$Level r2 = r6.getMinLevel()
            coil3.util.Logger$Level r3 = coil3.util.Logger.Level.Error
            int r2 = r2.compareTo(r3)
            if (r2 > 0) goto L34
            java.lang.Object r2 = r0.getData()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "🚨 Failed - "
            r4.<init>(r5)
            r4.append(r2)
            java.lang.String r2 = r4.toString()
            java.lang.String r4 = "RealImageLoader"
            r6.log(r4, r3, r2, r1)
        L34:
            boolean r6 = r8 instanceof coil3.transition.TransitionTarget
            if (r6 != 0) goto L3b
            if (r8 == 0) goto L67
            goto L4e
        L3b:
            coil3.request.ImageRequest r6 = r7.getRequest()
            coil3.transition.Transition$Factory r6 = coil3.request.ImageRequests_androidKt.getTransitionFactory(r6)
            r1 = r8
            coil3.transition.TransitionTarget r1 = (coil3.transition.TransitionTarget) r1
            coil3.transition.Transition r6 = r6.create(r1, r7)
            boolean r1 = r6 instanceof coil3.transition.NoneTransition
            if (r1 == 0) goto L56
        L4e:
            coil3.Image r6 = r7.getImage()
            r8.onError(r6)
            goto L67
        L56:
            coil3.request.ImageRequest r8 = r7.getRequest()
            r9.transitionStart(r8, r6)
            r6.transition()
            coil3.request.ImageRequest r8 = r7.getRequest()
            r9.transitionEnd(r8, r6)
        L67:
            r9.onError(r0, r7)
            coil3.request.ImageRequest$Listener r6 = r0.getListener()
            if (r6 == 0) goto L73
            r6.onError(r0, r7)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader.onError(coil3.request.ErrorResult, coil3.target.Target, coil3.EventListener):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x004e, code lost:
    
        if (r8 != null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void onSuccess(coil3.request.SuccessResult r7, coil3.target.Target r8, coil3.EventListener r9) {
        /*
            r6 = this;
            coil3.request.ImageRequest r0 = r7.getRequest()
            coil3.decode.DataSource r1 = r7.getDataSource()
            coil3.RealImageLoader$Options r6 = r6.options
            coil3.util.Logger r6 = r6.getLogger()
            if (r6 == 0) goto L4a
            coil3.util.Logger$Level r2 = coil3.util.Logger.Level.Info
            coil3.util.Logger$Level r3 = r6.getMinLevel()
            int r3 = r3.compareTo(r2)
            if (r3 > 0) goto L4a
            java.lang.String r3 = coil3.util.UtilsKt.getEmoji(r1)
            java.lang.String r1 = r1.name()
            java.lang.Object r4 = r0.getData()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r3)
            java.lang.String r3 = " Successful ("
            r5.append(r3)
            r5.append(r1)
            java.lang.String r1 = ") - "
            r5.append(r1)
            r5.append(r4)
            java.lang.String r1 = r5.toString()
            r3 = 0
            java.lang.String r4 = "RealImageLoader"
            r6.log(r4, r2, r1, r3)
        L4a:
            boolean r6 = r8 instanceof coil3.transition.TransitionTarget
            if (r6 != 0) goto L51
            if (r8 == 0) goto L7d
            goto L64
        L51:
            coil3.request.ImageRequest r6 = r7.getRequest()
            coil3.transition.Transition$Factory r6 = coil3.request.ImageRequests_androidKt.getTransitionFactory(r6)
            r1 = r8
            coil3.transition.TransitionTarget r1 = (coil3.transition.TransitionTarget) r1
            coil3.transition.Transition r6 = r6.create(r1, r7)
            boolean r1 = r6 instanceof coil3.transition.NoneTransition
            if (r1 == 0) goto L6c
        L64:
            coil3.Image r6 = r7.getImage()
            r8.onSuccess(r6)
            goto L7d
        L6c:
            coil3.request.ImageRequest r8 = r7.getRequest()
            r9.transitionStart(r8, r6)
            r6.transition()
            coil3.request.ImageRequest r8 = r7.getRequest()
            r9.transitionEnd(r8, r6)
        L7d:
            r9.onSuccess(r0, r7)
            coil3.request.ImageRequest$Listener r6 = r0.getListener()
            if (r6 == 0) goto L89
            r6.onSuccess(r0, r7)
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader.onSuccess(coil3.request.SuccessResult, coil3.target.Target, coil3.EventListener):void");
    }

    private final /* synthetic */ void setShutdown$volatile(int i) {
        this.shutdown$volatile = i;
    }

    @Override // coil3.ImageLoader
    public Disposable enqueue(ImageRequest imageRequest) {
        return RealImageLoader_androidKt.getDisposable(imageRequest, JobKt.async$default(this.scope, (CoroutineContext) this.options.getMainCoroutineContextLazy().getValue(), null, new RealImageLoader$enqueue$job$1(this, imageRequest, null), 2));
    }

    @Override // coil3.ImageLoader
    public ComponentRegistry getComponents() {
        return this.components;
    }

    @Override // coil3.ImageLoader
    public ImageRequest.Defaults getDefaults() {
        return this.options.getDefaults();
    }

    @Override // coil3.ImageLoader
    public DiskCache getDiskCache() {
        return (DiskCache) this.options.getDiskCacheLazy().getValue();
    }

    @Override // coil3.ImageLoader
    public MemoryCache getMemoryCache() {
        return (MemoryCache) this.options.getMemoryCacheLazy().getValue();
    }

    public final Options getOptions() {
        return this.options;
    }

    @Override // coil3.ImageLoader
    public ImageLoader.Builder newBuilder() {
        return new ImageLoader.Builder(this.options);
    }

    @Override // coil3.ImageLoader
    public void shutdown() {
        if (shutdown$volatile$FU.getAndSet(this, 1) == 1) {
            return;
        }
        JobKt.cancel(this.scope, (CancellationException) null);
        this.systemCallbacks.shutdown();
        MemoryCache memoryCache = getMemoryCache();
        if (memoryCache != null) {
            memoryCache.clear();
        }
    }

    @Override // coil3.ImageLoader
    public Object execute(ImageRequest imageRequest, Continuation continuation) {
        if (!RealImageLoader_androidKt.needsExecuteOnMainDispatcher(imageRequest)) {
            return execute(imageRequest, 1, continuation);
        }
        return JobKt.coroutineScope(new RealImageLoader$execute$2(this, imageRequest, null), continuation);
    }
}
