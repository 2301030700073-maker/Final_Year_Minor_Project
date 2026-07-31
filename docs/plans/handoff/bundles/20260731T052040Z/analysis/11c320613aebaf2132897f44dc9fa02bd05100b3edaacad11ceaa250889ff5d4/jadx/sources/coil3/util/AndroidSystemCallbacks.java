package coil3.util;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.cardview.widget.CardView;
import androidx.collection.LongSparseArray;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HitPathTracker;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import coil3.Extras;
import coil3.ImageLoaders_androidKt;
import coil3.RealImageLoader;
import coil3.memory.RealMemoryCache;
import java.lang.ref.WeakReference;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidSystemCallbacks {
    public Object activityCallbacks;
    public Object application;
    public Object componentCallbacks;
    public Object imageLoader;
    public boolean shutdown;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ComponentCallbacks implements ComponentCallbacks2 {
        public ComponentCallbacks() {
        }

        @Override // android.content.ComponentCallbacks
        public final void onConfigurationChanged(Configuration configuration) {
            AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
            synchronized (androidSystemCallbacks) {
                if (((RealImageLoader) ((WeakReference) androidSystemCallbacks.imageLoader).get()) == null) {
                    androidSystemCallbacks.shutdown();
                }
            }
        }

        @Override // android.content.ComponentCallbacks
        public final void onLowMemory() {
            onTrimMemory(80);
        }

        @Override // android.content.ComponentCallbacks2
        public final void onTrimMemory(int i) {
            RealMemoryCache memoryCache;
            AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
            synchronized (androidSystemCallbacks) {
                try {
                    RealImageLoader realImageLoader = (RealImageLoader) ((WeakReference) androidSystemCallbacks.imageLoader).get();
                    if (realImageLoader != null) {
                        RealImageLoader.Options options = realImageLoader.options;
                        if (i >= 40) {
                            RealMemoryCache memoryCache2 = realImageLoader.getMemoryCache();
                            if (memoryCache2 != null) {
                                memoryCache2.clear();
                            }
                        } else if (i >= 20) {
                            ((ActivityCallbacks) androidSystemCallbacks.activityCallbacks).register(options.application);
                        } else if (i >= 10 && (memoryCache = realImageLoader.getMemoryCache()) != null) {
                            memoryCache.trimToSize(memoryCache.getSize() / 2);
                        }
                    } else {
                        androidSystemCallbacks.shutdown();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: process-BIzXfog, reason: not valid java name */
    public int m479processBIzXfog(CardView.AnonymousClass1 anonymousClass1, AndroidComposeView androidComposeView, boolean z) {
        Object[] objArr;
        int i;
        int i2;
        HitPathTracker hitPathTracker = (HitPathTracker) this.activityCallbacks;
        HitTestResult hitTestResult = (HitTestResult) this.application;
        if (this.shutdown) {
            return 0;
        }
        try {
            this.shutdown = true;
            CardView.AnonymousClass1 produce = ((PopupMenu$1) this.componentCallbacks).produce(anonymousClass1, androidComposeView);
            LongSparseArray longSparseArray = (LongSparseArray) produce.mCardBackground;
            int size = longSparseArray.size();
            for (int i3 = 0; i3 < size; i3++) {
                PointerInputChange pointerInputChange = (PointerInputChange) longSparseArray.valueAt(i3);
                if (!pointerInputChange.pressed && !pointerInputChange.previousPressed) {
                }
                objArr = false;
                break;
            }
            objArr = true;
            int size2 = longSparseArray.size();
            for (int i4 = 0; i4 < size2; i4++) {
                PointerInputChange pointerInputChange2 = (PointerInputChange) longSparseArray.valueAt(i4);
                if (objArr != false || AppKt.changedToDownIgnoreConsumed(pointerInputChange2)) {
                    ((LayoutNode) this.imageLoader).m319hitTest6fMxITs$ui(pointerInputChange2.position, (HitTestResult) this.application, pointerInputChange2.type, true);
                    if (!hitTestResult.values.isEmpty()) {
                        hitPathTracker.m288addHitPathQJqDSyo(pointerInputChange2.id, hitTestResult, AppKt.changedToDownIgnoreConsumed(pointerInputChange2));
                        hitTestResult.clear();
                    }
                }
            }
            boolean dispatchChanges = hitPathTracker.dispatchChanges(produce, z);
            int size3 = longSparseArray.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size3) {
                    i = 0;
                    break;
                }
                PointerInputChange pointerInputChange3 = (PointerInputChange) longSparseArray.valueAt(i5);
                if (!Offset.m196equalsimpl0(AppKt.positionChangeInternal(pointerInputChange3, true), 0L) && pointerInputChange3.isConsumed()) {
                    i = 1;
                    break;
                }
                i5++;
            }
            int size4 = longSparseArray.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size4) {
                    i2 = 0;
                    break;
                }
                if (((PointerInputChange) longSparseArray.valueAt(i6)).isConsumed()) {
                    i2 = 1;
                    break;
                }
                i6++;
            }
            int i7 = (dispatchChanges ? 1 : 0) | (i << 1) | (i2 << 2);
            this.shutdown = false;
            return i7;
        } catch (Throwable th) {
            this.shutdown = false;
            throw th;
        }
    }

    public synchronized void shutdown() {
        try {
            if (this.shutdown) {
                return;
            }
            this.shutdown = true;
            Context context = (Context) this.application;
            if (context != null) {
                ((ActivityCallbacks) this.activityCallbacks).unregister(context);
                context.unregisterComponentCallbacks((ComponentCallbacks) this.componentCallbacks);
            }
            ((WeakReference) this.imageLoader).clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public void update(int i, int i2) {
        if (i < 0.0f) {
            InlineClassHelperKt.throwIllegalArgumentException("Index should be non-negative (" + i + ')');
        }
        ((ParcelableSnapshotMutableIntState) this.imageLoader).setIntValue(i);
        ((LazyLayoutNearestRangeState) this.application).update(i);
        ((ParcelableSnapshotMutableIntState) this.activityCallbacks).setIntValue(i2);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ActivityCallbacks implements Application.ActivityLifecycleCallbacks {
        public final double backgroundMaxSizePercent;

        public ActivityCallbacks(RealImageLoader realImageLoader) {
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
            AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
            RealImageLoader realImageLoader = (RealImageLoader) ((WeakReference) androidSystemCallbacks.imageLoader).get();
            if (realImageLoader == null) {
                androidSystemCallbacks.shutdown();
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
            AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
            RealImageLoader realImageLoader = (RealImageLoader) ((WeakReference) androidSystemCallbacks.imageLoader).get();
            if (realImageLoader == null) {
                androidSystemCallbacks.shutdown();
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
        public final /* synthetic */ void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final /* synthetic */ void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final /* synthetic */ void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final /* synthetic */ void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final /* synthetic */ void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final /* synthetic */ void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }
    }
}
