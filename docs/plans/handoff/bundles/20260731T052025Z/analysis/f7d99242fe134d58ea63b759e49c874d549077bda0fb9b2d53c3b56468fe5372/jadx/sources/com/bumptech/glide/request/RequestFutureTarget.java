package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import android.os.Looper;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.target.Target;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RequestFutureTarget implements Future, Target {
    public GlideException exception;
    public final int height;
    public boolean isCancelled;
    public boolean loadFailed;
    public Request request;
    public Object resource;
    public boolean resultReceived;
    public final int width;

    public RequestFutureTarget(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        synchronized (this) {
            try {
                if (isDone()) {
                    return false;
                }
                this.isCancelled = true;
                notifyAll();
                Request request = null;
                if (z) {
                    Request request2 = this.request;
                    this.request = null;
                    request = request2;
                }
                if (request != null) {
                    request.clear();
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized Object doGet(Long l) {
        if (!isDone()) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new IllegalArgumentException("You must call this method on a background thread");
            }
        }
        if (this.isCancelled) {
            throw new CancellationException();
        }
        if (this.loadFailed) {
            throw new ExecutionException(this.exception);
        }
        if (this.resultReceived) {
            return this.resource;
        }
        if (l == null) {
            wait(0L);
        } else if (l.longValue() > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            long longValue = l.longValue() + currentTimeMillis;
            while (!isDone() && currentTimeMillis < longValue) {
                wait(longValue - currentTimeMillis);
                currentTimeMillis = System.currentTimeMillis();
            }
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        if (this.loadFailed) {
            throw new ExecutionException(this.exception);
        }
        if (this.isCancelled) {
            throw new CancellationException();
        }
        if (this.resultReceived) {
            return this.resource;
        }
        throw new TimeoutException();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return doGet(Long.valueOf(timeUnit.toMillis(j)));
    }

    @Override // com.bumptech.glide.request.target.Target
    public final synchronized Request getRequest() {
        return this.request;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void getSize(SingleRequest singleRequest) {
        singleRequest.onSizeReady(this.width, this.height);
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean isCancelled() {
        return this.isCancelled;
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean isDone() {
        boolean z;
        if (!this.isCancelled && !this.resultReceived) {
            z = this.loadFailed;
        }
        return z;
    }

    public final synchronized void onLoadFailed(GlideException glideException) {
        this.loadFailed = true;
        this.exception = glideException;
        notifyAll();
    }

    @Override // com.bumptech.glide.request.target.Target
    public final synchronized void onResourceReady(Object obj) {
    }

    public final synchronized void onResourceReady$1(Object obj) {
        this.resultReceived = true;
        this.resource = obj;
        notifyAll();
    }

    @Override // com.bumptech.glide.request.target.Target
    public final synchronized void setRequest(Request request) {
        this.request = request;
    }

    public final String toString() {
        Request request;
        String str;
        String m = CameraDevices$CC.m(new StringBuilder(), super.toString(), "[status=");
        synchronized (this) {
            try {
                request = null;
                if (this.isCancelled) {
                    str = "CANCELLED";
                } else if (this.loadFailed) {
                    str = "FAILURE";
                } else if (this.resultReceived) {
                    str = "SUCCESS";
                } else {
                    str = "PENDING";
                    request = this.request;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (request == null) {
            return Config.CC.m(m, str, "]");
        }
        return m + str + ", request=[" + request + "]]";
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        try {
            return doGet(null);
        } catch (TimeoutException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(e);
            return null;
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    public final synchronized void onLoadFailed(Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onStop() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void onLoadCleared(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void onLoadStarted(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void removeCallback(SingleRequest singleRequest) {
    }
}
