package coil3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import coil3.ComponentRegistry;
import coil3.Extras;
import coil3.decode.BitmapFactoryDecoder;
import coil3.decode.ExifOrientationStrategy$$ExternalSyntheticLambda0;
import coil3.decode.StaticImageDecoder;
import coil3.fetch.BitmapFetcher;
import coil3.intercept.EngineInterceptor;
import coil3.key.UriKeyer;
import coil3.map.FileMapper;
import coil3.memory.RealMemoryCache;
import coil3.request.Disposable;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.SuccessResult;
import coil3.target.ImageViewTarget;
import coil3.target.Target;
import coil3.transition.NoneTransition;
import coil3.transition.Transition;
import coil3.util.AndroidSystemCallbacks;
import coil3.util.AndroidSystemCallbacks.ActivityCallbacks;
import coil3.util.AndroidSystemCallbacks.ComponentCallbacks;
import coil3.util.UtilsKt;
import com.grack.nanojson.JsonBuilder;
import java.io.File;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.sync.SemaphoreImpl;
import kotlinx.coroutines.sync.SemaphoreKt;
import net.newpipe.app.AppKt;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RealImageLoader implements ImageLoader {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ComponentRegistry components;
    public final Options options;
    public final JsonBuilder requestService;
    public final ContextScope scope;
    public volatile /* synthetic */ int shutdown$volatile;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    public RealImageLoader(Options options) {
        this.options = options;
        int i = 0;
        this.scope = JobKt.CoroutineScope(AppKt.plus(JobKt.SupervisorJob$default(), new RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, i)));
        AndroidSystemCallbacks androidSystemCallbacks = new AndroidSystemCallbacks();
        androidSystemCallbacks.imageLoader = new WeakReference(this);
        androidSystemCallbacks.activityCallbacks = androidSystemCallbacks.new ActivityCallbacks(this);
        androidSystemCallbacks.componentCallbacks = androidSystemCallbacks.new ComponentCallbacks();
        JsonBuilder jsonBuilder = new JsonBuilder(this);
        this.requestService = jsonBuilder;
        ComponentRegistry.Builder builder = new ComponentRegistry.Builder(options.componentRegistry);
        ArrayList arrayList = (ArrayList) builder.interceptors;
        ArrayList arrayList2 = (ArrayList) builder.lazyFetcherFactories;
        ArrayList arrayList3 = (ArrayList) builder.keyers;
        ArrayList arrayList4 = (ArrayList) builder.lazyDecoderFactories;
        ImageRequest.Defaults defaults = options.defaults;
        Object obj = defaults.extras.data.get(UriKt.serviceLoaderEnabledKey);
        int i2 = 3;
        if (((Boolean) (obj == null ? Boolean.TRUE : obj)).booleanValue()) {
            arrayList2.add(new RealImageLoaderKt$$ExternalSyntheticLambda0(i));
            arrayList4.add(new RealImageLoaderKt$$ExternalSyntheticLambda0(i2));
        }
        int i3 = 1;
        builder.add(new FileMapper(i3), Reflection.getOrCreateKotlinClass(android.net.Uri.class));
        builder.add(new FileMapper(i2), Reflection.getOrCreateKotlinClass(Integer.class));
        arrayList3.add(new Pair(new UriKeyer(1), Reflection.getOrCreateKotlinClass(Uri.class)));
        builder.add(new BitmapFetcher.Factory(i3), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new BitmapFetcher.Factory(4), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new BitmapFetcher.Factory(9), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new BitmapFetcher.Factory(6), Reflection.getOrCreateKotlinClass(Drawable.class));
        Extras.Key key = ImageLoaders_androidKt.bitmapFactoryMaxParallelismKey;
        Object obj2 = defaults.extras.data.get(ImageLoaders_androidKt.bitmapFactoryMaxParallelismKey);
        int intValue = ((Number) (obj2 == null ? 4 : obj2)).intValue();
        int i4 = SemaphoreKt.MAX_SPIN_CYCLES;
        SemaphoreImpl semaphoreImpl = new SemaphoreImpl(intValue);
        int i5 = Build.VERSION.SDK_INT;
        Object obj3 = ExifOrientationStrategy$$ExternalSyntheticLambda0.RESPECT_PERFORMANCE;
        if (i5 >= 29) {
            Object obj4 = defaults.extras.data.get(ImageLoaders_androidKt.imageDecoderEnabledKey);
            if (((Boolean) (obj4 == null ? Boolean.TRUE : obj4)).booleanValue()) {
                Object obj5 = defaults.extras.data.get(ImageLoaders_androidKt.bitmapFactoryExifOrientationStrategyKey);
                if (((ExifOrientationStrategy$$ExternalSyntheticLambda0) (obj5 == null ? obj3 : obj5)).equals(obj3)) {
                    arrayList4.add(new ComponentRegistry$Builder$$ExternalSyntheticLambda2(new StaticImageDecoder.Factory(semaphoreImpl), i3));
                }
            }
        }
        Object obj6 = defaults.extras.data.get(ImageLoaders_androidKt.bitmapFactoryExifOrientationStrategyKey);
        arrayList4.add(new ComponentRegistry$Builder$$ExternalSyntheticLambda2(new BitmapFactoryDecoder.Factory(semaphoreImpl, (ExifOrientationStrategy$$ExternalSyntheticLambda0) (obj6 != null ? obj6 : obj3)), i3));
        builder.add(new FileMapper(i), Reflection.getOrCreateKotlinClass(File.class));
        builder.add(new BitmapFetcher.Factory(8), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new BitmapFetcher.Factory(3), Reflection.getOrCreateKotlinClass(ByteBuffer.class));
        builder.add(new FileMapper(4), Reflection.getOrCreateKotlinClass(String.class));
        int i6 = 2;
        builder.add(new FileMapper(i6), Reflection.getOrCreateKotlinClass(Path.class));
        arrayList3.add(new Pair(new UriKeyer(2), Reflection.getOrCreateKotlinClass(Uri.class)));
        arrayList3.add(new Pair(new UriKeyer(0), Reflection.getOrCreateKotlinClass(Uri.class)));
        builder.add(new BitmapFetcher.Factory(7), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new BitmapFetcher.Factory(i6), Reflection.getOrCreateKotlinClass(byte[].class));
        builder.add(new BitmapFetcher.Factory(5), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new BitmapFetcher.Factory(i), Reflection.getOrCreateKotlinClass(Bitmap.class));
        arrayList.add(new EngineInterceptor(this, androidSystemCallbacks, jsonBuilder));
        this.components = new ComponentRegistry(UtilsKt.toImmutableList(arrayList), UtilsKt.toImmutableList((ArrayList) builder.mappers), UtilsKt.toImmutableList(arrayList3), UtilsKt.toImmutableList(arrayList2), UtilsKt.toImmutableList(arrayList4));
    }

    public final Disposable enqueue(ImageRequest imageRequest) {
        return UriKt.getDisposable(imageRequest, JobKt.async$default(this.scope, (CoroutineContext) this.options.mainCoroutineContextLazy.getValue(), new RealImageLoader$enqueue$job$1(this, imageRequest, null), 2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x01c8, code lost:
    
        if (r1.awaitStarted(r9) == r14) goto L132;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0248 A[Catch: all -> 0x0058, TryCatch #3 {all -> 0x0058, blocks: (B:14:0x0053, B:15:0x0242, B:17:0x0248, B:21:0x0251, B:23:0x0255, B:24:0x0261, B:25:0x0266, B:62:0x009d, B:63:0x01d1, B:65:0x01d8, B:67:0x01e2, B:68:0x01ec, B:69:0x01ef), top: B:8:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0251 A[Catch: all -> 0x0058, TryCatch #3 {all -> 0x0058, blocks: (B:14:0x0053, B:15:0x0242, B:17:0x0248, B:21:0x0251, B:23:0x0255, B:24:0x0261, B:25:0x0266, B:62:0x009d, B:63:0x01d1, B:65:0x01d8, B:67:0x01e2, B:68:0x01ec, B:69:0x01ef), top: B:8:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x027b A[Catch: all -> 0x0288, TRY_LEAVE, TryCatch #2 {all -> 0x0288, blocks: (B:45:0x0277, B:47:0x027b, B:50:0x028a, B:51:0x0290), top: B:44:0x0277 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x028a A[Catch: all -> 0x0288, TRY_ENTER, TryCatch #2 {all -> 0x0288, blocks: (B:45:0x0277, B:47:0x027b, B:50:0x028a, B:51:0x0290), top: B:44:0x0277 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01d8 A[Catch: all -> 0x0058, TryCatch #3 {all -> 0x0058, blocks: (B:14:0x0053, B:15:0x0242, B:17:0x0248, B:21:0x0251, B:23:0x0255, B:24:0x0261, B:25:0x0266, B:62:0x009d, B:63:0x01d1, B:65:0x01d8, B:67:0x01e2, B:68:0x01ec, B:69:0x01ef), top: B:8:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00a2  */
    /* JADX WARN: Type inference failed for: r17v0, types: [coil3.RealImageLoader] */
    /* JADX WARN: Type inference failed for: r3v19, types: [coil3.EventListener$Companion$NONE$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v3, types: [int] */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v4, types: [coil3.EventListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v25, types: [int] */
    /* JADX WARN: Type inference failed for: r4v26, types: [int] */
    /* JADX WARN: Type inference failed for: r5v0, types: [coil3.request.ImageRequest] */
    /* JADX WARN: Type inference failed for: r5v1, types: [coil3.request.RequestDelegate] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(coil3.request.ImageRequest r18, int r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instructions count: 661
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader.execute(coil3.request.ImageRequest, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final RealMemoryCache getMemoryCache() {
        return (RealMemoryCache) this.options.memoryCacheLazy.getValue();
    }

    public final void onError(ErrorResult errorResult, Target target, EventListener eventListener) {
        ImageRequest imageRequest = errorResult.request;
        Image image = errorResult.image;
        if (target instanceof ImageViewTarget) {
            Transition create = ((Transition.Factory) UriKt.getExtra(imageRequest, ImageRequests_androidKt.transitionFactoryKey)).create((ImageViewTarget) target, errorResult);
            if (create instanceof NoneTransition) {
                ((ImageViewTarget) target).updateImage(image);
            } else {
                eventListener.getClass();
                create.transition();
            }
        } else if (target != null) {
            target.onError(image);
        }
        eventListener.getClass();
        imageRequest.getClass();
    }

    public final void onSuccess(SuccessResult successResult, Target target, EventListener eventListener) {
        ImageRequest imageRequest = successResult.request;
        Image image = successResult.image;
        if (target instanceof ImageViewTarget) {
            Transition create = ((Transition.Factory) UriKt.getExtra(imageRequest, ImageRequests_androidKt.transitionFactoryKey)).create((ImageViewTarget) target, successResult);
            if (create instanceof NoneTransition) {
                ((ImageViewTarget) target).updateImage(image);
            } else {
                eventListener.getClass();
                create.transition();
            }
        } else if (target != null) {
            target.onSuccess(image);
        }
        eventListener.getClass();
        imageRequest.getClass();
    }
}
