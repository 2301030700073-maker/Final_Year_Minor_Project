package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.compose.runtime.Latch;
import androidx.transition.Transition;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.cache.LruResourceCache;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.util.Util;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Glide implements ComponentCallbacks2 {
    public static volatile Glide glide;
    public static volatile boolean isInitializing;
    public final LruArrayPool arrayPool;
    public final BitmapPool bitmapPool;
    public final AsyncTimeout.Companion connectivityMonitorFactory;
    public final GlideContext glideContext;
    public final ArrayList managers = new ArrayList();
    public final LruResourceCache memoryCache;
    public final RequestManagerRetriever requestManagerRetriever;

    public Glide(Context context, Engine engine, LruResourceCache lruResourceCache, BitmapPool bitmapPool, LruArrayPool lruArrayPool, RequestManagerRetriever requestManagerRetriever, AsyncTimeout.Companion companion, int i, GlideBuilder$1 glideBuilder$1, ArrayMap arrayMap, List list, List list2, AppGlideModule appGlideModule, GlideExperiments glideExperiments) {
        this.bitmapPool = bitmapPool;
        this.arrayPool = lruArrayPool;
        this.memoryCache = lruResourceCache;
        this.requestManagerRetriever = requestManagerRetriever;
        this.connectivityMonitorFactory = companion;
        this.glideContext = new GlideContext(context, lruArrayPool, new Latch(this, list2, appGlideModule), new Transition.AnonymousClass1(), glideBuilder$1, arrayMap, list, engine, glideExperiments, i);
    }

    public static Glide get(Context context) {
        if (glide == null) {
            GeneratedAppGlideModule generatedAppGlideModule = null;
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) GeneratedAppGlideModuleImpl.class.getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
            } catch (IllegalAccessException e) {
                UriKt$$ExternalSyntheticBUOutline0.m("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e);
                return null;
            } catch (InstantiationException e2) {
                UriKt$$ExternalSyntheticBUOutline0.m("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e2);
                return null;
            } catch (NoSuchMethodException e3) {
                UriKt$$ExternalSyntheticBUOutline0.m("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e3);
                return null;
            } catch (InvocationTargetException e4) {
                UriKt$$ExternalSyntheticBUOutline0.m("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e4);
                return null;
            }
            synchronized (Glide.class) {
                if (glide == null) {
                    if (isInitializing) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    isInitializing = true;
                    try {
                        initializeGlide(context, generatedAppGlideModule);
                        isInitializing = false;
                    } catch (Throwable th) {
                        isInitializing = false;
                        throw th;
                    }
                }
            }
        }
        return glide;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0331  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void initializeGlide(android.content.Context r31, com.bumptech.glide.GeneratedAppGlideModule r32) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.Glide.initializeGlide(android.content.Context, com.bumptech.glide.GeneratedAppGlideModule):void");
    }

    public static RequestManager with(Context context) {
        Util.checkNotNull(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return get(context).requestManagerRetriever.get(context);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        Util.assertMainThread();
        this.memoryCache.trimToSize(0L);
        this.bitmapPool.clearMemory();
        this.arrayPool.clearMemory();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        Util.assertMainThread();
        synchronized (this.managers) {
            try {
                Iterator it = this.managers.iterator();
                while (it.hasNext()) {
                    ((RequestManager) it.next()).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.memoryCache.trimMemory(i);
        this.bitmapPool.trimMemory(i);
        this.arrayPool.trimMemory(i);
    }

    public final void unregisterRequestManager(RequestManager requestManager) {
        synchronized (this.managers) {
            try {
                if (!this.managers.contains(requestManager)) {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
                this.managers.remove(requestManager);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }
}
