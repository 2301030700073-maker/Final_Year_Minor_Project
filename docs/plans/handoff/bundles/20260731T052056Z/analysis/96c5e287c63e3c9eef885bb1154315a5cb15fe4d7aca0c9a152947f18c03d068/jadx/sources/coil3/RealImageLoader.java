package coil3;

import android.content.Context;
import androidx.lifecycle.LifecycleRegistry;
import androidx.work.OperationKt;
import coil3.memory.RealMemoryCache;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.size.RealViewSizeResolver;
import coil3.svg.internal.AndroidSvg;
import coil3.target.ImageViewTarget;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.SynchronizedLazyImpl;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ContextScope;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealImageLoader {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ComponentRegistry components;
    public final Options options;
    public final AndroidSvg requestService;
    public final ContextScope scope = AwaitKt.CoroutineScope(OperationKt.plus(AwaitKt.SupervisorJob$default(), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 2)));
    public volatile /* synthetic */ int shutdown$volatile;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Options {
        public final Context application;
        public final ComponentRegistry componentRegistry;
        public final ImageRequest.Defaults defaults;
        public final SynchronizedLazyImpl diskCacheLazy;
        public final SynchronizedLazyImpl mainCoroutineContextLazy;
        public final SynchronizedLazyImpl memoryCacheLazy;

        public Options(Context context, ImageRequest.Defaults defaults, SynchronizedLazyImpl synchronizedLazyImpl, SynchronizedLazyImpl synchronizedLazyImpl2, SynchronizedLazyImpl synchronizedLazyImpl3, ComponentRegistry componentRegistry) {
            this.application = context;
            this.defaults = defaults;
            this.mainCoroutineContextLazy = synchronizedLazyImpl;
            this.memoryCacheLazy = synchronizedLazyImpl2;
            this.diskCacheLazy = synchronizedLazyImpl3;
            this.componentRegistry = componentRegistry;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Options) {
                Options options = (Options) obj;
                return Intrinsics.areEqual(this.application, options.application) && this.defaults.equals(options.defaults) && this.mainCoroutineContextLazy == options.mainCoroutineContextLazy && this.memoryCacheLazy == options.memoryCacheLazy && this.diskCacheLazy == options.diskCacheLazy && this.componentRegistry == options.componentRegistry;
            }
            return false;
        }

        public final int hashCode() {
            return (this.componentRegistry.hashCode() + ((EventListener$Factory$$ExternalSyntheticLambda0.NONE.hashCode() + ((this.diskCacheLazy.hashCode() + ((this.memoryCacheLazy.hashCode() + ((this.mainCoroutineContextLazy.hashCode() + ((this.defaults.hashCode() + (this.application.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        }

        public final String toString() {
            return "Options(application=" + this.application + ", defaults=" + this.defaults + ", mainCoroutineContextLazy=" + this.mainCoroutineContextLazy + ", memoryCacheLazy=" + this.memoryCacheLazy + ", diskCacheLazy=" + this.diskCacheLazy + ", eventListenerFactory=" + EventListener$Factory$$ExternalSyntheticLambda0.NONE + ", componentRegistry=" + this.componentRegistry + ", logger=null)";
        }
    }

    static {
        AtomicIntegerFieldUpdater.newUpdater(RealImageLoader.class, "shutdown$volatile");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00a1 A[LOOP:0: B:10:0x009b->B:12:0x00a1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00cb A[LOOP:1: B:15:0x00c5->B:17:0x00cb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RealImageLoader(coil3.RealImageLoader.Options r19) {
        /*
            Method dump skipped, instructions count: 709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader.<init>(coil3.RealImageLoader$Options):void");
    }

    public final void enqueue(ImageRequest imageRequest) {
        UriKt.getDisposable(imageRequest, AwaitKt.async$default(this.scope, (CoroutineContext) this.options.mainCoroutineContextLazy.getValue(), new RealImageLoader$enqueue$job$1(this, imageRequest, null, 0), 2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x0189, code lost:
    
        if (r3.awaitStarted(r9) == r10) goto L129;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01fd A[Catch: all -> 0x003d, TryCatch #4 {all -> 0x003d, blocks: (B:14:0x0038, B:15:0x01f7, B:17:0x01fd, B:21:0x0218, B:22:0x021b, B:24:0x0222, B:28:0x020d, B:29:0x0226, B:31:0x022a, B:32:0x0236, B:33:0x023b, B:63:0x0063, B:64:0x019c, B:66:0x01a3, B:68:0x01ad, B:69:0x01b7, B:70:0x01ba), top: B:8:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0222 A[Catch: all -> 0x003d, TryCatch #4 {all -> 0x003d, blocks: (B:14:0x0038, B:15:0x01f7, B:17:0x01fd, B:21:0x0218, B:22:0x021b, B:24:0x0222, B:28:0x020d, B:29:0x0226, B:31:0x022a, B:32:0x0236, B:33:0x023b, B:63:0x0063, B:64:0x019c, B:66:0x01a3, B:68:0x01ad, B:69:0x01b7, B:70:0x01ba), top: B:8:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0226 A[Catch: all -> 0x003d, TryCatch #4 {all -> 0x003d, blocks: (B:14:0x0038, B:15:0x01f7, B:17:0x01fd, B:21:0x0218, B:22:0x021b, B:24:0x0222, B:28:0x020d, B:29:0x0226, B:31:0x022a, B:32:0x0236, B:33:0x023b, B:63:0x0063, B:64:0x019c, B:66:0x01a3, B:68:0x01ad, B:69:0x01b7, B:70:0x01ba), top: B:8:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x024d A[Catch: all -> 0x025a, TRY_LEAVE, TryCatch #1 {all -> 0x025a, blocks: (B:49:0x0249, B:51:0x024d, B:54:0x025c, B:55:0x0261), top: B:48:0x0249 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x025c A[Catch: all -> 0x025a, TRY_ENTER, TryCatch #1 {all -> 0x025a, blocks: (B:49:0x0249, B:51:0x024d, B:54:0x025c, B:55:0x0261), top: B:48:0x0249 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01a3 A[Catch: all -> 0x003d, TryCatch #4 {all -> 0x003d, blocks: (B:14:0x0038, B:15:0x01f7, B:17:0x01fd, B:21:0x0218, B:22:0x021b, B:24:0x0222, B:28:0x020d, B:29:0x0226, B:31:0x022a, B:32:0x0236, B:33:0x023b, B:63:0x0063, B:64:0x019c, B:66:0x01a3, B:68:0x01ad, B:69:0x01b7, B:70:0x01ba), top: B:8:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0068  */
    /* JADX WARN: Type inference failed for: r17v0, types: [coil3.RealImageLoader, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v4, types: [coil3.EventListener$Companion$NONE$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v20, types: [int] */
    /* JADX WARN: Type inference failed for: r3v21, types: [int] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v2, types: [coil3.request.RequestDelegate] */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(coil3.request.ImageRequest r18, int r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader.execute(coil3.request.ImageRequest, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final RealMemoryCache getMemoryCache() {
        return (RealMemoryCache) this.options.memoryCacheLazy.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0008, code lost:
    
        if (r4 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onError(coil3.request.ErrorResult r3, coil3.target.Target r4, coil3.EventListener$Companion$NONE$1 r5) {
        /*
            r2 = this;
            coil3.request.ImageRequest r2 = r3.request
            coil3.Image r0 = r3.image
            boolean r1 = r4 instanceof coil3.target.ImageViewTarget
            if (r1 != 0) goto Lb
            if (r4 == 0) goto L19
            goto L16
        Lb:
            coil3.Extras$Key r1 = coil3.request.ImageRequests_androidKt.transitionFactoryKey
            java.lang.Object r1 = coil3.UriKt.getExtra(r2, r1)
            coil3.transition.NoneTransition$Factory r1 = (coil3.transition.NoneTransition$Factory) r1
            r1.getClass()
        L16:
            r4.onError(r0)
        L19:
            r5.getClass()
            coil3.request.ImageRequest$Listener r4 = r2.listener
            if (r4 == 0) goto L23
            r4.onError(r2, r3)
        L23:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader.onError(coil3.request.ErrorResult, coil3.target.Target, coil3.EventListener$Companion$NONE$1):void");
    }

    public final Object execute(ImageRequest imageRequest, ContinuationImpl continuationImpl) {
        if (!(imageRequest.target instanceof ImageViewTarget) && !(imageRequest.sizeResolver instanceof RealViewSizeResolver) && ((LifecycleRegistry) UriKt.getExtra(imageRequest, ImageRequests_androidKt.lifecycleKey)) == null) {
            return execute(imageRequest, 1, continuationImpl);
        }
        return AwaitKt.coroutineScope(new RealImageLoader$execute$2(this, imageRequest, null, 0), continuationImpl);
    }
}
