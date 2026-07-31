package androidx.camera.core.impl;

import androidx.camera.core.impl.Observable;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AbstractCameraPresenceSource$ObserverWrapper {
    public final Executor mExecutor;
    public final Observable.Observer mObserver;

    public AbstractCameraPresenceSource$ObserverWrapper(Executor executor, Observable.Observer observer) {
        this.mExecutor = executor;
        this.mObserver = observer;
    }
}
