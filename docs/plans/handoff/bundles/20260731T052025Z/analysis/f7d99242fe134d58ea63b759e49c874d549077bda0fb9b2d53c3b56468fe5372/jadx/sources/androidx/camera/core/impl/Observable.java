package androidx.camera.core.impl;

import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Observable {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Observer {
        void onError(Throwable th);

        void onNewData(Object obj);
    }

    void addObserver(Executor executor, Observer observer);

    void removeObserver(Observer observer);
}
