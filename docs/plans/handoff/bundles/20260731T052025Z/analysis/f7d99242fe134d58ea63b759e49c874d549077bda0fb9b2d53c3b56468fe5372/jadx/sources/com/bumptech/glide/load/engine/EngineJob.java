package com.bumptech.glide.load.engine;

import androidx.core.util.Pools$Pool;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier$DefaultStateVerifier;
import com.fsck.k9.backend.imap.ImapSync;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EngineJob implements FactoryPools.Poolable {
    public static final AsyncTimeout.Companion DEFAULT_FACTORY = new AsyncTimeout.Companion(14);
    public final GlideExecutor animationExecutor;
    public int dataSource;
    public DecodeJob decodeJob;
    public final GlideExecutor diskCacheExecutor;
    public final Engine engineJobListener;
    public EngineResource engineResource;
    public GlideException exception;
    public boolean hasLoadFailed;
    public boolean hasResource;
    public boolean isCacheable;
    public volatile boolean isCancelled;
    public EngineKey key;
    public final Pools$Pool pool;
    public Resource resource;
    public final Engine resourceListener;
    public final GlideExecutor sourceExecutor;
    public boolean useAnimationPool;
    public final ResourceCallbacksAndExecutors cbs = new ResourceCallbacksAndExecutors(new ArrayList(2));
    public final StateVerifier$DefaultStateVerifier stateVerifier = new StateVerifier$DefaultStateVerifier();
    public final AtomicInteger pendingCallbacks = new AtomicInteger();
    public final AsyncTimeout.Companion engineResourceFactory = DEFAULT_FACTORY;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CallLoadFailed implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final SingleRequest cb;
        public final /* synthetic */ EngineJob this$0;

        public /* synthetic */ CallLoadFailed(EngineJob engineJob, SingleRequest singleRequest, int i) {
            this.$r8$classId = i;
            this.this$0 = engineJob;
            this.cb = singleRequest;
        }

        private final void run$com$bumptech$glide$load$engine$EngineJob$CallLoadFailed() {
            SingleRequest singleRequest = this.cb;
            singleRequest.stateVerifier.throwIfRecycled();
            synchronized (singleRequest.requestLock) {
                synchronized (this.this$0) {
                    try {
                        if (this.this$0.cbs.callbacksAndExecutors.contains(new ResourceCallbackAndExecutor(this.cb, Util.DIRECT_EXECUTOR))) {
                            EngineJob engineJob = this.this$0;
                            try {
                                this.cb.onLoadFailed(engineJob.exception, 5);
                            } catch (Throwable th) {
                                throw new CallbackException(th);
                            }
                        }
                        this.this$0.decrementPendingCallbacks();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (this.$r8$classId) {
                case 0:
                    run$com$bumptech$glide$load$engine$EngineJob$CallLoadFailed();
                    return;
                default:
                    SingleRequest singleRequest = this.cb;
                    singleRequest.stateVerifier.throwIfRecycled();
                    synchronized (singleRequest.requestLock) {
                        synchronized (this.this$0) {
                            try {
                                if (this.this$0.cbs.callbacksAndExecutors.contains(new ResourceCallbackAndExecutor(this.cb, Util.DIRECT_EXECUTOR))) {
                                    this.this$0.engineResource.acquire();
                                    EngineJob engineJob = this.this$0;
                                    try {
                                        this.cb.onResourceReady(engineJob.engineResource, engineJob.dataSource);
                                        this.this$0.removeCallback$1(this.cb);
                                    } catch (Throwable th) {
                                        throw new CallbackException(th);
                                    }
                                }
                                this.this$0.decrementPendingCallbacks();
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                    return;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ResourceCallbackAndExecutor {
        public final SingleRequest cb;
        public final Executor executor;

        public ResourceCallbackAndExecutor(SingleRequest singleRequest, Executor executor) {
            this.cb = singleRequest;
            this.executor = executor;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ResourceCallbackAndExecutor) && this.cb == ((ResourceCallbackAndExecutor) obj).cb;
        }

        public final int hashCode() {
            return this.cb.hashCode();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ResourceCallbacksAndExecutors implements Iterable {
        public final ArrayList callbacksAndExecutors;

        public ResourceCallbacksAndExecutors(ArrayList arrayList) {
            this.callbacksAndExecutors = arrayList;
        }

        @Override // java.lang.Iterable
        public final Iterator iterator() {
            return this.callbacksAndExecutors.iterator();
        }
    }

    public EngineJob(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, Engine engine, Engine engine2, ImapSync imapSync) {
        this.diskCacheExecutor = glideExecutor;
        this.sourceExecutor = glideExecutor2;
        this.animationExecutor = glideExecutor4;
        this.engineJobListener = engine;
        this.resourceListener = engine2;
        this.pool = imapSync;
    }

    public final synchronized void addCallback(SingleRequest singleRequest, Executor executor) {
        try {
            this.stateVerifier.throwIfRecycled();
            this.cbs.callbacksAndExecutors.add(new ResourceCallbackAndExecutor(singleRequest, executor));
            int i = 1;
            if (this.hasResource) {
                incrementPendingCallbacks(1);
                executor.execute(new CallLoadFailed(this, singleRequest, i));
            } else if (this.hasLoadFailed) {
                incrementPendingCallbacks(1);
                executor.execute(new CallLoadFailed(this, singleRequest, 0));
            } else {
                Util.checkArgument("Cannot add callbacks to a cancelled EngineJob", !this.isCancelled);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void cancel() {
        if (isDone()) {
            return;
        }
        this.isCancelled = true;
        DecodeJob decodeJob = this.decodeJob;
        decodeJob.isCancelled = true;
        DataFetcherGenerator dataFetcherGenerator = decodeJob.currentGenerator;
        if (dataFetcherGenerator != null) {
            dataFetcherGenerator.cancel();
        }
        Engine engine = this.engineJobListener;
        EngineKey engineKey = this.key;
        synchronized (engine) {
            HashMap hashMap = engine.jobs.jobs;
            if (this == hashMap.get(engineKey)) {
                hashMap.remove(engineKey);
            }
        }
    }

    public final void decrementPendingCallbacks() {
        EngineResource engineResource;
        synchronized (this) {
            try {
                this.stateVerifier.throwIfRecycled();
                Util.checkArgument("Not yet complete!", isDone());
                int decrementAndGet = this.pendingCallbacks.decrementAndGet();
                Util.checkArgument("Can't decrement below 0", decrementAndGet >= 0);
                if (decrementAndGet == 0) {
                    engineResource = this.engineResource;
                    release$1();
                } else {
                    engineResource = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (engineResource != null) {
            engineResource.release$2();
        }
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    public final StateVerifier$DefaultStateVerifier getVerifier() {
        return this.stateVerifier;
    }

    public final synchronized void incrementPendingCallbacks(int i) {
        EngineResource engineResource;
        Util.checkArgument("Not yet complete!", isDone());
        if (this.pendingCallbacks.getAndAdd(i) == 0 && (engineResource = this.engineResource) != null) {
            engineResource.acquire();
        }
    }

    public final boolean isDone() {
        return this.hasLoadFailed || this.hasResource || this.isCancelled;
    }

    public final void notifyCallbacksOfException() {
        synchronized (this) {
            try {
                this.stateVerifier.throwIfRecycled();
                if (this.isCancelled) {
                    release$1();
                    return;
                }
                if (this.cbs.callbacksAndExecutors.isEmpty()) {
                    throw new IllegalStateException("Received an exception without any callbacks to notify");
                }
                if (this.hasLoadFailed) {
                    throw new IllegalStateException("Already failed once");
                }
                this.hasLoadFailed = true;
                EngineKey engineKey = this.key;
                ResourceCallbacksAndExecutors resourceCallbacksAndExecutors = this.cbs;
                resourceCallbacksAndExecutors.getClass();
                ArrayList arrayList = new ArrayList(resourceCallbacksAndExecutors.callbacksAndExecutors);
                incrementPendingCallbacks(arrayList.size() + 1);
                this.engineJobListener.onEngineJobComplete(this, engineKey, null);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ResourceCallbackAndExecutor resourceCallbackAndExecutor = (ResourceCallbackAndExecutor) it.next();
                    resourceCallbackAndExecutor.executor.execute(new CallLoadFailed(this, resourceCallbackAndExecutor.cb, 0));
                }
                decrementPendingCallbacks();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void notifyCallbacksOfResult() {
        synchronized (this) {
            try {
                this.stateVerifier.throwIfRecycled();
                if (this.isCancelled) {
                    this.resource.recycle();
                    release$1();
                    return;
                }
                if (this.cbs.callbacksAndExecutors.isEmpty()) {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
                if (this.hasResource) {
                    throw new IllegalStateException("Already have resource");
                }
                AsyncTimeout.Companion companion = this.engineResourceFactory;
                Resource resource = this.resource;
                boolean z = this.isCacheable;
                EngineKey engineKey = this.key;
                Engine engine = this.resourceListener;
                companion.getClass();
                this.engineResource = new EngineResource(resource, z, true, engineKey, engine);
                int i = 1;
                this.hasResource = true;
                ResourceCallbacksAndExecutors resourceCallbacksAndExecutors = this.cbs;
                resourceCallbacksAndExecutors.getClass();
                ArrayList arrayList = new ArrayList(resourceCallbacksAndExecutors.callbacksAndExecutors);
                incrementPendingCallbacks(arrayList.size() + 1);
                this.engineJobListener.onEngineJobComplete(this, this.key, this.engineResource);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ResourceCallbackAndExecutor resourceCallbackAndExecutor = (ResourceCallbackAndExecutor) it.next();
                    resourceCallbackAndExecutor.executor.execute(new CallLoadFailed(this, resourceCallbackAndExecutor.cb, i));
                }
                decrementPendingCallbacks();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void release$1() {
        if (this.key == null) {
            throw new IllegalArgumentException();
        }
        this.cbs.callbacksAndExecutors.clear();
        this.key = null;
        this.engineResource = null;
        this.resource = null;
        this.hasLoadFailed = false;
        this.isCancelled = false;
        this.hasResource = false;
        this.decodeJob.release();
        this.decodeJob = null;
        this.exception = null;
        this.dataSource = 0;
        this.pool.release(this);
    }

    public final synchronized void removeCallback$1(SingleRequest singleRequest) {
        try {
            this.stateVerifier.throwIfRecycled();
            this.cbs.callbacksAndExecutors.remove(new ResourceCallbackAndExecutor(singleRequest, Util.DIRECT_EXECUTOR));
            if (this.cbs.callbacksAndExecutors.isEmpty()) {
                cancel();
                if (!this.hasResource) {
                    if (this.hasLoadFailed) {
                    }
                }
                if (this.pendingCallbacks.get() == 0) {
                    release$1();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void start(DecodeJob decodeJob) {
        GlideExecutor glideExecutor;
        this.decodeJob = decodeJob;
        int nextStage = decodeJob.getNextStage(1);
        if (nextStage != 2 && nextStage != 3) {
            glideExecutor = this.useAnimationPool ? this.animationExecutor : this.sourceExecutor;
            glideExecutor.execute(decodeJob);
        }
        glideExecutor = this.diskCacheExecutor;
        glideExecutor.execute(decodeJob);
    }
}
