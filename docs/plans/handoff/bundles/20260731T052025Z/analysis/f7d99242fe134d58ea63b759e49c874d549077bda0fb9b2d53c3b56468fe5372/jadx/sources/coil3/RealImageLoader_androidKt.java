package coil3;

import android.graphics.drawable.Drawable;
import android.os.Build;
import coil3.ComponentRegistry;
import coil3.RealImageLoader;
import coil3.decode.BitmapFactoryDecoder;
import coil3.decode.ExifOrientationStrategy;
import coil3.decode.StaticImageDecoder;
import coil3.fetch.AssetUriFetcher;
import coil3.fetch.ContentUriFetcher;
import coil3.fetch.DrawableFetcher;
import coil3.fetch.ResourceUriFetcher;
import coil3.key.AndroidResourceUriKeyer;
import coil3.map.AndroidUriMapper;
import coil3.map.ResourceIntMapper;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.ImageResult;
import coil3.request.OneShotDisposable;
import coil3.request.ViewTargetRequestManagerKt;
import coil3.size.ViewSizeResolver;
import coil3.target.Target;
import coil3.target.ViewTarget;
import coil3.transition.NoneTransition;
import coil3.transition.Transition;
import coil3.transition.TransitionTarget;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.SemaphoreImpl;
import kotlinx.coroutines.sync.SemaphoreKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealImageLoader_androidKt {
    public static final ComponentRegistry.Builder addAndroidComponents(ComponentRegistry.Builder builder, RealImageLoader.Options options) {
        builder.add(new AndroidUriMapper(), Reflection.getOrCreateKotlinClass(android.net.Uri.class));
        builder.add(new ResourceIntMapper(), Reflection.getOrCreateKotlinClass(Integer.class));
        builder.add(new AndroidResourceUriKeyer(), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new AssetUriFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new ContentUriFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new ResourceUriFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new DrawableFetcher.Factory(), Reflection.getOrCreateKotlinClass(Drawable.class));
        int bitmapFactoryMaxParallelism = ImageLoaders_androidKt.getBitmapFactoryMaxParallelism(options);
        int i = SemaphoreKt.MAX_SPIN_CYCLES;
        SemaphoreImpl semaphoreImpl = new SemaphoreImpl(bitmapFactoryMaxParallelism);
        if (enableStaticImageDecoder(options)) {
            builder.add(new StaticImageDecoder.Factory(semaphoreImpl));
        }
        builder.add(new BitmapFactoryDecoder.Factory(semaphoreImpl, ImageLoaders_androidKt.getBitmapFactoryExifOrientationStrategy(options)));
        return builder;
    }

    private static final boolean enableStaticImageDecoder(RealImageLoader.Options options) {
        return Build.VERSION.SDK_INT >= 29 && ImageLoaders_androidKt.getImageDecoderEnabled(options) && Intrinsics.areEqual(ImageLoaders_androidKt.getBitmapFactoryExifOrientationStrategy(options), ExifOrientationStrategy.RESPECT_PERFORMANCE);
    }

    public static final Disposable getDisposable(ImageRequest imageRequest, Deferred deferred) {
        return imageRequest.getTarget() instanceof ViewTarget ? ViewTargetRequestManagerKt.getRequestManager(((ViewTarget) imageRequest.getTarget()).getView()).getDisposable(deferred) : new OneShotDisposable(deferred);
    }

    public static final boolean needsExecuteOnMainDispatcher(ImageRequest imageRequest) {
        return (imageRequest.getTarget() instanceof ViewTarget) || (imageRequest.getSizeResolver() instanceof ViewSizeResolver) || ImageRequests_androidKt.getLifecycle(imageRequest) != null;
    }

    public static final void transition(ImageResult imageResult, Target target, EventListener eventListener, Function0 function0) {
        if (!(target instanceof TransitionTarget)) {
            function0.invoke();
            return;
        }
        Transition create = ImageRequests_androidKt.getTransitionFactory(imageResult.getRequest()).create((TransitionTarget) target, imageResult);
        if (create instanceof NoneTransition) {
            function0.invoke();
            return;
        }
        eventListener.transitionStart(imageResult.getRequest(), create);
        create.transition();
        eventListener.transitionEnd(imageResult.getRequest(), create);
    }
}
