package coil3.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import coil3.Extras;
import coil3.ImageLoaders_androidKt;
import coil3.RealImageLoader;
import coil3.memory.RealMemoryCache;
import java.lang.ref.WeakReference;
import okhttp3.Cache;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidSystemCallbacks$ActivityCallbacks implements Application.ActivityLifecycleCallbacks {
    public final double backgroundMaxSizePercent;
    public final /* synthetic */ Cache.RealCacheRequest this$0;

    public AndroidSystemCallbacks$ActivityCallbacks(Cache.RealCacheRequest realCacheRequest, RealImageLoader realImageLoader) {
        this.this$0 = realCacheRequest;
        RealImageLoader.Options options = realImageLoader.options;
        Extras.Key key = ImageLoaders_androidKt.bitmapFactoryMaxParallelismKey;
        Object obj = options.defaults.extras.data.get(ImageLoaders_androidKt.memoryCacheMaxSizePercentWhileInBackgroundKey);
        this.backgroundMaxSizePercent = ((Number) (obj == null ? Double.valueOf(1.0d) : obj)).doubleValue();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        unregister(activity);
    }

    public final void register(Context context) {
        long j;
        double d = this.backgroundMaxSizePercent;
        if (d == 1.0d) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
        Cache.RealCacheRequest realCacheRequest = this.this$0;
        RealImageLoader realImageLoader = (RealImageLoader) ((WeakReference) realCacheRequest.editor).get();
        if (realImageLoader == null) {
            realCacheRequest.shutdown();
            return;
        }
        RealMemoryCache memoryCache = realImageLoader.getMemoryCache();
        if (memoryCache != null) {
            synchronized (memoryCache.lock) {
                j = memoryCache.strongMemoryCache.initialMaxSize;
            }
            memoryCache.setMaxSize((long) (d * j));
        }
    }

    public final void unregister(Context context) {
        long j;
        if (this.backgroundMaxSizePercent == 1.0d) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this);
        Cache.RealCacheRequest realCacheRequest = this.this$0;
        RealImageLoader realImageLoader = (RealImageLoader) ((WeakReference) realCacheRequest.editor).get();
        if (realImageLoader == null) {
            realCacheRequest.shutdown();
            return;
        }
        RealMemoryCache memoryCache = realImageLoader.getMemoryCache();
        if (memoryCache != null) {
            synchronized (memoryCache.lock) {
                j = memoryCache.strongMemoryCache.initialMaxSize;
            }
            memoryCache.setMaxSize(j);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
