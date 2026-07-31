package androidx.camera.core.impl;

import androidx.camera.core.impl.Observable;
import j$.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StateObservable$ObserverWrapper implements Runnable {
    public static final Object NOT_SET = new Object();
    public final Executor mExecutor;
    public final Observable.Observer mObserver;
    public final AtomicReference mStateRef;
    public final AtomicBoolean mActive = new AtomicBoolean(true);
    public Object mLastState = NOT_SET;
    public int mLatestSignalledVersion = -1;
    public boolean mWrapperUpdating = false;

    public StateObservable$ObserverWrapper(AtomicReference atomicReference, Executor executor, Observable.Observer observer) {
        this.mStateRef = atomicReference;
        this.mExecutor = executor;
        this.mObserver = observer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this) {
            try {
                if (!this.mActive.get()) {
                    this.mWrapperUpdating = false;
                    return;
                }
                Object obj = this.mStateRef.get();
                int i = this.mLatestSignalledVersion;
                while (true) {
                    if (!Objects.equals(this.mLastState, obj)) {
                        this.mLastState = obj;
                        boolean z = obj instanceof AutoValue_StateObservable_ErrorWrapper;
                        Observable.Observer observer = this.mObserver;
                        if (z) {
                            observer.onError(null);
                        } else {
                            observer.onNewData(obj);
                        }
                    }
                    synchronized (this) {
                        try {
                            if (i == this.mLatestSignalledVersion || !this.mActive.get()) {
                                break;
                            }
                            obj = this.mStateRef.get();
                            i = this.mLatestSignalledVersion;
                        } finally {
                        }
                    }
                }
                this.mWrapperUpdating = false;
            } finally {
            }
        }
    }

    public final void update(int i) {
        synchronized (this) {
            try {
                if (this.mActive.get()) {
                    if (i <= this.mLatestSignalledVersion) {
                        return;
                    }
                    this.mLatestSignalledVersion = i;
                    if (this.mWrapperUpdating) {
                        return;
                    }
                    this.mWrapperUpdating = true;
                    try {
                        this.mExecutor.execute(this);
                    } catch (Throwable unused) {
                        synchronized (this) {
                            this.mWrapperUpdating = false;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
