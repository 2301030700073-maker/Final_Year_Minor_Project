package com.bumptech.glide.load.engine;

import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.camera.core.impl.Config;
import androidx.collection.ArrayMap;
import androidx.core.util.Pools$Pool;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.GlideSuppliers$1;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier$DefaultStateVerifier;
import com.fsck.k9.backend.imap.ImapSync;
import java.util.ArrayList;
import java.util.Collections;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DecodeJob implements DataFetcherGenerator.FetcherReadyCallback, Runnable, Comparable, FactoryPools.Poolable {
    public EngineJob callback;
    public Key currentAttemptingKey;
    public Object currentData;
    public int currentDataSource;
    public DataFetcher currentFetcher;
    public volatile DataFetcherGenerator currentGenerator;
    public Key currentSourceKey;
    public Thread currentThread;
    public final GlideSuppliers$1 diskCacheProvider;
    public DiskCacheStrategy$2 diskCacheStrategy;
    public GlideContext glideContext;
    public int height;
    public volatile boolean isCallbackNotified;
    public volatile boolean isCancelled;
    public boolean isLoadingFromAlternateCacheKey;
    public EngineKey loadKey;
    public Object model;
    public Options options;
    public int order;
    public final Pools$Pool pool;
    public Priority priority;
    public int runReason;
    public Key signature;
    public int stage;
    public long startFetchTime;
    public int width;
    public final DecodeHelper decodeHelper = new DecodeHelper();
    public final ArrayList throwables = new ArrayList();
    public final StateVerifier$DefaultStateVerifier stateVerifier = new StateVerifier$DefaultStateVerifier();
    public final ImapSync deferredEncodeManager = new ImapSync(7);
    public final ReleaseManager releaseManager = new ReleaseManager();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ReleaseManager {
        public boolean isEncodeComplete;
        public boolean isFailed;
        public boolean isReleased;

        public final boolean isComplete() {
            return (this.isFailed || this.isEncodeComplete) && this.isReleased;
        }
    }

    public DecodeJob(GlideSuppliers$1 glideSuppliers$1, ImapSync imapSync) {
        this.diskCacheProvider = glideSuppliers$1;
        this.pool = imapSync;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        DecodeJob decodeJob = (DecodeJob) obj;
        int ordinal = this.priority.ordinal() - decodeJob.priority.ordinal();
        return ordinal == 0 ? this.order - decodeJob.order : ordinal;
    }

    public final Resource decodeFromData(DataFetcher dataFetcher, Object obj, int i) {
        if (obj == null) {
            return null;
        }
        try {
            int i2 = LogTime.$r8$clinit;
            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            Resource decodeFromFetcher = decodeFromFetcher(i, obj);
            if (Log.isLoggable("DecodeJob", 2)) {
                logWithTimeAndKey(elapsedRealtimeNanos, "Decoded result " + decodeFromFetcher, null);
            }
            return decodeFromFetcher;
        } finally {
            dataFetcher.cleanup();
        }
    }

    public final Resource decodeFromFetcher(int i, Object obj) {
        Class<?> cls = obj.getClass();
        DecodeHelper decodeHelper = this.decodeHelper;
        LoadPath loadPath = decodeHelper.getLoadPath(cls);
        Options options = this.options;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z = i == 4 || decodeHelper.isScaleOnlyOrNoTransform;
            Option option = Downsampler.ALLOW_HARDWARE_CONFIG;
            Boolean bool = (Boolean) options.get(option);
            if (bool == null || (bool.booleanValue() && !z)) {
                options = new Options();
                CachedHashCodeArrayMap cachedHashCodeArrayMap = this.options.values;
                CachedHashCodeArrayMap cachedHashCodeArrayMap2 = options.values;
                cachedHashCodeArrayMap2.putAll((ArrayMap) cachedHashCodeArrayMap);
                cachedHashCodeArrayMap2.put(option, Boolean.valueOf(z));
            }
        }
        Options options2 = options;
        DataRewinder rewinder = this.glideContext.getRegistry().getRewinder(obj);
        try {
            return loadPath.load(this.width, this.height, options2, rewinder, new PriorityQueue(i, 9, this));
        } finally {
            rewinder.cleanup();
        }
    }

    public final void decodeFromRetrievedData() {
        Resource resource;
        if (Log.isLoggable("DecodeJob", 2)) {
            logWithTimeAndKey(this.startFetchTime, "Retrieved data", "data: " + this.currentData + ", cache key: " + this.currentSourceKey + ", fetcher: " + this.currentFetcher);
        }
        LockedResource lockedResource = null;
        try {
            resource = decodeFromData(this.currentFetcher, this.currentData, this.currentDataSource);
        } catch (GlideException e) {
            Key key = this.currentAttemptingKey;
            int i = this.currentDataSource;
            e.key = key;
            e.dataSource = i;
            e.dataClass = null;
            this.throwables.add(e);
            resource = null;
        }
        if (resource == null) {
            runGenerators();
            return;
        }
        int i2 = this.currentDataSource;
        if (resource instanceof Initializable) {
            ((Initializable) resource).initialize();
        }
        boolean z = true;
        if (((LockedResource) this.deferredEncodeManager.imapStore) != null) {
            lockedResource = (LockedResource) LockedResource.POOL.acquire();
            lockedResource.isRecycled = false;
            lockedResource.isLocked = true;
            lockedResource.toWrap = resource;
            resource = lockedResource;
        }
        setNotifiedOrThrow();
        EngineJob engineJob = this.callback;
        synchronized (engineJob) {
            engineJob.resource = resource;
            engineJob.dataSource = i2;
        }
        engineJob.notifyCallbacksOfResult();
        this.stage = 5;
        try {
            ImapSync imapSync = this.deferredEncodeManager;
            if (((LockedResource) imapSync.imapStore) == null) {
                z = false;
            }
            if (z) {
                try {
                    this.diskCacheProvider.getDiskCache().put((Key) imapSync.accountName, new ImapSync((ResourceEncoder) imapSync.backendStorage, (LockedResource) imapSync.imapStore, this.options, 6));
                    ((LockedResource) imapSync.imapStore).unlock();
                } catch (Throwable th) {
                    ((LockedResource) imapSync.imapStore).unlock();
                    throw th;
                }
            }
            onEncodeComplete();
        } finally {
            if (lockedResource != null) {
                lockedResource.unlock();
            }
        }
    }

    public final DataFetcherGenerator getNextGenerator() {
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(this.stage);
        DecodeHelper decodeHelper = this.decodeHelper;
        if (ordinal == 1) {
            return new ResourceCacheGenerator(decodeHelper, this);
        }
        if (ordinal == 2) {
            return new DataCacheGenerator(decodeHelper.getCacheKeys(), decodeHelper, this);
        }
        if (ordinal == 3) {
            return new SourceGenerator(decodeHelper, this);
        }
        if (ordinal == 5) {
            return null;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unrecognized stage: ".concat(ViewSizeResolver.CC.stringValueOf$6(this.stage)));
        return null;
    }

    public final int getNextStage(int i) {
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i);
        boolean z = false;
        if (ordinal == 0) {
            switch (this.diskCacheStrategy.$r8$classId) {
                case 0:
                case 1:
                    break;
                default:
                    z = true;
                    break;
            }
            if (z) {
                return 2;
            }
            return getNextStage(2);
        }
        if (ordinal != 1) {
            if (ordinal == 2) {
                return 4;
            }
            if (ordinal == 3 || ordinal == 5) {
                return 6;
            }
            UriKt$$ExternalSyntheticBUOutline0.m("Unrecognized stage: ".concat(ViewSizeResolver.CC.stringValueOf$6(i)));
            return 0;
        }
        switch (this.diskCacheStrategy.$r8$classId) {
            case 0:
                break;
            case 1:
            default:
                z = true;
                break;
        }
        if (z) {
            return 3;
        }
        return getNextStage(3);
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    public final StateVerifier$DefaultStateVerifier getVerifier() {
        return this.stateVerifier;
    }

    public final void logWithTimeAndKey(long j, String str, String str2) {
        StringBuilder m = Config.CC.m(str, " in ");
        m.append(LogTime.getElapsedMillis(j));
        m.append(", load key: ");
        m.append(this.loadKey);
        m.append(str2 != null ? ", ".concat(str2) : "");
        m.append(", thread: ");
        m.append(Thread.currentThread().getName());
        Log.v("DecodeJob", m.toString());
    }

    public final void notifyFailed() {
        setNotifiedOrThrow();
        GlideException glideException = new GlideException("Failed to load resource", new ArrayList(this.throwables));
        EngineJob engineJob = this.callback;
        synchronized (engineJob) {
            engineJob.exception = glideException;
        }
        engineJob.notifyCallbacksOfException();
        onLoadFailed();
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public final void onDataFetcherFailed(Key key, Exception exc, DataFetcher dataFetcher, int i) {
        dataFetcher.cleanup();
        GlideException glideException = new GlideException("Fetching data failed", Collections.singletonList(exc));
        Class dataClass = dataFetcher.getDataClass();
        glideException.key = key;
        glideException.dataSource = i;
        glideException.dataClass = dataClass;
        this.throwables.add(glideException);
        if (Thread.currentThread() == this.currentThread) {
            runGenerators();
            return;
        }
        this.runReason = 2;
        EngineJob engineJob = this.callback;
        (engineJob.useAnimationPool ? engineJob.animationExecutor : engineJob.sourceExecutor).execute(this);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public final void onDataFetcherReady(Key key, Object obj, DataFetcher dataFetcher, int i, Key key2) {
        this.currentSourceKey = key;
        this.currentData = obj;
        this.currentFetcher = dataFetcher;
        this.currentDataSource = i;
        this.currentAttemptingKey = key2;
        this.isLoadingFromAlternateCacheKey = key != this.decodeHelper.getCacheKeys().get(0);
        if (Thread.currentThread() == this.currentThread) {
            decodeFromRetrievedData();
            return;
        }
        this.runReason = 3;
        EngineJob engineJob = this.callback;
        (engineJob.useAnimationPool ? engineJob.animationExecutor : engineJob.sourceExecutor).execute(this);
    }

    public final void onEncodeComplete() {
        boolean isComplete;
        ReleaseManager releaseManager = this.releaseManager;
        synchronized (releaseManager) {
            releaseManager.isEncodeComplete = true;
            isComplete = releaseManager.isComplete();
        }
        if (isComplete) {
            releaseInternal();
        }
    }

    public final void onLoadFailed() {
        boolean isComplete;
        ReleaseManager releaseManager = this.releaseManager;
        synchronized (releaseManager) {
            releaseManager.isFailed = true;
            isComplete = releaseManager.isComplete();
        }
        if (isComplete) {
            releaseInternal();
        }
    }

    public final void release() {
        boolean isComplete;
        ReleaseManager releaseManager = this.releaseManager;
        synchronized (releaseManager) {
            releaseManager.isReleased = true;
            isComplete = releaseManager.isComplete();
        }
        if (isComplete) {
            releaseInternal();
        }
    }

    public final void releaseInternal() {
        ReleaseManager releaseManager = this.releaseManager;
        synchronized (releaseManager) {
            releaseManager.isEncodeComplete = false;
            releaseManager.isReleased = false;
            releaseManager.isFailed = false;
        }
        ImapSync imapSync = this.deferredEncodeManager;
        imapSync.accountName = null;
        imapSync.backendStorage = null;
        imapSync.imapStore = null;
        DecodeHelper decodeHelper = this.decodeHelper;
        decodeHelper.glideContext = null;
        decodeHelper.model = null;
        decodeHelper.signature = null;
        decodeHelper.resourceClass = null;
        decodeHelper.transcodeClass = null;
        decodeHelper.options = null;
        decodeHelper.priority = null;
        decodeHelper.transformations = null;
        decodeHelper.diskCacheStrategy = null;
        decodeHelper.loadData.clear();
        decodeHelper.isLoadDataSet = false;
        decodeHelper.cacheKeys.clear();
        decodeHelper.isCacheKeysSet = false;
        this.isCallbackNotified = false;
        this.glideContext = null;
        this.signature = null;
        this.options = null;
        this.priority = null;
        this.loadKey = null;
        this.callback = null;
        this.stage = 0;
        this.currentGenerator = null;
        this.currentThread = null;
        this.currentSourceKey = null;
        this.currentData = null;
        this.currentDataSource = 0;
        this.currentFetcher = null;
        this.startFetchTime = 0L;
        this.isCancelled = false;
        this.model = null;
        this.throwables.clear();
        this.pool.release(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        DataFetcher dataFetcher = this.currentFetcher;
        try {
            try {
                if (this.isCancelled) {
                    notifyFailed();
                    if (dataFetcher != null) {
                        dataFetcher.cleanup();
                        return;
                    }
                    return;
                }
                runWrapped();
                if (dataFetcher != null) {
                    dataFetcher.cleanup();
                }
            } catch (Throwable th) {
                if (dataFetcher != null) {
                    dataFetcher.cleanup();
                }
                throw th;
            }
        } catch (CallbackException e) {
            throw e;
        } catch (Throwable th2) {
            if (Log.isLoggable("DecodeJob", 3)) {
                Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.isCancelled + ", stage: " + ViewSizeResolver.CC.stringValueOf$6(this.stage), th2);
            }
            if (this.stage != 5) {
                this.throwables.add(th2);
                notifyFailed();
            }
            if (!this.isCancelled) {
                throw th2;
            }
            throw th2;
        }
    }

    public final void runGenerators() {
        this.currentThread = Thread.currentThread();
        int i = LogTime.$r8$clinit;
        this.startFetchTime = SystemClock.elapsedRealtimeNanos();
        boolean z = false;
        while (!this.isCancelled && this.currentGenerator != null && !(z = this.currentGenerator.startNext())) {
            this.stage = getNextStage(this.stage);
            this.currentGenerator = getNextGenerator();
            if (this.stage == 4) {
                this.runReason = 2;
                EngineJob engineJob = this.callback;
                (engineJob.useAnimationPool ? engineJob.animationExecutor : engineJob.sourceExecutor).execute(this);
                return;
            }
        }
        if ((this.stage == 6 || this.isCancelled) && !z) {
            notifyFailed();
        }
    }

    public final void runWrapped() {
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(this.runReason);
        if (ordinal == 0) {
            this.stage = getNextStage(1);
            this.currentGenerator = getNextGenerator();
            runGenerators();
        } else if (ordinal == 1) {
            runGenerators();
        } else if (ordinal == 2) {
            decodeFromRetrievedData();
        } else {
            int i = this.runReason;
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unrecognized run reason: ".concat(i != 1 ? i != 2 ? i != 3 ? "null" : "DECODE_DATA" : "SWITCH_TO_SOURCE_SERVICE" : "INITIALIZE"));
        }
    }

    public final void setNotifiedOrThrow() {
        Throwable th;
        this.stateVerifier.throwIfRecycled();
        if (!this.isCallbackNotified) {
            this.isCallbackNotified = true;
            return;
        }
        if (this.throwables.isEmpty()) {
            th = null;
        } else {
            ArrayList arrayList = this.throwables;
            th = (Throwable) arrayList.get(arrayList.size() - 1);
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Already notified", th);
    }
}
