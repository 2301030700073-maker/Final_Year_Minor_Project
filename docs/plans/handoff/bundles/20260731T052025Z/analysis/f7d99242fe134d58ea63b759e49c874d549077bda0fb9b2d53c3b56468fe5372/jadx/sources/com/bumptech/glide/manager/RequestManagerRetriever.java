package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.appcompat.app.AppCompatActivity;
import androidx.collection.internal.Lock;
import androidx.lifecycle.LifecycleRegistry;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder$1;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;
import com.bumptech.glide.util.Util;
import com.jcraft.jzlib.Adler32;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.HashMap;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RequestManagerRetriever implements Handler.Callback {
    public static final GlideBuilder$1 DEFAULT_FACTORY = new GlideBuilder$1();
    public volatile RequestManager applicationManager;
    public final RequestManagerFactory factory;
    public final FrameWaiter frameWaiter;
    public final Base64Util lifecycleRequestManagerRetriever;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface RequestManagerFactory {
        RequestManager build(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context);
    }

    public RequestManagerRetriever(RequestManagerFactory requestManagerFactory) {
        requestManagerFactory = requestManagerFactory == null ? DEFAULT_FACTORY : requestManagerFactory;
        this.factory = requestManagerFactory;
        this.lifecycleRequestManagerRetriever = new Base64Util(requestManagerFactory);
        this.frameWaiter = (HardwareConfigState.HARDWARE_BITMAPS_SUPPORTED && HardwareConfigState.BLOCK_HARDWARE_BITMAPS_WHEN_GL_CONTEXT_MIGHT_NOT_BE_INITIALIZED) ? new FirstFrameWaiter() : new Adler32(16);
    }

    public static Activity findActivity(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return findActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public final RequestManager get(AppCompatActivity appCompatActivity) {
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return get(appCompatActivity.getApplicationContext());
        }
        if (appCompatActivity.isDestroyed()) {
            UriKt$$ExternalSyntheticBUOutline0.m("You cannot start a load for a destroyed activity");
            return null;
        }
        this.frameWaiter.registerSelf(appCompatActivity);
        Activity findActivity = findActivity(appCompatActivity);
        boolean z = findActivity == null || !findActivity.isFinishing();
        Glide glide = Glide.get(appCompatActivity.getApplicationContext());
        final LifecycleRegistry lifecycleRegistry = appCompatActivity.lifecycleRegistry;
        appCompatActivity.getSupportFragmentManager();
        final Base64Util base64Util = this.lifecycleRequestManagerRetriever;
        base64Util.getClass();
        HashMap hashMap = (HashMap) base64Util.alphabet;
        Util.assertMainThread();
        Util.assertMainThread();
        RequestManager requestManager = (RequestManager) hashMap.get(lifecycleRegistry);
        if (requestManager != null) {
            return requestManager;
        }
        LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(lifecycleRegistry);
        RequestManager build = ((RequestManagerFactory) base64Util.inverseAlphabet).build(glide, lifecycleLifecycle, new VerboseLogger(), appCompatActivity);
        hashMap.put(lifecycleRegistry, build);
        lifecycleLifecycle.addListener(new LifecycleListener() { // from class: com.bumptech.glide.manager.LifecycleRequestManagerRetriever$1
            @Override // com.bumptech.glide.manager.LifecycleListener
            public final void onDestroy() {
                ((HashMap) Base64Util.this.alphabet).remove(lifecycleRegistry);
            }

            @Override // com.bumptech.glide.manager.LifecycleListener
            public final void onStart() {
            }

            @Override // com.bumptech.glide.manager.LifecycleListener
            public final void onStop() {
            }
        });
        if (z) {
            build.onStart();
        }
        return build;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }

    public final RequestManager get(Context context) {
        if (context != null) {
            if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
                if (context instanceof AppCompatActivity) {
                    return get((AppCompatActivity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return get(contextWrapper.getBaseContext());
                    }
                }
            }
            if (this.applicationManager == null) {
                synchronized (this) {
                    try {
                        if (this.applicationManager == null) {
                            this.applicationManager = this.factory.build(Glide.get(context.getApplicationContext()), new Lock(), new Path.Companion(), context.getApplicationContext());
                        }
                    } finally {
                    }
                }
            }
            return this.applicationManager;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("You cannot start a load on a null Context");
        return null;
    }
}
