package com.bumptech.glide.load.engine;

import android.os.SystemClock;
import android.util.Log;
import androidx.appcompat.widget.TooltipPopup;
import androidx.camera.core.impl.Config;
import androidx.work.Configuration;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.cache.LruResourceCache;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.GlideSuppliers$1;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.pool.FactoryPools;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mailstore.LocalFolder;
import com.jcraft.jzlib.Adler32;
import de.cketti.changelog.XmlParser;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Engine {
    public static final boolean VERBOSE_IS_LOGGABLE = Log.isLoggable("Engine", 2);
    public final ImapSync activeResources;
    public final LruResourceCache cache;
    public final XmlParser decodeJobFactory;
    public final TooltipPopup engineJobFactory;
    public final Jobs jobs;
    public final Adler32 keyFactory;
    public final LocalFolder.AnonymousClass8 resourceRecycler;

    public Engine(LruResourceCache lruResourceCache, Configuration.Builder builder, GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4) {
        this.cache = lruResourceCache;
        GlideSuppliers$1 glideSuppliers$1 = new GlideSuppliers$1(builder);
        ImapSync imapSync = new ImapSync(5);
        this.activeResources = imapSync;
        synchronized (this) {
            synchronized (imapSync) {
                imapSync.imapStore = this;
            }
        }
        this.keyFactory = new Adler32(14);
        this.jobs = new Jobs(0);
        TooltipPopup tooltipPopup = new TooltipPopup();
        tooltipPopup.mTmpAppPos = FactoryPools.threadSafe(150, new Configuration.Builder(11, tooltipPopup));
        tooltipPopup.mContext = glideExecutor;
        tooltipPopup.mContentView = glideExecutor2;
        tooltipPopup.mMessageView = glideExecutor3;
        tooltipPopup.mLayoutParams = glideExecutor4;
        tooltipPopup.mTmpDisplayFrame = this;
        tooltipPopup.mTmpAnchorPos = this;
        this.engineJobFactory = tooltipPopup;
        this.decodeJobFactory = new XmlParser(glideSuppliers$1);
        this.resourceRecycler = new LocalFolder.AnonymousClass8(6);
        lruResourceCache.listener = this;
    }

    public static void logWithTimeAndKey(String str, long j, EngineKey engineKey) {
        StringBuilder m = Config.CC.m(str, " in ");
        m.append(LogTime.getElapsedMillis(j));
        m.append("ms, key: ");
        m.append(engineKey);
        Log.v("Engine", m.toString());
    }

    public static void release(Resource resource) {
        if (resource instanceof EngineResource) {
            ((EngineResource) resource).release$2();
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("Cannot release anything but an EngineResource");
        }
    }

    public final ImapSync load(GlideContext glideContext, Object obj, Key key, int i, int i2, Class cls, Class cls2, Priority priority, DiskCacheStrategy$2 diskCacheStrategy$2, CachedHashCodeArrayMap cachedHashCodeArrayMap, boolean z, boolean z2, Options options, boolean z3, boolean z4, SingleRequest singleRequest, Executor executor) {
        long j;
        if (VERBOSE_IS_LOGGABLE) {
            int i3 = LogTime.$r8$clinit;
            j = SystemClock.elapsedRealtimeNanos();
        } else {
            j = 0;
        }
        this.keyFactory.getClass();
        EngineKey engineKey = new EngineKey(obj, key, i, i2, cachedHashCodeArrayMap, cls, cls2, options);
        synchronized (this) {
            try {
                EngineResource loadFromMemory = loadFromMemory(engineKey, z3, j);
                if (loadFromMemory == null) {
                    return waitForExistingOrStartNewJob(glideContext, obj, key, i, i2, cls, cls2, priority, diskCacheStrategy$2, cachedHashCodeArrayMap, z, z2, options, z3, z4, singleRequest, executor, engineKey, j);
                }
                singleRequest.onResourceReady(loadFromMemory, 5);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bumptech.glide.load.engine.EngineResource loadFromCache(com.bumptech.glide.load.engine.EngineKey r10) {
        /*
            r9 = this;
            com.bumptech.glide.load.engine.cache.LruResourceCache r1 = r9.cache
            monitor-enter(r1)
            java.util.LinkedHashMap r0 = r1.cache     // Catch: java.lang.Throwable -> L41
            java.lang.Object r0 = r0.remove(r10)     // Catch: java.lang.Throwable -> L41
            com.bumptech.glide.util.LruCache$Entry r0 = (com.bumptech.glide.util.LruCache.Entry) r0     // Catch: java.lang.Throwable -> L41
            r2 = 0
            if (r0 != 0) goto L11
            monitor-exit(r1)
            r0 = r2
            goto L1c
        L11:
            long r3 = r1.currentSize     // Catch: java.lang.Throwable -> L41
            int r5 = r0.size     // Catch: java.lang.Throwable -> L41
            long r5 = (long) r5     // Catch: java.lang.Throwable -> L41
            long r3 = r3 - r5
            r1.currentSize = r3     // Catch: java.lang.Throwable -> L41
            java.lang.Object r0 = r0.value     // Catch: java.lang.Throwable -> L41
            monitor-exit(r1)
        L1c:
            r4 = r0
            com.bumptech.glide.load.engine.Resource r4 = (com.bumptech.glide.load.engine.Resource) r4
            if (r4 != 0) goto L24
        L21:
            r8 = r9
            r7 = r10
            goto L36
        L24:
            boolean r0 = r4 instanceof com.bumptech.glide.load.engine.EngineResource
            if (r0 == 0) goto L2c
            r2 = r4
            com.bumptech.glide.load.engine.EngineResource r2 = (com.bumptech.glide.load.engine.EngineResource) r2
            goto L21
        L2c:
            com.bumptech.glide.load.engine.EngineResource r3 = new com.bumptech.glide.load.engine.EngineResource
            r5 = 1
            r6 = 1
            r8 = r9
            r7 = r10
            r3.<init>(r4, r5, r6, r7, r8)
            r2 = r3
        L36:
            if (r2 == 0) goto L40
            r2.acquire()
            com.fsck.k9.backend.imap.ImapSync r9 = r8.activeResources
            r9.activate(r7, r2)
        L40:
            return r2
        L41:
            r0 = move-exception
            r9 = r0
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L41
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.Engine.loadFromCache(com.bumptech.glide.load.engine.EngineKey):com.bumptech.glide.load.engine.EngineResource");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final EngineResource loadFromMemory(EngineKey engineKey, boolean z, long j) {
        EngineResource engineResource;
        if (z) {
            ImapSync imapSync = this.activeResources;
            synchronized (imapSync) {
                ActiveResources$ResourceWeakReference activeResources$ResourceWeakReference = (ActiveResources$ResourceWeakReference) ((HashMap) imapSync.accountName).get(engineKey);
                if (activeResources$ResourceWeakReference == null) {
                    engineResource = null;
                } else {
                    engineResource = (EngineResource) activeResources$ResourceWeakReference.get();
                    if (engineResource == null) {
                        imapSync.cleanupActiveReference(activeResources$ResourceWeakReference);
                    }
                }
            }
            if (engineResource != null) {
                engineResource.acquire();
            }
            if (engineResource != null) {
                if (VERBOSE_IS_LOGGABLE) {
                    logWithTimeAndKey("Loaded resource from active resources", j, engineKey);
                }
                return engineResource;
            }
            EngineResource loadFromCache = loadFromCache(engineKey);
            if (loadFromCache != null) {
                if (VERBOSE_IS_LOGGABLE) {
                    logWithTimeAndKey("Loaded resource from cache", j, engineKey);
                }
                return loadFromCache;
            }
        }
        return null;
    }

    public final synchronized void onEngineJobComplete(EngineJob engineJob, EngineKey engineKey, EngineResource engineResource) {
        if (engineResource != null) {
            try {
                if (engineResource.isMemoryCacheable) {
                    this.activeResources.activate(engineKey, engineResource);
                }
            } finally {
            }
        }
        HashMap hashMap = this.jobs.jobs;
        if (engineJob == hashMap.get(engineKey)) {
            hashMap.remove(engineKey);
        }
    }

    public final void onResourceReleased(Key key, EngineResource engineResource) {
        ImapSync imapSync = this.activeResources;
        synchronized (imapSync) {
            ActiveResources$ResourceWeakReference activeResources$ResourceWeakReference = (ActiveResources$ResourceWeakReference) ((HashMap) imapSync.accountName).remove(key);
            if (activeResources$ResourceWeakReference != null) {
                activeResources$ResourceWeakReference.resource = null;
                activeResources$ResourceWeakReference.clear();
            }
        }
        if (engineResource.isMemoryCacheable) {
        } else {
            this.resourceRecycler.recycle(engineResource, false);
        }
    }

    public final ImapSync waitForExistingOrStartNewJob(GlideContext glideContext, Object obj, Key key, int i, int i2, Class cls, Class cls2, Priority priority, DiskCacheStrategy$2 diskCacheStrategy$2, Map map, boolean z, boolean z2, Options options, boolean z3, boolean z4, SingleRequest singleRequest, Executor executor, EngineKey engineKey, long j) {
        EngineJob engineJob = (EngineJob) this.jobs.jobs.get(engineKey);
        if (engineJob != null) {
            engineJob.addCallback(singleRequest, executor);
            if (VERBOSE_IS_LOGGABLE) {
                logWithTimeAndKey("Added to existing load", j, engineKey);
            }
            return new ImapSync(this, singleRequest, engineJob);
        }
        EngineJob engineJob2 = (EngineJob) ((ImapSync) this.engineJobFactory.mTmpAppPos).acquire();
        synchronized (engineJob2) {
            engineJob2.key = engineKey;
            engineJob2.isCacheable = z3;
            engineJob2.useAnimationPool = z4;
        }
        XmlParser xmlParser = this.decodeJobFactory;
        DecodeJob decodeJob = (DecodeJob) ((ImapSync) xmlParser.result).acquire();
        int i3 = xmlParser.lastVersionCode;
        xmlParser.lastVersionCode = i3 + 1;
        DecodeHelper decodeHelper = decodeJob.decodeHelper;
        GlideSuppliers$1 glideSuppliers$1 = decodeJob.diskCacheProvider;
        decodeHelper.glideContext = glideContext;
        decodeHelper.model = obj;
        decodeHelper.signature = key;
        decodeHelper.width = i;
        decodeHelper.height = i2;
        decodeHelper.diskCacheStrategy = diskCacheStrategy$2;
        decodeHelper.resourceClass = cls;
        decodeHelper.diskCacheProvider = glideSuppliers$1;
        decodeHelper.transcodeClass = cls2;
        decodeHelper.priority = priority;
        decodeHelper.options = options;
        decodeHelper.transformations = map;
        decodeHelper.isTransformationRequired = z;
        decodeHelper.isScaleOnlyOrNoTransform = z2;
        decodeJob.glideContext = glideContext;
        decodeJob.signature = key;
        decodeJob.priority = priority;
        decodeJob.loadKey = engineKey;
        decodeJob.width = i;
        decodeJob.height = i2;
        decodeJob.diskCacheStrategy = diskCacheStrategy$2;
        decodeJob.options = options;
        decodeJob.callback = engineJob2;
        decodeJob.order = i3;
        decodeJob.runReason = 1;
        decodeJob.model = obj;
        Jobs jobs = this.jobs;
        jobs.getClass();
        jobs.jobs.put(engineKey, engineJob2);
        engineJob2.addCallback(singleRequest, executor);
        engineJob2.start(decodeJob);
        if (VERBOSE_IS_LOGGABLE) {
            logWithTimeAndKey("Started new load", j, engineKey);
        }
        return new ImapSync(this, singleRequest, engineJob2);
    }
}
