package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.collection.ArrayMap;
import androidx.compose.runtime.Latch;
import androidx.transition.Transition;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.transition.NoTransition;
import com.bumptech.glide.util.GlideSuppliers$1;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GlideContext extends ContextWrapper {
    public static final GenericTransitionOptions DEFAULT_TRANSITION_OPTIONS;
    public final LruArrayPool arrayPool;
    public final List defaultRequestListeners;
    public RequestOptions defaultRequestOptions;
    public final GlideBuilder$1 defaultRequestOptionsFactory;
    public final ArrayMap defaultTransitionOptions;
    public final Engine engine;
    public final GlideExperiments experiments;
    public final Transition.AnonymousClass1 imageViewTargetFactory;
    public final int logLevel;
    public final GlideSuppliers$1 registry;

    static {
        GenericTransitionOptions genericTransitionOptions = new GenericTransitionOptions();
        genericTransitionOptions.transitionFactory = NoTransition.NO_ANIMATION_FACTORY;
        DEFAULT_TRANSITION_OPTIONS = genericTransitionOptions;
    }

    public GlideContext(Context context, LruArrayPool lruArrayPool, Latch latch, Transition.AnonymousClass1 anonymousClass1, GlideBuilder$1 glideBuilder$1, ArrayMap arrayMap, List list, Engine engine, GlideExperiments glideExperiments, int i) {
        super(context.getApplicationContext());
        this.arrayPool = lruArrayPool;
        this.imageViewTargetFactory = anonymousClass1;
        this.defaultRequestOptionsFactory = glideBuilder$1;
        this.defaultRequestListeners = list;
        this.defaultTransitionOptions = arrayMap;
        this.engine = engine;
        this.experiments = glideExperiments;
        this.logLevel = i;
        this.registry = new GlideSuppliers$1(latch);
    }

    public final synchronized RequestOptions getDefaultRequestOptions() {
        try {
            if (this.defaultRequestOptions == null) {
                this.defaultRequestOptionsFactory.getClass();
                RequestOptions requestOptions = new RequestOptions();
                requestOptions.isLocked = true;
                this.defaultRequestOptions = requestOptions;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.defaultRequestOptions;
    }

    public final Registry getRegistry() {
        return (Registry) this.registry.get();
    }
}
