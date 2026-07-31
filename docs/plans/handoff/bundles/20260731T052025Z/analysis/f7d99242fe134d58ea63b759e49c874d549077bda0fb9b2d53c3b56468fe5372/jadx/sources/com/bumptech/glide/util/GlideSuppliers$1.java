package com.bumptech.glide.util;

import androidx.navigation.internal.NavContext;
import androidx.work.Configuration;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;
import java.util.concurrent.CopyOnWriteArraySet;
import okhttp3.internal.connection.FastFallbackExchangeFinder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GlideSuppliers$1 implements GlideSuppliers$GlideSupplier {
    public volatile Object instance;
    public final Object val$supplier;

    public GlideSuppliers$1() {
        this.val$supplier = new CopyOnWriteArraySet();
    }

    @Override // com.bumptech.glide.util.GlideSuppliers$GlideSupplier
    public Object get() {
        if (this.instance == null) {
            synchronized (this) {
                try {
                    if (this.instance == null) {
                        Object obj = ((GlideSuppliers$GlideSupplier) this.val$supplier).get();
                        Util.checkNotNull(obj, "Argument must not be null");
                        this.instance = obj;
                    }
                } finally {
                }
            }
        }
        return this.instance;
    }

    public DiskCache getDiskCache() {
        if (((DiskCache) this.instance) == null) {
            synchronized (this) {
                try {
                    if (((DiskCache) this.instance) == null) {
                        File cacheDir = ((NavContext) ((Configuration.Builder) this.val$supplier).workerFactory).context.getCacheDir();
                        FastFallbackExchangeFinder fastFallbackExchangeFinder = null;
                        File file = cacheDir == null ? null : new File(cacheDir, "image_manager_disk_cache");
                        if (file != null && (file.isDirectory() || file.mkdirs())) {
                            fastFallbackExchangeFinder = new FastFallbackExchangeFinder(file);
                        }
                        this.instance = fastFallbackExchangeFinder;
                    }
                    if (((DiskCache) this.instance) == null) {
                        this.instance = new Option.AnonymousClass1();
                    }
                } finally {
                }
            }
        }
        return (DiskCache) this.instance;
    }

    public /* synthetic */ GlideSuppliers$1(Object obj) {
        this.val$supplier = obj;
    }
}
